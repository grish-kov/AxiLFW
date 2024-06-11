`timescale 1ns / 1ps

module fw_reg_map #(
    
    int G_RM_ADDR_W = 4,    // AXIL xADDR bit width
	int G_RM_DATA_B = 4     // AXIL xDATA number of bytes (B)

)(
    input logic     i_clk,
                    i_rst,
                    i_err,

        reg [4 : 0] i_hsk_ena,

    if_axil.s   s_axil
    );

    localparam C_RM_DATA_W = 8 * G_RM_DATA_B;

    typedef logic [G_RM_ADDR_W - 1 : 0] t_xaddr;
	typedef logic [C_RM_DATA_W - 1 : 0] t_xdata;

 	localparam t_xaddr	TST_ADDR1   = 'h01; 
    localparam t_xaddr 	TST_ADDR2	= 'h02;
	localparam t_xaddr  TST_ADDR3   = 'h03;
    localparam t_xaddr 	TST_ADDR4	= 'h04;    
    
    t_xaddr WADDR, RADDR, t_addr;  

    reg [7 : 0]     q_wr_data = '0;
    reg [31 : 0]    q_rd_data = '0;

    logic   q_wena  = 0,
            q_wdena = 0,
            q_rena  = 0,
            q_rdena = 0;

    logic [1 : 0] q_err = '0;

    initial begin

        s_axil.awready  = 1;
        s_axil.wready   = 1;
        s_axil.bvalid   = 0;
        s_axil.arready  = 1;
        s_axil.rvalid   = 0;
        s_axil.bresp    = '0;
        s_axil.rresp    = '0;

    end

    assign s_axil.bresp = (s_axil.bvalid & s_axil.bready) ? q_err : q_err;
    assign s_axil.rresp = (s_axil.rvalid & s_axil.rready) ? q_err : q_err;

    always_ff @(posedge i_clk) begin

        if (s_axil.awready & s_axil.awvalid & i_hsk_ena [0]) begin

            WADDR           <= s_axil.awaddr;
            q_wena          <= 1;

        end

        if (s_axil.wready & s_axil.wvalid & q_wena & i_hsk_ena [1]) begin

            q_wr_data          <= s_axil.wdata;
            q_wdena         <= 1;
            q_wena          <= 0;

        end 

        if (q_wdena) begin

            q_err = (i_err) ? 2'b10 : 2'b00;

            case(WADDR)

                TST_ADDR1 : ;

                TST_ADDR2 : ;

                TST_ADDR3 : ;
                    
                TST_ADDR4 : ;

                default :   q_err <= 2'b11;

            endcase 

            q_wdena             <= 0;

            if (!s_axil.wvalid)
                s_axil.bvalid <= 1;

        end

        if (s_axil.bvalid & s_axil.bready & i_hsk_ena [2]) begin

            s_axil.bvalid   <= 0;

        end

        if (s_axil.arready & s_axil.arvalid & i_hsk_ena [3]) begin

            t_addr          <= s_axil.araddr;
            RADDR           <= s_axil.araddr;
            q_rena          <= 1;

        end 

        if (q_rena) begin

            q_err = (i_err) ? 2'b10 : 2'b00;

            case(RADDR)

                TST_ADDR1 : q_rd_data <= 'h01;

                TST_ADDR2 : q_rd_data <= 'h02;

                TST_ADDR3 : q_rd_data <= 'h03;
                    
                TST_ADDR4 : q_rd_data <= 'h04;

                default :   q_err <= 2'b11;

            endcase 

            q_rena  <= 0;
            q_rdena <= 1;

        end

        if (q_rdena) begin

            s_axil.rdata    <= q_rd_data;
            s_axil.rvalid   <= 1;
            q_rdena         <= 0;

        end

        if (s_axil.rvalid & s_axil.rready & i_hsk_ena [4])
            s_axil.rvalid <= 0;

    end

endmodule

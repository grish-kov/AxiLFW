`timescale 1ns / 1ps

module fw_reg_map #(
    
    int G_ADDR_W = 8,                   // AXIL xADDR bit width
	    G_DATA_B = 8,                   // AXIL xDATA number of bytes (B)
        G_DATA_W = G_DATA_B << 3

)(
    input   logic   i_clk,
                    i_rst,
                    i_err,

            reg [4 : 0] i_hsk_ena,

    output  reg  s_axil_awready,  input   wire s_axil_awvalid,  reg [G_ADDR_W - 1 : 0]  s_axil_awaddr,   logic  [2 : 0]             s_axil_awprot,          //  write addr
    output  reg  s_axil_wready,   input   wire s_axil_wvalid,   reg [G_DATA_W - 1 : 0]  s_axil_wdata,    reg    [G_DATA_B - 1 : 0]  s_axil_wstrb,           //  write data 
    input   wire s_axil_bready,   output  reg  s_axil_bvalid,   reg [1 : 0]             s_axil_bresp,                                                       //  write resp 
    output  reg  s_axil_arready,  input   wire s_axil_arvalid,  reg [G_ADDR_W - 1 : 0]  s_axil_araddr,   logic  [2 : 0]             s_axil_arprot,          //  read addr 
    input   wire s_axil_rready,   output  reg  s_axil_rvalid,   reg [G_DATA_W - 1 : 0]  s_axil_rdata,    reg    [1 : 0]             s_axil_rresp           //  read data & resp

    );

    localparam C_DATA_W = G_DATA_B << 3;

    typedef logic [G_ADDR_W - 1 : 0] t_xaddr;
	typedef logic [C_DATA_W - 1 : 0] t_xdata;

 	localparam t_xaddr	TST_ADDR1   = 'h01; 
    localparam t_xaddr 	TST_ADDR2	= 'h02;
	localparam t_xaddr  TST_ADDR3   = 'h03;
    localparam t_xaddr 	TST_ADDR4	= 'h04;    
    
    t_xaddr     WADDR, RADDR, t_addr;  

    t_xdata     q_wr_data = '0;
    t_xdata     q_rd_data = '0;

    logic   q_wena  = 0,
            q_wdena = 0,
            q_rena  = 0,
            q_rdena = 0;

    logic [1 : 0]   q_r_err = '0,
                    q_w_err = '0;

    initial begin

        s_axil_awready  = 1;
        s_axil_wready   = 1;
        s_axil_arready  = 1;

    end

    assign s_axil_bresp = (s_axil_bvalid & s_axil_bready) ? q_w_err : q_w_err;
    assign s_axil_rresp = (s_axil_rvalid & s_axil_rready) ? q_r_err : q_r_err;

    always_ff @(posedge i_clk) begin

        s_axil_bvalid <= 0;
        s_axil_rvalid <= 0;

        if (s_axil_awready & s_axil_awvalid & i_hsk_ena [0]) begin

            WADDR           <= s_axil_awaddr;
            q_wena          <= 1;

        end

        if (s_axil_wready & s_axil_wvalid & q_wena & i_hsk_ena [1]) begin

            q_wr_data          <= s_axil_wdata;
            q_wdena         <= 1;
            q_wena          <= 0;

        end 

        if (q_wdena) begin

            q_w_err = (q_w_err) ? 2'b10 : 2'b00;

            case(WADDR)

                TST_ADDR1 : ;

                TST_ADDR2 : ;

                TST_ADDR3 : ;
                    
                TST_ADDR4 : ;

                default :   q_w_err <= 2'b11;

            endcase 

            q_wdena             <= 0;

            if (!s_axil_wvalid)
                s_axil_bvalid <= 1;

        end

        if (s_axil_bvalid & s_axil_bready & i_hsk_ena [2]) begin

            s_axil_bvalid   <= 0;

        end

        if (s_axil_arready & s_axil_arvalid & i_hsk_ena [3]) begin

            t_addr          <= s_axil_araddr;
            RADDR           <= s_axil_araddr;
            q_rena          <= 1;

        end 

        if (q_rena) begin

            q_r_err = (q_r_err) ? 2'b10 : 2'b00;

            case(RADDR)

                TST_ADDR1 : q_rd_data <= 'h01;

                TST_ADDR2 : q_rd_data <= 'h02;

                TST_ADDR3 : q_rd_data <= 'h03;
                    
                TST_ADDR4 : q_rd_data <= 'h04;

                default :   q_r_err <= 2'b11;

            endcase 

            q_rena  <= 0;
            q_rdena <= 1;

        end

        if (q_rdena) begin

            s_axil_rdata    <= q_rd_data;
            s_axil_rvalid   <= 1;
            q_rdena         <= 0;

        end

        if (s_axil_rvalid & s_axil_rready & i_hsk_ena [4])
            s_axil_rvalid <= 0;

    end

endmodule

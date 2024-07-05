`timescale 1ns / 1ps

module fw_reg_map #(
    
    int G_ADDR_W = 5,                       // AXIL xADDR bit width
	    G_DATA_W = 32,                      // AXIL xDATA number of bytes (B)

    logic [G_ADDR_W - 1 : 0]        TST_ADDR1   = 'h00, 
                                    TST_ADDR2	= 'h04,
                                    TST_ADDR3   = 'h08,
                                    TST_ADDR4	= 'h0c
)(
    input   logic   i_clk,
                    aresetn,
                    i_err,

            reg [4 : 0] i_hsk_ena,

    //  slave AXI

    output  reg  s_axil_awready,  input   wire s_axil_awvalid,  wire [G_ADDR_W - 1 : 0]  s_axil_awaddr,   wire  [2 : 0]                     s_axil_awprot,          //  write addr
    output  reg  s_axil_wready,   input   wire s_axil_wvalid,   wire [G_DATA_W - 1 : 0]  s_axil_wdata,    wire    [(G_DATA_W >> 3) - 1 : 0]   s_axil_wstrb,           //  write data 
    input   wire s_axil_bready,   output  reg  s_axil_bvalid,   wire [1 : 0]             s_axil_bresp,                                                               //  write resp 
    output  reg  s_axil_arready,  input   wire s_axil_arvalid,  wire [G_ADDR_W - 1 : 0]  s_axil_araddr,   wire  [2 : 0]                     s_axil_arprot,          //  read addr 
    input   wire s_axil_rready,   output  reg  s_axil_rvalid,   wire [G_DATA_W - 1 : 0]  s_axil_rdata,    wire    [1 : 0]                     s_axil_rresp            //  read data & resp

    );

    typedef logic   [G_ADDR_W - 1 : 0] t_xaddr;
	typedef reg     [G_DATA_W - 1 : 0] t_xdata; 

    reg [3 : 0] [G_DATA_W - 1 : 0] TST_ARR = '0;

    t_xaddr     WADDR, RADDR;  

    t_xdata     q_wr_data = '0;
    t_xdata     q_rd_data = '0;

    logic   q_wena  = 0,
            q_wdena = 0,
            q_rena  = 0,
            q_rdena = 0;

    logic [1 : 0]   q_r_err = '0,
                    q_w_err = '0;

    assign s_axil_bresp = q_w_err;
    assign s_axil_rresp = q_r_err;

    assign s_axil_rdata = q_rd_data;

    always_ff @(posedge i_clk) begin

        s_axil_awready <= i_hsk_ena[0];

        if (s_axil_awready & s_axil_awvalid) begin

            WADDR           <= s_axil_awaddr [G_ADDR_W - 1 : 0];
            s_axil_awready  <= 0;
            
        end

        s_axil_wready       <= i_hsk_ena [1];

        if (s_axil_wready & s_axil_wvalid) begin
            
            q_wena          <= 1;
            s_axil_bvalid   <= 1;
            s_axil_wready   <= 0;
            q_wr_data       <= s_axil_wdata;

            q_w_err <= (!(WADDR inside {TST_ADDR1, TST_ADDR2, TST_ADDR3, TST_ADDR4})) ? 'b11 : ((i_err) ? 'b10 : 'b00); 


        end

        if (q_wena) begin

            case(WADDR)

                TST_ADDR1 : TST_ARR [0] <= q_wr_data;

                TST_ADDR2 : TST_ARR [1] <= q_wr_data;

                TST_ADDR3 : TST_ARR [2] <= q_wr_data;
                    
                TST_ADDR4 : TST_ARR [3] <= q_wr_data;

            endcase
            
            q_wena          <= 0;

        end

        if (s_axil_bvalid & s_axil_bready & i_hsk_ena [2]) begin

            s_axil_bvalid   <= 0;

        end

        s_axil_arready <=  i_hsk_ena [3];

        if (s_axil_arready & s_axil_arvalid) begin

            RADDR           <= s_axil_araddr [G_ADDR_W - 1 : 0];
            s_axil_arready  <= 0;
            q_rena          <= 1;
            
        end

        if (q_rena) begin

            s_axil_rvalid   <= 1;

            q_r_err <= (!(RADDR inside {TST_ADDR1, TST_ADDR2, TST_ADDR3, TST_ADDR4})) ? 'b11 : ((i_err) ? 'b10 : 'b00); 

            case(RADDR)

                TST_ADDR1 : q_rd_data <= TST_ARR [0];

                TST_ADDR2 : q_rd_data <= TST_ARR [1];

                TST_ADDR3 : q_rd_data <= TST_ARR [2];
                    
                TST_ADDR4 : q_rd_data <= TST_ARR [3];

                default : q_rd_data <= 'h404;

            endcase 

            q_rena          <= 0;

        end

        if (s_axil_rvalid & s_axil_rready & i_hsk_ena [4]) begin

            s_axil_rvalid   <= 0;

        end

        if (aresetn == 'b0) begin

            s_axil_awready  <= 0;
            s_axil_wready   <= 0;
            s_axil_arready  <= 0;
            s_axil_bvalid   <= 0;
            s_axil_rvalid   <= 0;

        end 

    end

endmodule

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

    t_xaddr     WADDR = '0;
    t_xaddr     RADDR = '0;  

    t_xdata     q_wr_data = '0;
    t_xdata     q_rd_data = '0;

    logic   q_wena  = 0,
            q_wdena = 0,
            q_rena  = 0,
            q_rdena = 0;

    reg                             q_axil_awvalid;
    reg [G_ADDR_W - 1 : 0]          q_axil_awaddr;
    reg                             q_axil_wvalid;
    reg [(G_DATA_W >> 3) - 1 : 0]   q_axil_wstrb;
    reg [G_DATA_W - 1 : 0]          q_axil_wdata;
    reg                             q_axil_bready;
    reg                             q_axil_arvalid;
    reg [G_ADDR_W - 1 : 0]          q_axil_araddr;
    reg                             q_axil_rready;
    reg                             q_axil_bvalid;
    reg                             q_axil_rvalid;
    reg                             q_axil_awready;
    reg                             q_axil_wready;
    reg                             q_axil_arready;
    reg [G_DATA_W - 1 : 0]          q_axil_rdata;

    assign s_axil_awready   = q_axil_awready;
    assign s_axil_wready    = q_axil_wready;
    assign s_axil_bvalid    = q_axil_bvalid;
    assign s_axil_arready   = q_axil_arready;
    assign s_axil_rvalid    = q_axil_rvalid;
    assign s_axil_rdata     = q_axil_rdata;

    assign q_axil_awvalid   = s_axil_awvalid;
    assign q_axil_awaddr    = s_axil_awaddr;
    assign q_axil_wvalid    = s_axil_wvalid;
    assign q_axil_wdata     = s_axil_wdata;
    assign q_axil_wstrb     = s_axil_wstrb;
    assign q_axil_bready    = s_axil_bready;
    assign q_axil_arvalid   = s_axil_arvalid;
    assign q_axil_araddr    = s_axil_araddr;
    assign q_axil_arvalid   = s_axil_arvalid;
    assign q_axil_rready    = s_axil_rready;

    logic [1 : 0]   q_r_err = '0,
                    q_w_err = '0;

    assign s_axil_bresp = q_w_err;
    assign s_axil_rresp = q_r_err;

    assign s_axil_rdata = q_axil_rdata;

    always_ff @(posedge i_clk) begin

        q_axil_awready <= i_hsk_ena[0];

        if (q_axil_awready & q_axil_awvalid) begin

            WADDR           <= q_axil_awaddr [G_ADDR_W - 1 : 0];
            q_axil_awready  <= 0;
            
        end

        q_axil_wready       <= i_hsk_ena [1];

        if (q_axil_wready & q_axil_wvalid) begin
            
            q_wena          <= 1;
            q_axil_bvalid   <= 1;
            q_axil_wready   <= 0;
            q_wr_data       <= q_axil_wdata;

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

        if (q_axil_bvalid & q_axil_bready & i_hsk_ena [2]) begin

            q_axil_bvalid   <= 0;

        end

        q_axil_arready <=  i_hsk_ena [3];

        if (q_axil_arready & q_axil_arvalid) begin

            RADDR           <= q_axil_araddr [G_ADDR_W - 1 : 0];
            q_axil_arready  <= 0;
            q_rena          <= 1;
            
        end

        if (q_rena) begin

            q_axil_rvalid   <= 1;

            q_r_err <= (!(RADDR inside {TST_ADDR1, TST_ADDR2, TST_ADDR3, TST_ADDR4})) ? 'b11 : ((i_err) ? 'b10 : 'b00); 

            case(RADDR)

                TST_ADDR1 : q_axil_rdata <= TST_ARR [0];

                TST_ADDR2 : q_axil_rdata <= TST_ARR [1];

                TST_ADDR3 : q_axil_rdata <= TST_ARR [2];
                    
                TST_ADDR4 : q_axil_rdata <= TST_ARR [3];

                default : q_axil_rdata <= 'h404;

            endcase 

        end

        if (q_axil_rvalid & q_axil_rready & i_hsk_ena [4]) begin

            q_axil_rvalid   <= 0;
            q_rena          <= 0;

        end

        if (aresetn == 'b0) begin

            q_axil_awready  <= 0;
            q_axil_wready   <= 0;
            q_axil_arready  <= 0;
            q_axil_bvalid   <= 0;
            q_axil_rvalid   <= 0;

        end 

    end

endmodule

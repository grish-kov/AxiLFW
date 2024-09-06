`timescale 1ns / 1ps

module axil_firewall #(

    shortint        G_CNT_WDT       = 4,                //  counter width
                    G_ADDR_W        = 20,               //  AXIL xADDR width
                    G_DATA_W        = 32,               //  AXIL xDATA byte width
                    G_WD_WDT        = 8,                //  watchdog timer len        
    
    //  addresses of errors in regmap

    localparam shortint C_ADDR_W = 5,                   //  local xADDR width

    shortint G_CTRL_ADDR_W = 5,

    reg [C_ADDR_W - 1 : 0]  G_WR_SLVERR_ADDR    = 'h00,
                            G_WR_DECERR_ADDR    = 'h04,
                            G_WR_WD_ERR_ADDR    = 'h08,
                            G_RD_SLVERR_ADDR    = 'h0c,
                            G_RD_DECERR_ADDR    = 'h10,
                            G_RD_WD_ERR_ADDR    = 'h14,
                            G_RG_ST_ERR_ADDR    = 'h18

) (

    input                   i_clk,                      //  clock
                            aresetn,                      //  reset, active - high
    [G_WD_WDT - 1 : 0]      i_len,                      //  WD counter max value

    //  axi-lite master ports

    input   wire m_axil_awready,  output  reg m_axil_awvalid,  reg [G_ADDR_W - 1 : 0]  m_axil_awaddr,   reg  [2 : 0]                     m_axil_awprot,                      //  write addr
    input   wire m_axil_wready,   output  reg m_axil_wvalid,   reg [G_DATA_W - 1 : 0]  m_axil_wdata,    reg    [(G_DATA_W >> 3) - 1 : 0]     m_axil_wstrb,                       //  write data
    output  reg m_axil_bready,   input   wire m_axil_bvalid,   wire [1 : 0]             m_axil_bresp,                                                                           //  write resp
    input   wire m_axil_arready,  output  wire m_axil_arvalid,  reg [G_ADDR_W - 1 : 0]  m_axil_araddr,   reg  [2 : 0]                     m_axil_arprot,                      //  read addr
    output  reg m_axil_rready,   input   wire m_axil_rvalid,   wire [G_DATA_W - 1 : 0]  m_axil_rdata,    wire    [1 : 0]                     m_axil_rresp,                       //  read data & resp

    // axi-lite slave ports

    output  reg s_axil_awready,  input   wire s_axil_awvalid,  wire [G_ADDR_W - 1 : 0]  s_axil_awaddr,   wire  [2 : 0]                     s_axil_awprot,                      //  write addr
    output  reg s_axil_wready,   input   wire s_axil_wvalid,   wire [G_DATA_W - 1 : 0]  s_axil_wdata,    wire    [(G_DATA_W >> 3) - 1 : 0]     s_axil_wstrb,                       //  write data 
    input   wire s_axil_bready,   output  reg  s_axil_bvalid,   reg [1 : 0]             s_axil_bresp,                                                                           //  write resp 
    output  reg s_axil_arready,  input   wire s_axil_arvalid,  wire [G_ADDR_W - 1 : 0]  s_axil_araddr,   wire  [2 : 0]                     s_axil_arprot,                      //  read addr 
    input   wire s_axil_rready,   output  reg  s_axil_rvalid,   reg [G_DATA_W - 1 : 0]  s_axil_rdata,    reg    [1 : 0]                     s_axil_rresp,                       //  read data & resp

    //  axi-lite control slave ports

    output  reg  ctrl_axil_awready,  input   wire ctrl_axil_awvalid,  wire [G_CTRL_ADDR_W - 1 : 0]  ctrl_axil_awaddr,   wire  [2 : 0]                    ctrl_axil_awprot,           //  write addr
    output  reg  ctrl_axil_wready,   input   wire ctrl_axil_wvalid,   wire [G_DATA_W - 1 : 0]  ctrl_axil_wdata,    wire    [(G_DATA_W >> 3) - 1 : 0]    ctrl_axil_wstrb,            //  write data 
    input   wire ctrl_axil_bready,   output  reg  ctrl_axil_bvalid,   reg [1 : 0]             ctrl_axil_bresp,                                                                  //  write resp 
    output  reg  ctrl_axil_arready,  input   wire ctrl_axil_arvalid,  wire [G_CTRL_ADDR_W - 1 : 0]  ctrl_axil_araddr,   wire  [2 : 0]                    ctrl_axil_arprot,           //  read addr 
    input   wire ctrl_axil_rready,   output  reg  ctrl_axil_rvalid,   reg [G_DATA_W - 1 : 0]  ctrl_axil_rdata,    reg    [1 : 0]                    ctrl_axil_rresp             //  read data & resp

    );

    typedef logic [G_DATA_W - 1 : 0]          t_data;
    typedef logic [(G_DATA_W >> 3) - 1 : 0]   t_strb;
    typedef logic [G_ADDR_W - 1 : 0]          t_addr;
    typedef logic [2 : 0]                     t_prot;
    typedef logic [1 : 0]                     t_resp;

    // Write Address Channel Signals
    logic   q_axil_awvalid;
    logic   q_axil_awready;
    t_addr  q_axil_awaddr;
    t_prot  q_axil_awprot;

    // Write Data Channel Signals
    logic   q_axil_wvalid;
    logic   q_axil_wready;
    t_data  q_axil_wdata;
    t_strb  q_axil_wstrb;

    // Write Response Channel Signals
    logic   q_axil_bvalid;
    logic   q_axil_bready;
    t_resp  q_axil_bresp;

    // Read Address Channel Signals
    logic   q_axil_arvalid;
    logic   q_axil_arready;
    t_addr  q_axil_araddr;
    t_prot  q_axil_arprot;

    // Read Data Channel Signals
    logic   q_axil_rvalid;
    logic   q_axil_rready;
    t_data  q_axil_rdata;
    t_resp  q_axil_rresp;

    logic           q_wd_arready;
    logic           q_wd_awready;
    logic           q_wd_wready;
    logic           q_wd_bvalid;
    logic [1 : 0]   q_wd_bresp;
    logic           q_wd_rvalid;
    logic [1 : 0 ]  q_wd_rresp;

    reg [G_CNT_WDT : 0]     q_w_slverr_cnt = 0,     //  write slave error counter
                            q_r_slverr_cnt = 0,     //  read slave error counter
                            q_w_decerr_cnt = 0,     //  write decoder error counter
                            q_r_decerr_cnt = 0,     //  read decoder error counter
                            q_w_wd_err_cnt = 0,     //  write watchdog error counter
                            q_r_wd_err_cnt = 0;     //  read watchdog error counter

    reg [G_WD_WDT - 1 : 0]  q_w_wd_cnt = 0,         //  write watchdog counter
                            q_r_wd_cnt = 0;         //  read watchdog counter
  
    reg     q_w_wd_ena = 0,                         //  write enable Watchdog, active - high
            q_r_wd_ena = 0;                         //  read enable Watchdog, active - high

    logic [G_WD_WDT - 1 : 0] C_WD_TIM;              //  watchdog max. value

    reg [G_CNT_WDT * 6 + 5 : 0] RG_STAT;            //  reg. map of errors


    assign m_axil_awvalid  = q_axil_awvalid;
    assign s_axil_awready  = q_axil_awready | q_wd_awready;
    assign m_axil_awaddr   = q_axil_awaddr;
    assign m_axil_awprot   = q_axil_awprot;

    assign m_axil_wvalid   = q_axil_wvalid;
    assign s_axil_wready   = q_axil_wready | q_wd_wready;
    assign m_axil_wdata    = q_axil_wdata;
    assign m_axil_wstrb    = q_axil_wstrb;

    assign s_axil_bvalid   = q_axil_bvalid | q_wd_bvalid;
    assign m_axil_bready   = q_axil_bready;

    assign m_axil_arvalid  = q_axil_arvalid;
    assign s_axil_arready  = q_axil_arready | q_wd_arready;
    assign m_axil_araddr   = q_axil_araddr;
    assign m_axil_arprot   = q_axil_arprot;

    assign s_axil_rvalid   = q_axil_rvalid | q_wd_rvalid;
    assign m_axil_rready   = q_axil_rready;
    assign s_axil_rdata    = q_axil_rdata;

    assign q_axil_awvalid   = s_axil_awvalid;
    assign q_axil_awready   = m_axil_awready;
    assign q_axil_awaddr    = s_axil_awaddr;
    assign q_axil_awprot    = s_axil_awprot;

    assign q_axil_wvalid    = s_axil_wvalid;
    assign q_axil_wready    = m_axil_wready;
    assign q_axil_wdata     = s_axil_wdata;
    assign q_axil_wstrb     = s_axil_wstrb;

    assign q_axil_bvalid    = m_axil_bvalid;
    assign q_axil_bready    = s_axil_bready;
    assign q_axil_bresp     = m_axil_bresp;

    assign q_axil_arvalid   = s_axil_arvalid;
    assign q_axil_arready   = m_axil_arready;
    assign q_axil_araddr    = s_axil_araddr;
    assign q_axil_arprot    = s_axil_arprot;

    assign q_axil_rvalid    = m_axil_rvalid;
    assign q_axil_rready    = s_axil_rready;
    assign q_axil_rdata     = m_axil_rdata;
    assign q_axil_rresp     = m_axil_rresp;

    assign s_axil_bresp     =   2'b00;                  //  set bresp always OK
    assign s_axil_rresp     =   2'b00;                  //  set rresp always OK

    assign
        RG_STAT [G_CNT_WDT : 0]  =   q_w_slverr_cnt;                            
    
    assign
        RG_STAT [G_CNT_WDT * 2 + 1: G_CNT_WDT + 1]  =   q_w_decerr_cnt;           

    assign
        RG_STAT [G_CNT_WDT * 3 + 2 : G_CNT_WDT * 2 + 2]  =   q_w_wd_err_cnt;      
    
    assign
        RG_STAT [G_CNT_WDT * 4 + 3 : G_CNT_WDT * 3 + 3]  =   q_r_slverr_cnt;     
    
    assign
        RG_STAT [G_CNT_WDT * 5 + 4 : G_CNT_WDT * 4 + 4]  =   q_r_decerr_cnt;      
    
    assign
        RG_STAT [G_CNT_WDT * 6 + 5 : G_CNT_WDT * 5 + 5]  =   q_r_wd_err_cnt;    

    //  firewall watchdog len  

    always_ff @(posedge i_clk) begin

    //  use tmp. variable as watchdog max. value, if i_len is undefined, use default value = 50ns

        if (i_len > 0) 
            C_WD_TIM = i_len;

        else if (i_len === 'x)
            C_WD_TIM = 50;
    
    end

    // firewall for write transactions

    always_ff @(posedge i_clk) begin 

        // counting write errors

        if (q_wd_bresp != 2'b00) begin

            case (q_wd_bresp)
         
                'b10 : q_w_slverr_cnt <= q_w_slverr_cnt + 1;   // counting slave error

                'b11 : q_w_decerr_cnt <= q_w_decerr_cnt + 1;   // counting decoder error

            endcase

            q_wd_bresp     <= 2'b00;                   

        end

        if (m_axil_awvalid)
            q_w_wd_ena <= 1;

        if ((m_axil_bready & s_axil_bvalid) | q_w_wd_cnt == 0) 
            q_w_wd_ena <= 0;

        if (q_w_wd_cnt == 1) begin

            q_wd_awready   <= 1;
            q_wd_wready    <= 1;
            q_wd_bvalid    <= 1;

        end

        if (q_w_wd_cnt == 0) begin

            q_wd_awready    <= 0;
            q_wd_wready     <= 0;
            q_wd_bvalid     <= 0;
            q_w_wd_err_cnt  <= q_w_wd_err_cnt + 1;
 
        end           

        if (q_axil_bready & q_axil_bvalid) 
            q_wd_bresp     <= q_axil_bresp;

        //  reset, active - low

        if (!aresetn) begin

            q_w_slverr_cnt  <= 0;
            q_w_decerr_cnt  <= 0;
            q_w_wd_err_cnt  <= 0;
            q_w_wd_ena      <= 0;

        end 

    end

    //  firewall for read transactions

    always_ff @(posedge i_clk) begin 

        // counting read errors

         if (q_wd_rresp != 2'b00) begin

            case (q_wd_rresp)
         
                'b10 : q_r_slverr_cnt <= q_r_slverr_cnt + 1;   // counting slave error

                'b11 : q_r_decerr_cnt <= q_r_decerr_cnt + 1;   // counting decoder error

            endcase
            
            q_wd_rresp     <= 2'b00;

        end      

        if (s_axil_arvalid)
            q_r_wd_ena <= 1;

        if ((s_axil_rready & m_axil_rvalid) | q_r_wd_cnt == 0) 
            q_r_wd_ena <= 0;

        if (q_r_wd_cnt == 1) begin

            q_wd_arready   <= 1;
            q_wd_rvalid    <= 1;

        end

        if (q_r_wd_cnt == 0) begin

            q_r_wd_err_cnt  <= q_r_wd_err_cnt + 1;
            q_wd_arready    <= 0;
            q_wd_rvalid     <= 0;

        end

        if (s_axil_rready & m_axil_rvalid)
            q_wd_rresp     <= q_axil_rresp;

    //  reset, active - low, reset all errors and counters

        if (!aresetn) begin

            q_r_slverr_cnt  <= 0;
            q_r_decerr_cnt  <= 0;
            q_r_wd_err_cnt  <= 0;
            q_r_wd_ena      <= 0;

        end

    end

    reg     q_w_ena_set = 0,
            q_r_ena_set = 0;

    //  counters

    always_ff @(posedge i_clk) begin

        q_w_ena_set <= ((m_axil_awvalid & s_axil_awready) | 
                        (s_axil_bvalid & m_axil_bready));

        q_r_ena_set <= ((m_axil_arvalid & s_axil_arready) | 
                        (s_axil_rvalid & m_axil_rready));

        if (!aresetn) begin

            q_w_wd_cnt <= C_WD_TIM;
            q_r_wd_cnt <= C_WD_TIM;

        end
        else begin

            if (q_w_wd_ena) 
                if (q_w_ena_set | q_w_wd_cnt == 0)
                    q_w_wd_cnt <= C_WD_TIM;
                else 
                    q_w_wd_cnt <= q_w_wd_cnt - 1;

            if (q_r_wd_ena) 
                if (q_r_ena_set | q_r_wd_cnt == 0)
                    q_r_wd_cnt <= C_WD_TIM;
                else 
                    q_r_wd_cnt <= q_r_wd_cnt - 1;

        end 

    end

    //  control firewall

    // Read Address Channel Signals
    logic                       q_ctrl_arvalid;
    logic                       q_ctrl_arready;
    logic [C_ADDR_W - 1 : 0]    q_ctrl_araddr;
    t_prot                      q_ctrl_arprot;

    // Read Data Channel Signals
    logic                       q_ctrl_rvalid;
    logic                       q_ctrl_rready;
    t_data                      q_ctrl_rdata;
    t_resp                      q_ctrl_rresp;

    assign  q_ctrl_arvalid      = ctrl_axil_arvalid; 
    assign  ctrl_axil_arready   = q_ctrl_arready;
    assign  q_ctrl_araddr       = ctrl_axil_araddr;
    assign  q_ctrl_arprot       = ctrl_axil_arprot;

    assign  ctrl_axil_rvalid    = q_ctrl_rvalid; 
    assign  q_ctrl_rready       = ctrl_axil_rready; 
    assign  ctrl_axil_rdata     = q_ctrl_rdata; 
    assign  ctrl_axil_rresp     = q_ctrl_rresp;  

    logic                       q_wena  = 0,        //  flag, if got write address - high 
                                q_rena  = 0;        //  flag, if got read address - high 

    reg [C_ADDR_W - 1 : 0]      WADDR,              //  tmp. write adress
                                RADDR;              //  tmp. read adresse  

    reg [G_DATA_W - 1 : 0]      q_wr_data,          //  tmp. write data
                                q_rd_data;          //  tmp. read data

    always_ff @(posedge i_clk) begin 

        q_ctrl_arready  <= 1;

        if (q_ctrl_arready & q_ctrl_arvalid) begin

            RADDR               <= q_ctrl_araddr [C_ADDR_W - 1 : 0];
            q_ctrl_arready   <= 0;
            q_rena              <= 1;

        end

        if (q_rena) begin

            q_ctrl_rresp <= (!(RADDR inside {   G_WR_SLVERR_ADDR,
                                                G_WR_DECERR_ADDR,
                                                G_WR_WD_ERR_ADDR,
                                                G_RD_SLVERR_ADDR,
                                                G_RD_DECERR_ADDR,
                                                G_RD_WD_ERR_ADDR,
                                                G_RG_ST_ERR_ADDR}) ? 
                                                'b11 : 'b00); 

            q_ctrl_rvalid <= 1;

            case(RADDR)

                G_WR_SLVERR_ADDR : begin

                    q_ctrl_rdata [G_CNT_WDT : 0] <= RG_STAT[G_CNT_WDT : 0];
                    q_ctrl_rdata [G_DATA_W - 1 : G_CNT_WDT + 1] <= '0;

                end

                G_WR_DECERR_ADDR : begin

                    q_ctrl_rdata [G_CNT_WDT : 0] <= RG_STAT [G_CNT_WDT * 2 + 1: G_CNT_WDT + 1];
                    q_ctrl_rdata [G_DATA_W - 1 : G_CNT_WDT + 1] <= '0;

                end

                G_WR_WD_ERR_ADDR : begin

                    q_ctrl_rdata [G_CNT_WDT : 0] <= RG_STAT [G_CNT_WDT * 3 + 2 : G_CNT_WDT * 2 + 2];
                    q_ctrl_rdata [G_DATA_W - 1 : G_CNT_WDT + 1] <= '0;
                
                end
                
                G_RD_SLVERR_ADDR : begin

                    q_ctrl_rdata [G_CNT_WDT : 0] <= RG_STAT [G_CNT_WDT * 4 + 3 : G_CNT_WDT * 3 + 3];
                    q_ctrl_rdata [G_DATA_W - 1 : G_CNT_WDT + 1] <= '0;

                end

                G_RD_DECERR_ADDR : begin

                    q_ctrl_rdata [G_CNT_WDT : 0] <= RG_STAT [G_CNT_WDT * 5 + 4 : G_CNT_WDT * 4 + 4];
                    q_ctrl_rdata [G_DATA_W - 1 : G_CNT_WDT + 1] <= '0;

                end

                G_RD_WD_ERR_ADDR : begin

                    q_ctrl_rdata [G_CNT_WDT : 0] <= RG_STAT[G_CNT_WDT : 0];
                    q_ctrl_rdata [G_DATA_W - 1 : G_CNT_WDT + 1] <= '0;
                
                end

                G_RG_ST_ERR_ADDR : begin

                    q_ctrl_rdata [G_CNT_WDT * 6 + 5 : 0] <= RG_STAT;
                    q_ctrl_rdata [G_DATA_W - 1 : G_CNT_WDT * 6 + 6] <= '0;

                end

            endcase
        
            q_rena <= 0;

        end 

        if (q_ctrl_rvalid & q_ctrl_rready) begin

            q_ctrl_rvalid    <= 0;

        end

        if (!aresetn) begin

            
            q_ctrl_arready  <= 0;
            q_ctrl_rvalid   <= 0;

        end 

    end

endmodule
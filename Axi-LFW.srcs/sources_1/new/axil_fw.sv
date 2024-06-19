`timescale 1ns / 1ps

module axil_fw #(

    int G_CLK           = 1,
        G_CNT_WDT       = 3,                            //  counter width
        G_ADDR_W        = 8,                            //  AXIL xADDR width
        G_DATA_B        = 8,                            //  AXIL xDATA byte width
        G_DATA_W        = G_DATA_B << 3,                //  AXIL xDATA width
        G_WD_WDT        = 8,                            //  watchdog timer len        

        //  addresses of errors in regmap

        reg [G_ADDR_W - 1 : 0]  G_WR_SLVERR_ADDR = 'h01,
                                G_WR_DECERR_ADDR = 'h02,
                                G_WR_WD_ERR_ADDR = 'h03,
                                G_RD_SLVERR_ADDR = 'h04,
                                G_RD_DECERR_ADDR = 'h05,
                                G_RD_WD_ERR_ADDR = 'h06

) (

    input                   i_clk,                      //  clock
                            i_rst,                      //  reset, active - high
    [G_WD_WDT - 1 : 0]      i_len,                      //  WD counter max value

    //  axi-lite master ports

    input   wire m_axil_awready,  output  wire m_axil_awvalid,  reg [G_ADDR_W - 1 : 0]  m_axil_awaddr,   logic  [2 : 0]             m_axil_awprot,                      //  write addr
    input   wire m_axil_wready,   output  wire m_axil_wvalid,   reg [G_DATA_W - 1 : 0]  m_axil_wdata,    reg    [G_DATA_B - 1 : 0]  m_axil_wstrb,                       //  write data
    output  wire m_axil_bready,   input   wire m_axil_bvalid,   reg [1 : 0]             m_axil_bresp,                                                                   //  write resp
    input   wire m_axil_arready,  output  wire m_axil_arvalid,  reg [G_ADDR_W - 1 : 0]  m_axil_araddr,   logic  [2 : 0]             m_axil_arprot,                      //  read addr
    output  wire m_axil_rready,   input   wire m_axil_rvalid,   reg [G_DATA_W - 1 : 0]  m_axil_rdata,    reg    [1 : 0]             m_axil_rresp,                       //  read data & resp

    // axi-lite slave ports

    output  wire s_axil_awready,  input   wire s_axil_awvalid,  reg [G_ADDR_W - 1 : 0]  s_axil_awaddr,   logic  [2 : 0]             s_axil_awprot,                      //  write addr
    output  wire s_axil_wready,   input   wire s_axil_wvalid,   reg [G_DATA_W - 1 : 0]  s_axil_wdata,    reg    [G_DATA_B - 1 : 0]  s_axil_wstrb,                       //  write data 
    input   wire s_axil_bready,   output  reg  s_axil_bvalid,   reg [1 : 0]             s_axil_bresp,                                                                   //  write resp 
    output  wire s_axil_arready,  input   wire s_axil_arvalid,  reg [G_ADDR_W - 1 : 0]  s_axil_araddr,   logic  [2 : 0]             s_axil_arprot,                      //  read addr 
    input   wire s_axil_rready,   output  reg  s_axil_rvalid,   reg [G_DATA_W - 1 : 0]  s_axil_rdata,    reg    [1 : 0]             s_axil_rresp,                       //  read data & resp

    //  axi-lite control slave ports

    output  reg  ctrl_axil_awready,  input   wire ctrl_axil_awvalid,  reg [G_ADDR_W - 1 : 0]  ctrl_axil_awaddr,   logic  [2 : 0]             ctrl_axil_awprot,          //  write addr
    output  reg  ctrl_axil_wready,   input   wire ctrl_axil_wvalid,   reg [G_DATA_W - 1 : 0]  ctrl_axil_wdata,    reg    [G_DATA_B - 1 : 0]  ctrl_axil_wstrb,           //  write data 
    input   wire ctrl_axil_bready,   output  reg  ctrl_axil_bvalid,   reg [1 : 0]             ctrl_axil_bresp,                                                          //  write resp 
    output  reg  ctrl_axil_arready,  input   wire ctrl_axil_arvalid,  reg [G_ADDR_W - 1 : 0]  ctrl_axil_araddr,   logic  [2 : 0]             ctrl_axil_arprot,          //  read addr 
    input   wire ctrl_axil_rready,   output  reg  ctrl_axil_rvalid,   reg [G_DATA_W - 1 : 0]  ctrl_axil_rdata,    reg    [1 : 0]             ctrl_axil_rresp            //  read data & resp

    );

    logic [G_WD_WDT - 1 : 0] C_WD_TIM;      //  watchdog max. value

    //  use tmp. variable to watchdog max. value, if i_len is undefined, use default value = 50ns

    initial begin

        if (i_len > 0) 
            C_WD_TIM = i_len / G_CLK;

        else if (i_len === 'z)
            C_WD_TIM = 50 / G_CLK;

    end

    //  make ports end-to-end

    assign m_axil_awvalid   =       s_axil_awvalid;  
    assign m_axil_awaddr    =       s_axil_awaddr;     
    assign m_axil_wvalid    =       s_axil_wvalid;     
    assign m_axil_wdata     =       s_axil_wdata;        
    assign m_axil_wstrb     =       s_axil_wstrb;        
    assign m_axil_bready    =       s_axil_bready;     
    assign m_axil_arvalid   =       s_axil_arvalid;  
    assign m_axil_araddr    =       s_axil_araddr;     
    assign m_axil_rready    =       s_axil_rready;    

    assign s_axil_awready   =       m_axil_awready;        
    assign s_axil_wready    =       m_axil_wready;        
    assign s_axil_bvalid    =       m_axil_bvalid;        
    assign s_axil_arready   =       m_axil_arready;      
    assign s_axil_rvalid    =       m_axil_rvalid;        
    assign s_axil_rdata     =       m_axil_rdata;           

    assign s_axil_bresp     =   2'b00;                  //  set bresp always OK
    assign s_axil_rresp     =   2'b00;                  //  set rresp always OK  

    reg [G_CNT_WDT : 0]     q_w_slverr_cnt  = 0,        //  write slave error counter
                            q_r_slverr_cnt  = 0,        //  read slave error counter
                            q_w_decerr_cnt  = 0,        //  write decoder error counter
                            q_r_decerr_cnt  = 0,        //  read decoder error counter
                            q_w_wd_err_cnt  = 0,        //  write watchdog error counter
                            q_r_wd_err_cnt  = 0;        //  read watchdog error counter

    reg [G_WD_WDT - 1 : 0]  q_w_wd_cnt,                 //  write watchdog counter
                            q_r_wd_cnt;                 //  read watchdog counter

    reg [1 : 0] q_bresp = '0,                           //  temp. bresp register
                q_rresp = '0;                           //  temp. rresp register

    logic   q_w_wd_ena = 0,                             //  write enable Watchdog, active - high
            q_r_wd_ena = 0;                             //  read enable Watchdog, active - high

    reg [G_CNT_WDT * 6 + 5 : 0] RG_STAT;                //  reg. map of errors

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

    // firewall

    always_ff @(posedge i_clk) begin 

        // counting write errors

        if (q_bresp != 2'b00) begin

            case (q_bresp)
         
                2'b10 : q_w_slverr_cnt <= q_w_slverr_cnt + 1;   // counting slave error

                2'b11 : q_w_decerr_cnt <= q_w_decerr_cnt + 1;   // counting decoder error

            endcase

            q_bresp     <= 2'b00;                   

        end

        // counting read errors

         if (q_rresp != 2'b00) begin

            case (q_rresp)
         
                2'b10 : q_r_slverr_cnt <= q_r_slverr_cnt + 1;   // counting slave error

                2'b11 : q_r_decerr_cnt <= q_r_decerr_cnt + 1;   // counting decoder error

            endcase
            
            q_rresp     <= 2'b00;

        end

        if (!q_w_wd_ena)       
            s_axil_bvalid   <= 0;

        if (!q_r_wd_ena)
            s_axil_rvalid   <= 0;

        // if watchdog is enabled, start counting

        if (q_w_wd_ena)
            q_w_wd_cnt    <= q_w_wd_cnt - 1;

        if (q_r_wd_ena)
            q_r_wd_cnt    <= q_r_wd_cnt - 1;

        //  if write error, close transaction with slave error

        if (q_w_wd_cnt == 0) begin

            q_w_wd_err_cnt      <= q_w_wd_err_cnt + 1;     
            q_w_wd_ena          <= 0;        
            q_w_wd_cnt          <= C_WD_TIM;
            q_bresp             <= 2'b10; 
            s_axil_bvalid       <= 1;

        end
           
        //  if read error, close transaction with slave error

        if (q_r_wd_cnt == 0) begin

            q_r_wd_err_cnt      <= q_r_wd_err_cnt + 1;     
            q_r_wd_ena          <= 0;        
            q_r_wd_cnt          <= C_WD_TIM;
            q_rresp             <= 2'b10; 
            
            if (s_axil_rready) 
                s_axil_rvalid   <= 1;

        end

        //  if start of write transaction, enable watchdog

        if (s_axil_awvalid & m_axil_awready) begin

            q_w_wd_cnt      <= C_WD_TIM;
            q_w_wd_ena      <= 1;

        end

        //  if start of read transaction, enable watchdog

        if (m_axil_arvalid & s_axil_arready) begin

            q_r_wd_cnt      <= C_WD_TIM;
            q_r_wd_ena      <= 1;

        end

        //  if end of write transaction, reset watchdog

        if (m_axil_bvalid & s_axil_bready) begin

            q_bresp         <= m_axil_bresp;
            q_w_wd_cnt      <= C_WD_TIM;
            q_w_wd_ena      <= 0;

        end
        
        //  if end of read transaction, reset watchdog

        if (m_axil_rvalid & s_axil_rready) begin
            
            q_rresp         <= m_axil_rresp;
            q_r_wd_cnt      <= C_WD_TIM;
            q_r_wd_ena      <= 0;

        end

    //  reset, active - high, reset all errors and counters

        if (i_rst) begin

            q_w_slverr_cnt  <= 0;
            q_r_slverr_cnt  <= 0;
            q_w_decerr_cnt  <= 0;
            q_r_decerr_cnt  <= 0;
            q_w_wd_err_cnt  <= 0;
            q_r_wd_err_cnt  <= 0;
            q_w_wd_cnt      <= C_WD_TIM;
            q_r_wd_cnt      <= C_WD_TIM;
            q_w_wd_ena      <= 0;
            q_r_wd_ena      <= 0;

        end

    end

    //  control firewall

    logic   q_wena  = 0,                        //  flag, if got write address - high 
            q_wdena = 0,                        //  flag, if got write data - high 
            q_rena  = 0,                        //  flag, if got read address - high 
            q_rdena = 0;                        //  flag, if got read data - high

    reg [G_ADDR_W - 1 : 0]  WADDR,              //  tmp. write adress
                            RADDR;              //  tmp. read adresse  

    reg [G_DATA_W - 1 : 0]  q_wr_data,          //  tmp. write data
                            q_rd_data;          //  tmp. read data

    always_ff @(posedge i_clk) begin 

        //  set slave always ready

        ctrl_axil_awready   <= 1;
        ctrl_axil_wready    <= 1;
        ctrl_axil_arready   <= 1;

        //  receiving write address

        if (ctrl_axil_awready & ctrl_axil_awvalid) begin

            WADDR           <= ctrl_axil_awaddr;
            q_wena          <= 1;

        end

        //  getting write data

        if (ctrl_axil_wready & ctrl_axil_wvalid &  q_wena) begin

            q_wr_data       <= ctrl_axil_wdata;
            q_wdena         <= 1;
            q_wena          <= 0;

        end 

        //  make smth with received data

        if (q_wdena) begin

            case(WADDR)

                G_WR_SLVERR_ADDR : ;

                G_WR_DECERR_ADDR : ;

                G_WR_WD_ERR_ADDR : ;

                G_RD_SLVERR_ADDR : ;

                G_RD_DECERR_ADDR : ;

                G_RD_WD_ERR_ADDR : ;

            endcase 

            q_wdena             <= 0;
            ctrl_axil_bvalid    <= 1;

        end

        //  send response OK

        if (ctrl_axil_bvalid & ctrl_axil_bready) begin

            ctrl_axil_bresp    <= '0;
            ctrl_axil_bvalid   <= 0;

        end 

        //  receiving read address

        if (ctrl_axil_arready & ctrl_axil_arvalid) begin

            RADDR           <= ctrl_axil_araddr;
            q_rena          <= 1;

        end

        //  assigning data to temp. variable 

        if (q_rena) begin

            case(RADDR)

                G_WR_SLVERR_ADDR :

                    q_rd_data <= RG_STAT [G_CNT_WDT : 0];

                G_WR_DECERR_ADDR : 

                    q_rd_data <= RG_STAT [G_CNT_WDT * 2 + 1: G_CNT_WDT + 1];

                G_WR_WD_ERR_ADDR : 

                    q_rd_data <= RG_STAT [G_CNT_WDT * 3 + 2 : G_CNT_WDT * 2 + 2];

                G_RD_SLVERR_ADDR : 

                    q_rd_data <= RG_STAT [G_CNT_WDT * 4 + 3 : G_CNT_WDT * 3 + 3];

                G_RD_DECERR_ADDR :

                    q_rd_data <= RG_STAT [G_CNT_WDT * 5 + 4 : G_CNT_WDT * 4 + 4];

                G_RD_WD_ERR_ADDR : 

                    q_rd_data <= RG_STAT [G_CNT_WDT * 6 + 5 : G_CNT_WDT * 5 + 5];

            endcase
            
            q_rena  <= 0;
            q_rdena <= 1;

        end

        //  send read data and response OK

        if (q_rdena) begin

            ctrl_axil_rdata     <= q_rd_data;
            ctrl_axil_rresp     <= '0;
            ctrl_axil_rvalid    <= 1;
            q_rdena             <= 0;

        end

        if (ctrl_axil_rvalid & ctrl_axil_rready) 
            ctrl_axil_rvalid <= 0;

    end 

endmodule
`timescale 1ns / 1ps

module axil_fw #(

    shortint        G_CNT_WDT       = 4,                //  counter width
                    G_ADDR_W        = 32,               //  AXIL xADDR width
                    G_DATA_W        = 32,               //  AXIL xDATA byte width
                    G_WD_WDT        = 8,                //  watchdog timer len        
    
    //  addresses of errors in regmap

    localparam shortint C_ADDR_W = 5,                   //  local xADDR width

    reg [C_ADDR_W - 1 : 0]  G_WR_SLVERR_ADDR    = 'h00,
                            G_WR_DECERR_ADDR    = 'h04,
                            G_WR_WD_ERR_ADDR    = 'h08,
                            G_RD_SLVERR_ADDR    = 'h0c,
                            G_RD_DECERR_ADDR    = 'h10,
                            G_RD_WD_ERR_ADDR    = 'h14,
                            G_RG_ST_ERR_ADDR    = 'h18

) (

    input                   i_clk,                      //  clock
                            i_rst,                      //  reset, active - high
    [G_WD_WDT - 1 : 0]      i_len,                      //  WD counter max value

    //  axi-lite master ports

    input   wire m_axil_awready,  output  wire m_axil_awvalid,  reg [G_ADDR_W - 1 : 0]  m_axil_awaddr,   logic  [2 : 0]                     m_axil_awprot,                      //  write addr
    input   wire m_axil_wready,   output  wire m_axil_wvalid,   reg [G_DATA_W - 1 : 0]  m_axil_wdata,    reg    [(G_DATA_W >> 3) - 1 : 0]     m_axil_wstrb,                       //  write data
    output  wire m_axil_bready,   input   wire m_axil_bvalid,   reg [1 : 0]             m_axil_bresp,                                                                           //  write resp
    input   wire m_axil_arready,  output  wire m_axil_arvalid,  reg [G_ADDR_W - 1 : 0]  m_axil_araddr,   logic  [2 : 0]                     m_axil_arprot,                      //  read addr
    output  wire m_axil_rready,   input   wire m_axil_rvalid,   reg [G_DATA_W - 1 : 0]  m_axil_rdata,    reg    [1 : 0]                     m_axil_rresp,                       //  read data & resp

    // axi-lite slave ports

    output  wire s_axil_awready,  input   wire s_axil_awvalid,  reg [G_ADDR_W - 1 : 0]  s_axil_awaddr,   logic  [2 : 0]                     s_axil_awprot,                      //  write addr
    output  wire s_axil_wready,   input   wire s_axil_wvalid,   reg [G_DATA_W - 1 : 0]  s_axil_wdata,    reg    [(G_DATA_W >> 3) - 1 : 0]     s_axil_wstrb,                       //  write data 
    input   wire s_axil_bready,   output  reg  s_axil_bvalid,   reg [1 : 0]             s_axil_bresp,                                                                           //  write resp 
    output  wire s_axil_arready,  input   wire s_axil_arvalid,  reg [G_ADDR_W - 1 : 0]  s_axil_araddr,   logic  [2 : 0]                     s_axil_arprot,                      //  read addr 
    input   wire s_axil_rready,   output  reg  s_axil_rvalid,   reg [G_DATA_W - 1 : 0]  s_axil_rdata,    reg    [1 : 0]                     s_axil_rresp,                       //  read data & resp

    //  axi-lite control slave ports

    output  reg  ctrl_axil_awready,  input   wire ctrl_axil_awvalid,  reg [G_ADDR_W - 1 : 0]  ctrl_axil_awaddr,   logic  [2 : 0]                    ctrl_axil_awprot,           //  write addr
    output  reg  ctrl_axil_wready,   input   wire ctrl_axil_wvalid,   reg [G_DATA_W - 1 : 0]  ctrl_axil_wdata,    reg    [(G_DATA_W >> 3) - 1 : 0]    ctrl_axil_wstrb,            //  write data 
    input   wire ctrl_axil_bready,   output  reg  ctrl_axil_bvalid,   reg [1 : 0]             ctrl_axil_bresp,                                                                  //  write resp 
    output  reg  ctrl_axil_arready,  input   wire ctrl_axil_arvalid,  reg [G_ADDR_W - 1 : 0]  ctrl_axil_araddr,   logic  [2 : 0]                    ctrl_axil_arprot,           //  read addr 
    input   wire ctrl_axil_rready,   output  reg  ctrl_axil_rvalid,   reg [G_DATA_W - 1 : 0]  ctrl_axil_rdata,    reg    [1 : 0]                    ctrl_axil_rresp             //  read data & resp

    );

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
    assign s_axil_arready   =       m_axil_arready;      
    assign s_axil_rdata     =       m_axil_rdata;           

    assign s_axil_bresp     =       2'b00;                  //  set bresp always OK
    assign s_axil_rresp     =       2'b00;                  //  set rresp always OK  

    reg q_bvalid = 0,
        q_rvalid = 0;

    assign s_axil_bvalid    =       m_axil_bvalid | q_bvalid;
    assign s_axil_rvalid    =       m_axil_rvalid | q_rvalid;

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

    logic [G_WD_WDT - 1 : 0] C_WD_TIM;      //  watchdog max. value

    // firewall

    always_ff @(posedge i_clk) begin 

        //  use tmp. variable as watchdog max. value, if i_len is undefined, use default value = 50ns

         if (i_len > 0) 
            C_WD_TIM = i_len;

        else if (i_len === 'x)
            C_WD_TIM = 50;

        // counting write errors

        if (q_bresp != 2'b00) begin

            case (q_bresp)
         
                'b10 : q_w_slverr_cnt <= q_w_slverr_cnt + 1;   // counting slave error

                'b11 : q_w_decerr_cnt <= q_w_decerr_cnt + 1;   // counting decoder error

            endcase

            q_bresp     <= 2'b00;                   

        end

        // counting read errors

         if (q_rresp != 2'b00) begin

            case (q_rresp)
         
                'b10 : q_r_slverr_cnt <= q_r_slverr_cnt + 1;   // counting slave error

                'b11 : q_r_decerr_cnt <= q_r_decerr_cnt + 1;   // counting decoder error

            endcase
            
            q_rresp     <= 2'b00;

        end

        if (!q_w_wd_ena)       
            q_bvalid   <= 0;

        if (!q_r_wd_ena)
            q_rvalid   <= 0;

        //  if write error, close transaction with slave error
        
        if (q_w_wd_cnt == 0)
            q_w_wd_ena          <= 0;

         if (q_w_wd_cnt == 0)
            if (s_axil_bready) 
                q_bvalid   <= 1;

        if (q_w_wd_cnt == 0) begin

            q_w_wd_err_cnt      <= q_w_wd_err_cnt + 1;             
            q_bresp             <= 2'b10; 
            
        end
           
        //  if read error, close transaction with slave error

        if (q_r_wd_cnt == 0)
            if (s_axil_rready) 
                q_rvalid   <= 1;


        if (q_r_wd_cnt == 0)
            q_r_wd_ena          <= 0;        

        if (q_r_wd_cnt == 0) begin

            q_r_wd_err_cnt      <= q_r_wd_err_cnt + 1;     
            q_rresp             <= 2'b10; 
            
        end

        //  if start of write transaction, enable watchdog

        if (s_axil_awvalid & m_axil_awready)
            q_w_wd_ena      <= 1;

        //  if start of read transaction, enable watchdog

        if (m_axil_arvalid & s_axil_arready)
            q_r_wd_ena      <= 1;

        //  if end of write transaction, reset watchdog

        if (m_axil_bvalid & s_axil_bready)
            q_w_wd_ena      <= 0;

        if (m_axil_bvalid & s_axil_bready)
            q_bresp         <= m_axil_bresp;

        //  if end of read transaction, reset watchdog

        if (m_axil_rvalid & s_axil_rready)
            q_r_wd_ena      <= 0;

        if (m_axil_rvalid & s_axil_rready)
            
            q_rresp         <= m_axil_rresp;

    //  reset, active - high, reset all errors and counters

        if (!i_rst) begin

            q_w_slverr_cnt  <= 0;
            q_r_slverr_cnt  <= 0;
            q_w_decerr_cnt  <= 0;
            q_r_decerr_cnt  <= 0;
            q_w_wd_err_cnt  <= 0;
            q_r_wd_err_cnt  <= 0;
            q_w_wd_ena      <= 0;
            q_r_wd_ena      <= 0;

        end

    end

    logic   q_w_ena_set = 0,
            q_r_ena_set = 0;

    //  counters

    always_ff @(posedge i_clk) begin

        q_w_ena_set <= ((s_axil_awvalid & m_axil_awready) | (m_axil_bvalid & s_axil_bready));
        q_r_ena_set <= ((s_axil_arvalid & m_axil_arready) | (m_axil_rvalid & s_axil_rready));

        if (!i_rst) begin

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

    logic                       q_wena  = 0,        //  flag, if got write address - high 
                                q_rena  = 0;        //  flag, if got read address - high 

    reg [C_ADDR_W - 1 : 0]      WADDR,              //  tmp. write adress
                                RADDR;              //  tmp. read adresse  

    reg [G_DATA_W - 1 : 0]      q_wr_data,          //  tmp. write data
                                q_rd_data;          //  tmp. read data

    always_ff @(posedge i_clk) begin 

        if (i_rst == 'b0) begin

            ctrl_axil_awready  <= 1;
            ctrl_axil_wready   <= 1;
            ctrl_axil_arready  <= 1;
            ctrl_axil_bvalid   <= 0;
            ctrl_axil_rvalid   <= 0;

        end 
        else begin

            ctrl_axil_arready  <= 1;

            if (ctrl_axil_arready & ctrl_axil_arvalid) begin

                RADDR               <= ctrl_axil_araddr [C_ADDR_W - 1 : 0];
                ctrl_axil_arready   <= 0;
                q_rena              <= 1;

            end

            if (q_rena) begin

                ctrl_axil_rresp <= (!(RADDR inside {G_WR_SLVERR_ADDR,
                                                    G_WR_DECERR_ADDR,
                                                    G_WR_WD_ERR_ADDR,
                                                    G_RD_SLVERR_ADDR,
                                                    G_RD_DECERR_ADDR,
                                                    G_RD_WD_ERR_ADDR,
                                                    G_RG_ST_ERR_ADDR}) ? 
                                                    'b11 : 'b00); 

                ctrl_axil_rvalid <= 1;

               case(RADDR)

                    G_WR_SLVERR_ADDR : begin

                        ctrl_axil_rdata [G_CNT_WDT : 0] <= RG_STAT[G_CNT_WDT : 0];
                        ctrl_axil_rdata [G_DATA_W - 1 : G_CNT_WDT + 1] <= '0;

                    end

                    G_WR_DECERR_ADDR : begin

                        ctrl_axil_rdata [G_CNT_WDT : 0] <= RG_STAT [G_CNT_WDT * 2 + 1: G_CNT_WDT + 1];
                        ctrl_axil_rdata [G_DATA_W - 1 : G_CNT_WDT + 1] <= '0;

                    end

                    G_WR_WD_ERR_ADDR : begin

                        ctrl_axil_rdata [G_CNT_WDT : 0] <= RG_STAT [G_CNT_WDT * 3 + 2 : G_CNT_WDT * 2 + 2];
                        ctrl_axil_rdata [G_DATA_W - 1 : G_CNT_WDT + 1] <= '0;
                    
                    end
                    
                    G_RD_SLVERR_ADDR : begin

                        ctrl_axil_rdata [G_CNT_WDT : 0] <= RG_STAT [G_CNT_WDT * 4 + 3 : G_CNT_WDT * 3 + 3];
                        ctrl_axil_rdata [G_DATA_W - 1 : G_CNT_WDT + 1] <= '0;

                    end

                    G_RD_DECERR_ADDR : begin

                        ctrl_axil_rdata [G_CNT_WDT : 0] <= RG_STAT [G_CNT_WDT * 5 + 4 : G_CNT_WDT * 4 + 4];
                        ctrl_axil_rdata [G_DATA_W - 1 : G_CNT_WDT + 1] <= '0;

                    end

                    G_RD_WD_ERR_ADDR : begin

                        ctrl_axil_rdata [G_CNT_WDT : 0] <= RG_STAT[G_CNT_WDT : 0];
                        ctrl_axil_rdata [G_DATA_W - 1 : G_CNT_WDT + 1] <= '0;
                    
                    end

                    G_RG_ST_ERR_ADDR : begin

                        ctrl_axil_rdata [G_CNT_WDT * 6 + 5 : 0] <= RG_STAT;
                        ctrl_axil_rdata [G_DATA_W - 1 : G_CNT_WDT * 6 + 6] <= '0;

                    end

                endcase
            
                q_rena <= 0;

            end 

            if (ctrl_axil_rvalid & ctrl_axil_rready) begin

                ctrl_axil_rvalid    <= 0;

            end

        end

    end

endmodule
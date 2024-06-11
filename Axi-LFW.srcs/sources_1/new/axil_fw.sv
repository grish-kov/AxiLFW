`timescale 1ns / 1ps

module axil_fw #(

    parameter int   G_CLK           = 1,        //  clock
                    G_WD_TIM        = 50,       //  watchDog timer
                    G_CNT_WDT       = 3,        //  counter width
                    G_ADDR_W        = 3         //  AXIL xADDR bit width

) (

    input           i_clk,                      
                    i_rst,                      //  reset, active - high

    if_axil.s       s_axil,                     //  AXI Lite Slave modports
    if_axil.m       m_axil                      //  AXI Lite Master modports

    );

    localparam int C_WD_TIM = G_WD_TIM / G_CLK;             //  max. timer value

    localparam int C_WD_WDT = $ceil($clog2(C_WD_TIM + 1));  // timer width

    assign m_axil.awvalid   =       s_axil.awvalid;  
    assign m_axil.awaddr    =       s_axil.awaddr;     
    assign m_axil.wvalid    =       s_axil.wvalid;     
    assign m_axil.wdata     =       s_axil.wdata;        
    assign m_axil.wstrb     =       s_axil.wstrb;        
    assign m_axil.bready    =       s_axil.bready;     
    assign m_axil.arvalid   =       s_axil.arvalid;  
    assign m_axil.araddr    =       s_axil.araddr;     
    assign m_axil.rready    =       s_axil.rready;    

    assign s_axil.awready   =       m_axil.awready;        
    assign s_axil.wready    =       m_axil.wready;        
    assign s_axil.bvalid    =       m_axil.bvalid;        
    assign s_axil.arready   =       m_axil.arready;      
    assign s_axil.rvalid    =       m_axil.rvalid;        
    assign s_axil.rdata     =       m_axil.rdata;           

    assign s_axil.bresp     =   2'b00;                  //  set bresp always OK
    assign s_axil.rresp     =   2'b00;                  //  set rresp always OK

    reg [G_ADDR_W : 0]  xADDR = '1;                     //  addr of error

    reg [G_CNT_WDT : 0]     q_w_slverr_cnt  = 0,        //  write slave error counter
                            q_r_slverr_cnt  = 0,        //  read slave error counter
                            q_w_decerr_cnt  = 0,        //  write decoder error counter
                            q_r_decerr_cnt  = 0,        //  read decoder error counter
                            q_w_wd_err_cnt  = 0,        //  write watchdog error counter
                            q_r_wd_err_cnt  = 0;        //  read watchdog error counter

    reg [C_WD_WDT : 0]  q_w_wd_cnt,                     //  write watchdog counter
                        q_r_wd_cnt;                     //  read watchdog counter

    reg [1 : 0] q_bresp = '0,                           //  temp. bresp register
                q_rresp = '0;                           //  temp. rresp register

    logic   q_w_wd_ena = 0,                             //  write enable Watchdog, active - high
            q_r_wd_ena = 0;                             //  read enable Watchdog, active - high

    reg [G_CNT_WDT * 6 + 5  : 0] RG_STAT;     //  reg. map of errors

    assign
        RG_STAT [G_CNT_WDT          :   0               ]  =   q_w_slverr_cnt;
    
    assign
        RG_STAT [G_CNT_WDT * 2 + 1  :   G_CNT_WDT + 1   ]  =   q_w_decerr_cnt;

    assign
        RG_STAT [G_CNT_WDT * 3 + 2  :   G_CNT_WDT * 2 + 2]  =   q_w_wd_err_cnt;
    
    assign
        RG_STAT [G_CNT_WDT * 4 + 3  :   G_CNT_WDT * 3 + 3]  =   q_r_slverr_cnt;
    
    assign
        RG_STAT [G_CNT_WDT * 5 + 4  :   G_CNT_WDT * 4 + 4]  =   q_r_decerr_cnt;
    
    assign
        RG_STAT [G_CNT_WDT * 6 + 5  :   G_CNT_WDT * 5 + 5]  =   q_r_wd_err_cnt;

    // assign
    //     RG_STAT [(G_CNT_WDT + 1) * 6 + G_ADDR_W : G_CNT_WDT * 6 + 6]  = xADDR;
    //     // (   q_bresp != 2'b00    | q_rresp != 2'b00 | 
    //     //     q_w_wd_err_cnt != 0 | q_r_wd_err_cnt != 0 ) ? : ;

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

        if (!q_w_wd_ena & !s_axil.bready)       
            m_axil.bvalid   <= 0;

        if (!q_r_wd_ena & !s_axil.rready)
            s_axil.rvalid   <= 0;

        // if watchdog is enabled, start counting

        if (q_w_wd_ena)
            q_w_wd_cnt    <= q_w_wd_cnt - 1;

        if (q_r_wd_ena)
            q_r_wd_cnt    <= q_r_wd_cnt - 1;

        //  if write error, close transaction with slave error

        if (q_w_wd_cnt == 0) begin

            q_w_wd_err_cnt    <= q_w_wd_err_cnt + 1;     
            q_w_wd_ena        <= 0;        
            q_w_wd_cnt        <= C_WD_TIM;
            q_bresp         <= 2'b10; 
            m_axil.bvalid   <= 1;

        end
           
        //  if read error, close transaction with slave error

        if (q_r_wd_cnt == 0) begin

            q_r_wd_err_cnt    <= q_r_wd_err_cnt + 1;     
            q_r_wd_ena        <= 0;        
            q_r_wd_cnt        <= C_WD_TIM;
            q_rresp         <= 2'b10; 
            
            if (s_axil.rready) 
                m_axil.rvalid   <= 1;

        end

        //  if start of write transaction, enable watchdog

        if (s_axil.awvalid & m_axil.awready) begin

            q_w_wd_cnt  <= G_WD_TIM;
            q_w_wd_ena    <= 1;
            xADDR       <= s_axil.awaddr;

        end

        //  if start of read transaction, enable watchdog

        if (m_axil.arvalid & s_axil.arready) begin

            q_r_wd_cnt  <= G_WD_TIM;
            q_r_wd_ena    <= 1;
            xADDR       <= s_axil.araddr;

        end

        //  if end of write transaction, reset watchdog

        if (m_axil.bvalid & s_axil.bready) begin

            q_bresp         <= m_axil.bresp;
            q_w_wd_cnt      <= C_WD_TIM;
            q_w_wd_ena      <= 0;

        end
        
        //  if end of read transaction, reset watchdog

        if (m_axil.rvalid & s_axil.rready) begin
            
            q_rresp         <= m_axil.rresp;
            q_r_wd_cnt      <= C_WD_TIM;
            q_r_wd_ena      <= 0;

        end

        //  reset, active - high

        if (i_rst) begin

            q_w_wd_cnt          <= C_WD_TIM;
            q_r_wd_cnt          <= C_WD_TIM;
            q_w_wd_ena          <= 0;
            q_r_wd_ena          <= 0;
            q_rresp             <= 2'b00;
            q_bresp             <= 2'b00;

        end

    end

endmodule
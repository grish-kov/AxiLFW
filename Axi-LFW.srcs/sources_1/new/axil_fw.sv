`timescale 1ns / 1ps

module axil_fw #(

    parameter   G_CLK           = 1.0,          //  clock
                G_WD_TIM        = 50,           //  watchDog timer
                G_CNT_WDT       = 4,            //  counter width
                G_ADDR_W        = 12            //  AXIL xADDR bit width

) (

    input           i_clk,                      
                    i_rst,                      //  reset, active - high

    if_axil.s       s_axil,                     //  AXI Lite Slave modports
    if_axil.m       m_axil                      //  AXI Lite Master modports

    );

    localparam C_WD_TIM = G_WD_TIM / G_CLK;     //  max. timer value

    assign s_axil.awvalid   = m_axil.awvalid; 
    assign s_axil.awaddr    = m_axil.awaddr;  
    assign s_axil.wvalid    = m_axil.wvalid;  
    assign s_axil.wdata     = m_axil.wdata;   
    assign s_axil.wstrb     = m_axil.wstrb;   
    assign s_axil.bready    = m_axil.bready;  
    assign s_axil.arvalid   = m_axil.arvalid; 
    assign s_axil.araddr    = m_axil.araddr;  
    assign s_axil.rready    = m_axil.rready; 

    assign m_axil.awready   = s_axil.awready;  
    assign m_axil.wready    = s_axil.wready;
    assign m_axil.bvalid    = s_axil.bvalid;
    assign m_axil.arready   = s_axil.arready;
    assign m_axil.rvalid    = s_axil.rvalid;
    assign m_axil.rdata     = s_axil.rdata;

    assign m_axil.bresp     = 2'b00;                    //  set bresp always OK
    assign m_axil.rresp     = 2'b00;                    //  set rresp always OK

    reg [G_ADDR_W - 1 : 0]  xADDR = '1;

    reg [G_CNT_WDT : 0]     q_w_err_cnt     = 0,        //  write error counter
                            q_r_err_cnt     = 0,        //  read error counter
                            q_wd_err_cnt    = 0;        //  watchdog error counter

    reg [10 : 0] q_wd_cnt = 0;                          //  watchdog counter

    reg [1 : 0] q_bresp = '0,                           //  temp. bresp register
                q_rresp = '0;                           //  temp. rresp register

    logic   q_wd_ena = 0;                               //  enable WatchDog, active - high

    logic   q_w_ena = 0,                                //  ???
            q_r_ena = 0;                                //  ???

    reg [G_ADDR_W + 2 + G_CNT_WDT * 3 : 0] RG_STAT;     //  reg. map of errors

    assign RG_STAT [G_ADDR_W + 2 + G_CNT_WDT * 3 : G_CNT_WDT * 3 + 3] = 
            (q_bresp != 2'b00 | q_rresp != 2'b00 | q_wd_err_cnt != 0) ? xADDR : '0;     //  error address

    assign RG_STAT [G_CNT_WDT * 3 + 2 : 
                    G_CNT_WDT * 2 + 2]  = q_w_err_cnt;              //  write error

    assign RG_STAT [G_CNT_WDT * 2 + 1 : 
                    G_CNT_WDT + 1]      = q_r_err_cnt;              //  read error

    assign RG_STAT [G_CNT_WDT : 0]      = q_wd_err_cnt;             //  watchdog error 

    always_ff @(posedge i_clk) begin 

        // counting write errors

        if (q_bresp != 2'b00) begin

            q_w_err_cnt <= q_w_err_cnt + 1; 
            q_bresp     <= 2'b00;                   

        end

        // counting read errors

         if (q_rresp != 2'b00) begin

            q_r_err_cnt <= q_r_err_cnt + 1;
            q_rresp     <= 2'b00;

        end

        if (!q_w_ena & !s_axil.bready)
            s_axil.bvalid   <= 0;

        if (!q_r_ena & !s_axil.rready)
            s_axil.rvalid   <= 0;

        // if watchdog is enable, start counting

        if (q_wd_ena)
            q_wd_cnt    <= q_wd_cnt + 1;

        // counting until max timer value

        if (q_wd_cnt == C_WD_TIM) begin

            q_wd_err_cnt    <= q_wd_err_cnt + 1;     
            q_wd_ena        <= 0;        
            q_wd_cnt        <= 0;

            //  if write error, close transaction with slave error

            if (q_w_ena) begin
                
                q_bresp         <= 2'b10; 

                if (s_axil.wvalid) 
                    s_axil.wready   <= 1;

                s_axil.bvalid   <= 1;

            end

            //  if read error, close transaction with slave error

            if (q_r_ena) begin

                q_rresp         <= 2'b10; 
                
                if (s_axil.rready) 
                    s_axil.rvalid   <= 1;
                
                q_r_ena         <= 0;

            end

        end

        //  if start of write transaction, enable watchdog

        if (s_axil.awvalid & s_axil.awready) begin

            q_wd_ena    <= 1;
            q_w_ena     <= 1;
            xADDR       <= s_axil.awaddr;

        end

        //  if start of read transaction, enable watchdog

        if (s_axil.arvalid & s_axil.arready) begin

            q_wd_ena    <= 1;
            q_r_ena     <= 1;
            xADDR       <= s_axil.araddr;

        end

        //  if end of write transaction, reset watchdog

        if (s_axil.bvalid & s_axil.bready) begin

            q_bresp         <= s_axil.bresp;
            q_wd_cnt        <= 0;
            q_wd_ena        <= 0;
            q_w_ena         <= 0;
            s_axil.wready   <= 0;

        end
        
        //  if end of read transaction, reset watchdog

        if (s_axil.rvalid & s_axil.rready) begin
            
            q_rresp     <= s_axil.rresp;
            q_wd_cnt    <= 0;
            q_wd_ena    <= 0;
            q_r_ena     <= 0;

        end

        //  reset, active - high

        if (i_rst) begin

            q_wd_cnt            <= 0;
            q_wd_ena            <= 0;
            q_rresp             <= 2'b00;
            q_bresp             <= 2'b00;

        end

    end

endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2024 08:09:57 PM
// Design Name: 
// Module Name: dds_configurator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module dds_configurator #(
    parameter shortint G_ADDR_W        = 12,               //  AXIL xADDR width
    parameter shortint G_DATA_B        = 4,                //  AXIL xDATA byte width        
    parameter shortint G_DATA_W        = G_DATA_B << 3,    //  AXIL xDATA width
    
    parameter DDS_NUM = 4,
    parameter CONFIG_WIDTH = 4,
    parameter DAT_WIDTH = 16,
    parameter [31:0]  FREQ = 200000000,
    parameter G_RM_ADDR_W = 42, // AXIL xADDR bit width 
	parameter G_RM_DATA_B = 4, // AXIL xDATA number of bytes (B) d
	parameter G_CG_DATA_B = 1, // codogram TDATA number of bytes (B)
    localparam int C_CG_DATA_W = 8 * G_CG_DATA_B, // codogram TDATA bit width
    localparam int C_RM_DATA_W = 8 * G_RM_DATA_B,
    localparam int CHN_COUNTER_WIDTH = $ceil($clog2(CONFIG_WIDTH))
    )    (
    input i_clk,i_rst, i_stm_rdy,
    
    output  reg s_axil_awready,  input   wire s_axil_awvalid,  reg [G_ADDR_W - 1 : 0]  s_axil_awaddr,   logic  [2 : 0]             s_axil_awprot,                      //  write addr
    output  reg s_axil_wready,   input   wire s_axil_wvalid,   reg [G_DATA_W - 1 : 0]  s_axil_wdata,    reg    [G_DATA_B - 1 : 0]  s_axil_wstrb,                       //  write data 
    input   wire s_axil_bready,   output  reg  s_axil_bvalid,   reg [1 : 0]             s_axil_bresp,                                                                   //  write resp 
    output  reg s_axil_arready,  input   wire s_axil_arvalid,  reg [G_ADDR_W - 1 : 0]  s_axil_araddr,   logic  [2 : 0]             s_axil_arprot,                      //  read addr 
    input   wire s_axil_rready,   output  reg  s_axil_rvalid,   reg [G_DATA_W - 1 : 0]  s_axil_rdata,    reg    [1 : 0]             s_axil_rresp,
    
    output reg [DDS_NUM-1:0][23:0] o_stm_data,
    output reg [CHN_COUNTER_WIDTH-1:0] o_stm_chn,
    output logic o_stm_syn,o_stm_vld, o_ena,
    output logic [DDS_NUM-1:0][CONFIG_WIDTH-1:0][7:0] o_amp_cfg,
    
    output logic [15:0] o_pow_cfg
    );
    
    typedef logic [G_RM_ADDR_W-1:0] t_xaddr;
	typedef logic [C_RM_DATA_W-1:0] t_xdata;
    
    t_xaddr [CONFIG_WIDTH-1:0][DDS_NUM-1:0] CONFIG_ADDR;
    
    genvar k,j;
    generate
        
        for (j=0; j < DDS_NUM; j++) begin
            for (k=0; k < CONFIG_WIDTH; k++) begin
                assign CONFIG_ADDR [j][k] = (k*4)+(j*(CONFIG_WIDTH*4));
            end
        end
    endgenerate 
    localparam t_xaddr PERIOD_ADDR = CONFIG_WIDTH*DDS_NUM*4;
    localparam t_xaddr POW_ADDR = (CONFIG_WIDTH*DDS_NUM+1)*4;
    
    t_xaddr q_wr_addr;
    t_xaddr q_rd_addr;
    
    t_xdata q_wr_data;
    t_xdata q_rd_data;
    
    logic q_wr_vld;
    logic q_rd_vld;
    logic q_sv_vld;
    logic q_rd_a_vld;
    logic q_rd_d_vld;
    
    logic [2:0] syn_cnt;
    
    reg [DDS_NUM-1:0][CONFIG_WIDTH-1:0][31:0] q_control_reg;
    reg [DDS_NUM-1:0][CONFIG_WIDTH-1:0][23:0] q_stm_reg;
    
    logic [15:0] q_pow_cfg;
    logic [18:0] q_duty_cnt; //min frq 3050Hz => max period 0,0003s => 300 000 clk cycles
    logic [18:0] q_duty_period;
    logic [16:0] q_duty_control_reg;
    logic q_ena;
    
    logic [CHN_COUNTER_WIDTH-1:0] q_chn_cnt;

    genvar i;
    generate
        for (j=0; j < DDS_NUM; j++) begin
            for (i=0; i < CONFIG_WIDTH; i++) begin
                always_ff @ (posedge i_clk) begin
                    if (q_wr_vld) begin
                        case(q_wr_addr)
                            CONFIG_ADDR[i][j]: q_control_reg[i][j]<=q_wr_data;
                        endcase
                    end
                    
                    if (!(q_duty_cnt<q_duty_period)) begin
                        q_stm_reg[i][j] <= q_control_reg[i][j][23:0];
                        o_amp_cfg[i][j] <= q_control_reg[i][j][31:24];
                    end
                    
                    if (i_rst) begin
                        q_control_reg[i][j]<=0;
                        o_amp_cfg[i][j]<=0;
                        q_stm_reg[i][j]<='0;
                    end
                end
            end
        end
    endgenerate

    assign s_axil_rdata=q_rd_data;

    always_ff @ (posedge i_clk) begin

        if (!i_rst) begin

            o_stm_vld<='1;
            //o_stm_syn<='0;
	       
            //------------------------------------write in regs---------------------------------
	   
	        o_ena<=q_ena;
    
            s_axil_awready<='1; 

            if (s_axil_awvalid & s_axil_awready) begin
                q_wr_addr<=s_axil_awaddr;
                s_axil_awready<='0;
            end
            
            s_axil_wready<='1;

            if (s_axil_wvalid & s_axil_wready) begin
                q_wr_data<=s_axil_wdata;
                s_axil_wready<=0;
                s_axil_bvalid<='1;
                s_axil_bresp<='0;
                q_wr_vld<='1;
            end
                        
            if (q_wr_vld) begin
                        
                case(q_wr_addr)

                    PERIOD_ADDR: begin 
                        q_duty_control_reg<=q_wr_data; 
                        q_ena <= q_wr_data[20]; end
                    POW_ADDR: q_pow_cfg<=q_wr_data;
                endcase
                
                q_wr_vld<=0;

            end
            
            if (s_axil_bvalid & s_axil_bready) 
                s_axil_bvalid<='0;
            
            //---------------------------------------------------------------------
            
            //------------------------------------read from regs---------------------------------
            
            s_axil_arready <= 1;

            if (s_axil_arvalid & s_axil_arready) begin
	           s_axil_arready<='0;
	           q_rd_addr<=s_axil_araddr;
	           q_rd_a_vld<=1;
	        end
	        
	        if (q_rd_a_vld) begin

                s_axil_rvalid<='1;
                s_axil_rresp<=0;

	            case(q_rd_addr)
	               CONFIG_ADDR[0][0]:q_rd_data<=q_control_reg[0][0];
	               CONFIG_ADDR[1][0]:q_rd_data<=q_control_reg[1][0];
	               CONFIG_ADDR[2][0]:q_rd_data<=q_control_reg[2][0];
	               CONFIG_ADDR[3][0]:q_rd_data<=q_control_reg[3][0];
	               
	               CONFIG_ADDR[0][1]:q_rd_data<=q_control_reg[0][1];
	               CONFIG_ADDR[1][1]:q_rd_data<=q_control_reg[1][1];
	               CONFIG_ADDR[2][1]:q_rd_data<=q_control_reg[2][1];
	               CONFIG_ADDR[3][1]:q_rd_data<=q_control_reg[3][1];
	               
	               CONFIG_ADDR[0][2]:q_rd_data<=q_control_reg[0][2];
	               CONFIG_ADDR[1][2]:q_rd_data<=q_control_reg[1][2];
	               CONFIG_ADDR[2][2]:q_rd_data<=q_control_reg[2][2];
	               CONFIG_ADDR[3][2]:q_rd_data<=q_control_reg[3][2];
	               
	               CONFIG_ADDR[0][3]:q_rd_data<=q_control_reg[0][3];
	               CONFIG_ADDR[1][3]:q_rd_data<=q_control_reg[1][3];
	               CONFIG_ADDR[2][3]:q_rd_data<=q_control_reg[2][3];
	               CONFIG_ADDR[3][3]:q_rd_data<=q_control_reg[3][3];
	               PERIOD_ADDR: q_rd_data<=q_duty_control_reg;
	            endcase
	            q_rd_a_vld<=0;
	        end
	        
	        
	        if (s_axil_rvalid & s_axil_rready) 
                s_axil_rvalid<='0;
            
            //---------------------------------------------------------------------
            
            if (q_duty_cnt<q_duty_period)
                q_duty_cnt<=q_duty_cnt+1;
            else if (q_ena) begin
                q_duty_cnt<=0;
                q_duty_period<=(q_duty_control_reg<<2)-1;
                o_pow_cfg<=q_pow_cfg;
                syn_cnt<='0;
                o_stm_syn<='1;
                //change dds configuration
            end
            
            if (syn_cnt!=4) begin
                syn_cnt<=syn_cnt+1;
                o_stm_syn<='1;
            end
            else o_stm_syn<='0;
            
            if (q_ena) q_chn_cnt<=q_chn_cnt+1;
            
            o_stm_data[0]<=q_stm_reg[0][q_chn_cnt];
            o_stm_data[1]<=q_stm_reg[1][q_chn_cnt];
            o_stm_data[2]<=q_stm_reg[2][q_chn_cnt];
            o_stm_data[3]<=q_stm_reg[3][q_chn_cnt];
            
            o_stm_chn<=q_chn_cnt;
            
        end
        else begin

            q_ena<=0;
            q_duty_control_reg <= {12'd0,20'd99};
            o_stm_vld<='0;
            o_stm_data<='0;
            o_stm_chn<='0;
            q_duty_period<=99;
            q_duty_cnt<=0;
            q_chn_cnt<='0;
            o_stm_syn<=0;
            o_stm_vld<=0;
            o_ena<=0;
            q_sv_vld<=0;
            q_wr_vld<=0;
            syn_cnt<='1;
            s_axil_awready  <= 0;
            s_axil_wready   <= 0;
            s_axil_arready  <= 0;
            s_axil_bvalid   <= 0;
            s_axil_rvalid   <= 0;

        end
    end
    
endmodule
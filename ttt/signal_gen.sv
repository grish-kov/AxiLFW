`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2024 06:30:08 PM
// Design Name: 
// Module Name: signal_gen
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



(* KEEP_HIERARCHY = "YES" *)
module signal_gen
    #(
        parameter shortint G_ADDR_W        = 12,               //  AXIL xADDR width
        parameter shortint G_DATA_B        = 4,                //  AXIL xDATA byte width        
        parameter shortint G_DATA_W        = G_DATA_B << 3,    //  AXIL xDATA width
        parameter       MODE = "Standard",
        //parameter bit   NEGATIVE_SIN = '0,
        //parameter bit   NEGATIVE_COS = '0,
        parameter int   DAT_WIDTH = 16,
        parameter int   USR_WIDTH = 0,
        parameter int   NUM_CHANNELS = 4,
        parameter int   MODULUS = 625,
        parameter int   PHA_WIDTH = 12,
        parameter int   LATENCY = 5,
        //parameter int   FIX_OFFSET [NUM_CHANNELS] = /* '{0};// */'{0, 0, 0, 0},
        //parameter int   FIX_INCREMENT [NUM_CHANNELS] = /* '{1};// */'{10, 10, 10, 10}, //not using in streaming mode
        parameter       OSC_DATA = "CosSin",
        parameter       OFFSET = "Streaming",
        parameter       INCREMENT = "Streaming"
        //parameter int   CHN_WIDTH = $clog2(NUM_CHANNELS),
        //parameter int   STM_WIDTH = ( INCREMENT == "Streaming" && OFFSET == "Streaming" ) ? 2*PHA_WIDTH : PHA_WIDTH,
        //parameter int   CFG_WIDTH = ( INCREMENT == "Programmable" && OFFSET == "Programmable" ) ? 2*PHA_WIDTH : PHA_WIDTH,
        //parameter int   OSC_WIDTH = ( OSC_DATA == "CosSin" || OSC_DATA == "SinCos" ) ? 2*DAT_WIDTH : DAT_WIDTH
        //parameter [23:0]   PERIOD_DIVIDEND = (2**DAT_WIDTH)*10
    )
    (
        input i_clk,
        input i_rst,
        
        output  reg s_axil_awready,  input   reg s_axil_awvalid,  reg [G_ADDR_W - 1 : 0]  s_axil_awaddr,   logic  [2 : 0]             s_axil_awprot,                      //  write addr
        output  reg s_axil_wready,   input   reg s_axil_wvalid,   reg [G_DATA_W - 1 : 0]  s_axil_wdata,    reg    [G_DATA_B - 1 : 0]  s_axil_wstrb,                       //  write data 
        input   reg s_axil_bready,   output  reg s_axil_bvalid,   reg [1 : 0]             s_axil_bresp,                                                                   //  write resp 
        output  reg s_axil_arready,  input   reg s_axil_arvalid,  reg [G_ADDR_W - 1 : 0]  s_axil_araddr,   logic  [2 : 0]             s_axil_arprot,                      //  read addr 
        input   reg s_axil_rready,   output  reg s_axil_rvalid,   reg [G_DATA_W - 1 : 0]  s_axil_rdata,    reg    [1 : 0]             s_axil_rresp,
        //if_axil s_axi,
        
        output logic signed [31:0] o_dat_osc,
        output logic [1:0] o_dat_chn,
        output logic o_vld,
        output logic o_tlast,
        
        output wire [15:0] o_pow_cfg
    );

    //logic i_my_cfg_vld;
    logic [NUM_CHANNELS-1:0] q_vld, q_vld_amp;
    logic q_stm_vld,q_stm_syn,q_stm_syn2 ,w_ena;
    logic [NUM_CHANNELS-1:0][23:0] q_stm_dat;
    logic [1:0] q_my_cfg_chn;
    logic [NUM_CHANNELS-1:0][1:0] w_dat_chn, q_dat_chn;
    logic [NUM_CHANNELS-1:0][1:0] w_dat_chn_amp, w_dat_chn_acc;
    logic [NUM_CHANNELS-1:0][NUM_CHANNELS-1:0][7:0] w_amp_cfg;
    wire [NUM_CHANNELS-1:0] w_vld, w_vld_amp;
    wire signed [NUM_CHANNELS-1:0][15:0] w_dat_acc_c, w_dat_acc_s;
    wire signed [NUM_CHANNELS-1:0][13:0] w_dat_amp_c, w_dat_amp_s;
    wire [NUM_CHANNELS-1:0] w_tlast_amp,w_tlast_acc;
    reg [NUM_CHANNELS-1:0][31:0] w_dat_osc;
    reg [NUM_CHANNELS-1:0][15:0] q_dat_os, q_dat_oc;
    //wire [15:0] w_pow_cfg;
    //logic [16:0] o_dat_osc;
    //int frq_a=8000,frq_b=16000,frq_c=32000,frq_d=64000;
    
    //reg [3:0][31:0] q_desired_frc={frq_a,frq_b,frq_c,frq_d};
    
    dds_configurator u_cfg(
        .i_clk(i_clk),
        .i_rst(i_rst),
        //.s_axi(s_axi),
        
        .s_axil_awready  (s_axil_awready),  // output wire s_axil_awready
        .s_axil_awvalid  (s_axil_awvalid),  // input wire s_axil_awvalid
        .s_axil_awaddr   (s_axil_awaddr),    // input wire [7 : 0] s_axil_awaddr
        .s_axil_awprot   (s_axil_awprot),    // input wire [2 : 0] s_axil_awprot
        .s_axil_wready   (s_axil_wready),    // output wire s_axil_wready
        .s_axil_wvalid   (s_axil_wvalid),    // input wire s_axil_wvalid
        .s_axil_wdata    (s_axil_wdata),      // input wire [63 : 0] s_axil_wdata
        .s_axil_wstrb    (s_axil_wstrb),      // input wire [7 : 0] s_axil_wstrb
        .s_axil_bready   (s_axil_bready),    // input wire s_axil_bready
        .s_axil_bvalid   (s_axil_bvalid),    // output wire s_axil_bvalid
        .s_axil_bresp    (s_axil_bresp),      // output wire [1 : 0] s_axil_bresp
        .s_axil_arready  (s_axil_arready),  // output wire s_axil_arready
        .s_axil_arvalid  (s_axil_arvalid),  // input wire s_axil_arvalid
        .s_axil_araddr   (s_axil_araddr),    // input wire [7 : 0] s_axil_araddr
        .s_axil_arprot   (s_axil_arprot),    // input wire [2 : 0] s_axil_arprot
        .s_axil_rready   (s_axil_rready),    // input wire s_axil_rready
        .s_axil_rvalid   (s_axil_rvalid),    // output wire s_axil_rvalid
        .s_axil_rdata    (s_axil_rdata),      // output wire [63 : 0] s_axil_rdata
        .s_axil_rresp    (s_axil_rresp),      // output wire [1 : 0] s_axil_rresp
        
        .o_stm_data(q_stm_dat),
        .o_stm_chn(q_my_cfg_chn),
        .o_stm_vld(q_stm_vld),
        .o_stm_syn(q_stm_syn),
        .o_ena(w_ena),
        .o_amp_cfg(w_amp_cfg),
        
        .o_pow_cfg(o_pow_cfg)
    );
    
//    amplifier #(
//    .NUM_CHANNELS(NUM_CHANNELS),
//    .A_WIDTH(8),
//    .B_WIDTH(16),
//    .C_WIDTH(14)
//    ) u_amp (
//        .i_clk(i_clk),
//        .i_dat_chn(w_dat_chn[0]),
//        .i_vld(w_vld[0]),
//        .i_tlast(q_stm_syn),
//        .o_A(w_amp_cfg),
//        .B(q_dat_osc[0]),
//        .P(w_dat_amp[0]),
//        .o_dat_chn(w_dat_chn_amp[0]),
//        .o_tlast(w_tlast_amp[0]),
//        .o_vld(w_vld_amp[0])
//    );
    
    genvar i;
    generate 
    for (i=0; i < NUM_CHANNELS; i++) begin
    //generate with for
    
    dds #(
        .PHA_WIDTH ( PHA_WIDTH ),
        .DAT_WIDTH ( DAT_WIDTH ),
        .USR_WIDTH ( USR_WIDTH ),
        .OFFSET ( "Streaming" ),
        .INCREMENT( "Streaming" ),
        .MEMORY_TYPE ( "Block" ),
        .MODE ( "Standard" ),
        //.CONFIGURATION ( "PhaseLUT" ),
        .OSC_DATA ( OSC_DATA ),
        .LUT_FILE ( "" ),
        .MODULUS ( MODULUS ),
        .NEGATIVE_SIN ( '0 ),
        .NEGATIVE_COS ( '0 ),
        .NUM_CHANNELS ( NUM_CHANNELS ),
        .LATENCY ( LATENCY ),
        .FIX_OFFSET ( '{0, 0, 0, 0} ),
        .FIX_INCREMENT ( '{0, 0, 0, 0} )
    ) UUT ( 
        .i_dds_s_rst_p ( i_rst ),
        .i_dds_s_ena_p ( w_ena ),
        .i_dds_a_clk_p ( i_clk ),
        .i_dds_stm_vld ( q_stm_vld  ),
        //.o_dds_stm_rdy ( o_my_stm_rdy ),
        .i_dds_stm_dat ( q_stm_dat[i] ),
        .i_dds_stm_syn ( q_stm_syn ),
        .i_dds_cfg_vld ( '0 ),
        .i_dds_cfg_dat ( q_my_cfg_dat ),
        .i_dds_cfg_chn ( q_my_cfg_chn ),
        .i_dds_dat_usr ( i_my_dat_usr ),
        .o_dds_dat_vld ( w_vld[i] ),
        //.o_dds_dat_pha ( o_my_dat_pha ),
        .o_dds_dat_osc ( w_dat_osc[i] ),
        .o_dds_dat_chn ( w_dat_chn[i] )
        //.o_dds_dat_usr ( o_my_dat_usr )
    );
    
    amplifier #(
    .NUM_CHANNELS(NUM_CHANNELS),
    .A_WIDTH(8),
    .B_WIDTH(16),
    .C_WIDTH(14)
    ) u_amps (
        .i_clk(i_clk),
        .i_dat_chn(q_dat_chn[i]),
        .i_vld(q_vld_amp[i]),
        .i_tlast(q_stm_syn2),
        .i_A({w_amp_cfg[i][0],w_amp_cfg[i][1],w_amp_cfg[i][2],w_amp_cfg[i][3]}),
        .B(q_dat_os[i]),
        .P(w_dat_amp_s[i]),
        .o_dat_chn(w_dat_chn_amp[i]),
        .o_tlast(w_tlast_amp[i]),
        .o_vld(w_vld_amp[i])
    );
    
    amplifier #(
    .NUM_CHANNELS(NUM_CHANNELS),
    .A_WIDTH(8),
    .B_WIDTH(16),
    .C_WIDTH(14)
    ) u_ampc (
        .i_clk(i_clk),
        .i_dat_chn(q_dat_chn[i]),
        .i_vld(q_vld_amp[i]),
        .i_tlast(q_stm_syn),
        .i_A({w_amp_cfg[i][0],w_amp_cfg[i][1],w_amp_cfg[i][2],w_amp_cfg[i][3]}),
        .B(q_dat_oc[i]),
        .P(w_dat_amp_c[i])
        //.o_dat_chn(w_dat_chn_amp[i]),
        //.o_tlast(w_tlast_amp[i]),
        //.o_vld(w_vld_amp[i])
    );
    
    accumulator #( //shiftreg to make delay instead of START_OFFSET
    .NUM_CHANNELS(NUM_CHANNELS)
    //.SHIFT_OFFSET()
    ) u_acc_c (
        .i_clk(i_clk),
        .i_vld(w_vld_amp[i]),
        .i_tlast(w_tlast_amp[i]),
        .i_stm_dat(w_dat_amp_c[i]),
        .i_stm_chn(w_dat_chn_amp[i]),
        .o_vld(q_vld[i]),
        .o_stm_dat(w_dat_acc_c[i]),
        .o_stm_chn(w_dat_chn_acc[i]),
        .o_tlast(w_tlast_acc[i])
    );
    
    accumulator #( //shiftreg to make delay instead of START_OFFSET
    .NUM_CHANNELS(NUM_CHANNELS)
    //.SHIFT_OFFSET()
    ) u_acc_s (
        .i_clk(i_clk),
        .i_vld(w_vld_amp[i]),
        .i_tlast(w_tlast_amp[i]),
        .i_stm_dat(w_dat_amp_s[i]),
        .i_stm_chn(w_dat_chn_amp[i]),
        //.o_vld(q_vld[i]),
        .o_stm_dat(w_dat_acc_s[i])
        //.o_stm_chn(w_dat_chn_acc[i]),
        //.o_tlast(w_tlast_acc[i])
    );
    
    end
    endgenerate 
    // end for
    always_ff @ (posedge i_clk) begin
        q_dat_oc[0]<=w_dat_osc[0][15:0];
        q_dat_oc[1]<=w_dat_osc[1][15:0];
        q_dat_oc[2]<=w_dat_osc[2][15:0];
        q_dat_oc[3]<=w_dat_osc[3][15:0];
        
        q_dat_os[0]<=w_dat_osc[0][31:16];
        q_dat_os[1]<=w_dat_osc[1][31:16];
        q_dat_os[2]<=w_dat_osc[2][31:16];
        q_dat_os[3]<=w_dat_osc[3][31:16];
        
        q_vld_amp[0]<=w_vld[0];
        q_vld_amp[1]<=w_vld[1];
        q_vld_amp[2]<=w_vld[2];
        q_vld_amp[3]<=w_vld[3];
        
        q_dat_chn[0]<=w_dat_chn[0];
        q_dat_chn[1]<=w_dat_chn[1];
        q_dat_chn[2]<=w_dat_chn[2];
        q_dat_chn[3]<=w_dat_chn[3];
        
        q_stm_syn2<=q_stm_syn;
        
        o_tlast<= (w_dat_chn_acc[0]==0) ? w_tlast_acc[0] : 0;
        
        if (q_vld) begin
            case (w_dat_chn_acc[0])
                0: o_dat_osc<={w_dat_acc_c[0],w_dat_acc_s[0]};
                1: o_dat_osc<={w_dat_acc_c[1],w_dat_acc_s[1]};
                2: o_dat_osc<={w_dat_acc_c[2],w_dat_acc_s[2]};
                3: o_dat_osc<={w_dat_acc_c[3],w_dat_acc_s[3]};
            endcase 
            o_dat_chn<=w_dat_chn_acc[0];
            o_vld<=q_vld[0];
        end
        else begin
            o_vld<='0;
            o_dat_chn<=0;
            o_dat_osc<=0;
        end
    end
    //assign o_dat_chn=w_dat_chn_acc[0];
    //assign o_dat_osc=w_dat_osc[0];
    //assign o_dat_chn=w_dat_chn[0];
    //assign o_tlast= (w_dat_chn_acc[0]==0) ? w_tlast_acc[0] : 0;
//    amplifier u_amp (
//        .A(signed'(16'd2)),
//        .B(signed'(16'd36))
//    );
    
endmodule
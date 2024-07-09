`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Nickolay A. Sysoev
// 
// Create Date: 05/30/2018 03:48:58 PM
// Design Name: 
// Module Name: dds.sv
// Project Name: dds
// Target Devices: Xilinx Kintex 7 Series+
// Tool Versions: SV 2012
// Description: Direct Digital Synthesizer (DDS) Module
// 
// Dependencies:
// 
// Revision:
// Revision 0.10.0 - change reset polarity
// Additional Comments: DDS Latency:
//  Standard Mode Maximum is 9, Optimal is 5;
//  Rasterized Mode Maximum is 6, Optimal is 5;
//  Taylor Mode Maximum is 10, Optimal is 9;
// 
//////////////////////////////////////////////////////////////////////////////////

(* KEEP_HIERARCHY = "YES" *)
module dds #(
    parameter       MODE = "Standard", // DDS Mode: "Standard", "Rasterized" or "Taylor"
    parameter       OFFSET = "Fixed", // Phase Offset: "None", "Fixed", "Programmable" or "Streaming"
    parameter       INCREMENT = "Fixed", // Phase Increment: "Fixed", "Programmable" or Streaming
    parameter       MEMORY_TYPE = "Block", // Memory Type: "Block" or "Distributed"
    parameter       DDS_CONFIG = "PhaseLUT", // DDS configuration "PhaseLUT" - Phase Generator & Sin Cos LUT, "Phase" - Only Phase Generator, "LUT" - Only Sin Cos LUT 
    parameter       OSC_DATA = "SinCos", // Output LUT Data "Cos" - Cos, "Sin" - Sin or "CosSin"/"SinCos" - Cos & Sin
    parameter       LUT_FILE = "", // File Name for Fill Look Up Table, Use Only When You Want to Fill Table With Custom Values
    parameter   int DAT_WIDTH = 18, // Cos & Sin Data Width in Bits
    parameter   int MODULUS = 25, // Specify the Modulus of the Rasterized Mode from 9 To 16384
    parameter   int PHA_WIDTH = ( MODE == "Rasterized" ) ? $clog2(MODULUS) : 12, // Phase Width in Bits, Max is 32. Do Not Use in Instance when Rasterized Mode is Selected.
    parameter   bit NEGATIVE_SIN = '1, // Sine is Negative (1 - Negative)
    parameter   bit NEGATIVE_COS = '0, // Cosine is Negative (1 - Negative)
    parameter   int NUM_CHANNELS = 1, // Number of Channels from 1 To 256
    parameter   int LATENCY = 4, // Latency in Clock Cycles from 1 To ... See Table In Comments. Latency Equal 1 for Distributed Memory Only
    parameter   int USR_WIDTH = 0, // User Field Width in Bits
    parameter   int FIX_OFFSET [NUM_CHANNELS] = '{default:0}, // Phase Offset in Default State or "Fixed" Mode
    parameter   int FIX_INCREMENT [NUM_CHANNELS] = '{default:0}, // Phase Increment in Default State or "Fixed" Mode
    localparam  int CHN_WIDTH = $clog2(NUM_CHANNELS), // Channel Width if Multi-Channel Configuration is Used, Do Not Use in Instance
    localparam  int OSC_WIDTH = ( OSC_DATA == "CosSin" || OSC_DATA == "SinCos"  ) ? 2*DAT_WIDTH : DAT_WIDTH, // Cos & Sin Output Width, Do Not Use in Instance
    localparam  int STM_WIDTH = ( INCREMENT == "Streaming" && OFFSET == "Streaming" ) ? 2*PHA_WIDTH : ( INCREMENT == "Streaming" || OFFSET == "Streaming" ) ? PHA_WIDTH : 0, // Phase Stream Width if Streaming, Do Not Use in Instance
    localparam  int CFG_WIDTH = ( INCREMENT == "Programmable" && OFFSET == "Programmable" ) ? 2*PHA_WIDTH : ( INCREMENT == "Programmable" || OFFSET == "Programmable" ) ? PHA_WIDTH : 0 // Phase Config Width if Programmable, Do Not Use in Instance
  )  (
    input   wire                  i_dds_s_rst_p, // Synchronous Reset, Active High. In Non-Streaming Mode Use to Reset Phase Accumulator
    input   wire                  i_dds_s_ena_p, // Synchronous Enbale for Managment Frequency Sampling Rate
    input   wire                  i_dds_a_clk_p, // Rising Edge Clock

    input   wire                  i_dds_stm_vld, // Valid for Streaming Mode
    output  wire                  o_dds_stm_rdy, // Ready for Streaming Mode
    input   wire  [STM_WIDTH-1:0] i_dds_stm_dat, // Streaming Mode Data { Offset, Increment } | { Offset } | { Increment }
    input   wire                  i_dds_stm_syn, // Resync - Reset Phase Accumulator, Only for Phase Increment Streaming Mode

    input   wire                  i_dds_cfg_vld, // Valid for Configuration Mode
    input   wire  [CFG_WIDTH-1:0] i_dds_cfg_dat, // Configuration Mode Data { Offset, Increment } | { Offset } | { Increment }
    input   wire  [CHN_WIDTH-1:0] i_dds_cfg_chn, // Configuration Mode Channel in Multi-Channel Mode

    input   wire  [USR_WIDTH-1:0] i_dds_dat_usr, // User Data

    output  wire                  o_dds_dat_vld, // Output Data Valid
    output  wire  [PHA_WIDTH-1:0] o_dds_dat_pha, // Output Phase Data
    output  wire  [OSC_WIDTH-1:0] o_dds_dat_osc, // Output Sin & Cos Data { Sin, Cos }
    output  wire  [CHN_WIDTH-1:0] o_dds_dat_chn, // Output Channel in Multi-Channel Mode

    output  wire  [USR_WIDTH-1:0] o_dds_dat_usr // Output User Data Delayed With Latency In Module
  );

  // Standard Mode
  localparam int STD_LUT_ONE = 2;
  localparam int STD_OUT_LAT = 3;
  localparam int STD_CNV_LAT = 4;
  localparam int STD_LUT_TWO = 5;
  localparam int STD_ACC_LAT = 6;
  localparam int STD_LUT_LAT = 7;
  localparam int STD_SGN_LAT = 8;
  localparam int STD_DDS_LAT = 9;

  // Rasterized Mode
  localparam int RTD_LUT_ONE = 2;
  localparam int RTD_CNV_LAT = 3;
  localparam int RTD_LUT_TWO = 4;
  localparam int RTD_ACC_LAT = 5;
  localparam int RTD_DDS_LAT = 6;

  // Taylor Mode
  localparam int TLR_LUT_ONE = 2;
  localparam int TLR_OUT_LAT = 3;
  localparam int TLR_CNV_LAT = 4;
  localparam int TLR_LUT_TWO = 5;
  localparam int TLR_ACC_LAT = 6;
  localparam int TLR_DSP_LAT = 7;
  localparam int TLR_MLT_LAT = 8;
  localparam int TLR_LUT_LAT = 9;
  localparam int TLR_DDS_LAT = 10;

  localparam bit ACC_OUT_REG = ( MODE == "Standard" && LATENCY >= STD_ACC_LAT || MODE == "Rasterized" && LATENCY >= RTD_ACC_LAT || MODE == "Taylor" && LATENCY >= TLR_ACC_LAT ) ? '1 : '0;
  localparam bit CNV_OUT_REG = ( MODE == "Standard" && LATENCY >= STD_CNV_LAT || MODE == "Rasterized" && LATENCY >= RTD_CNV_LAT || MODE == "Taylor" && LATENCY >= TLR_CNV_LAT ) ? '1 : '0;
  localparam bit LUT_ONE_REG = ( MODE == "Standard" && LATENCY >= STD_LUT_ONE || MODE == "Rasterized" && LATENCY >= RTD_LUT_ONE || MODE == "Taylor" && LATENCY >= TLR_LUT_ONE ) ? '1 : '0;
  localparam bit LUT_TWO_REG = ( MODE == "Standard" && LATENCY >= STD_LUT_TWO || MODE == "Rasterized" && LATENCY >= RTD_LUT_TWO || MODE == "Taylor" && LATENCY >= TLR_LUT_TWO ) ? '1 : '0;

  localparam bit STD_LUT_REG = ( LATENCY >= STD_LUT_LAT ) ? '1 : '0;
  localparam bit STD_SGN_REG = ( LATENCY >= STD_SGN_LAT ) ? '1 : '0;
  localparam bit STD_OUT_REG = ( LATENCY >= STD_OUT_LAT ) ? '1 : '0;
  localparam bit STD_DDS_REG = ( LATENCY >= STD_DDS_LAT ) ? '1 : '0;

  localparam bit RTD_DDS_REG = ( LATENCY >= RTD_DDS_LAT ) ? '1 : '0;

  localparam bit TLR_LUT_REG = ( LATENCY >= TLR_LUT_LAT ) ? '1 : '0;
  localparam bit TLR_OUT_REG = ( LATENCY >= TLR_OUT_LAT ) ? '1 : '0;
  localparam bit TLR_DSP_REG = ( LATENCY >= TLR_DSP_LAT ) ? '1 : '0;
  localparam bit TLR_MLT_REG = ( LATENCY >= TLR_MLT_LAT ) ? '1 : '0;
  localparam bit TLR_DDS_REG = ( LATENCY >= TLR_DDS_LAT ) ? '1 : '0;

  localparam int N = ( OSC_DATA == "CosSin" || OSC_DATA == "SinCos" ) ? 2 : 1;
  localparam int ADR_WIDTH = ( MODE == "Taylor" ) ? PHA_WIDTH+9 : ( MODE == "Standard" ) ? N*PHA_WIDTH : PHA_WIDTH;
  localparam int LUT_WIDTH = ( MODE == "Taylor" ) ? 2*DAT_WIDTH+PHA_WIDTH-11 : ( MODE == "Standard" ) ? N*(DAT_WIDTH+1) : N*DAT_WIDTH;

  // Check Parameters
  initial begin : check_param
    if ( !(NUM_CHANNELS inside {[1:256]}) )
      $error("[%s %0d-%0d] The Number of Channels (%0d) Must Be Between 1 and 256. %m", "DDS", 1, 1, NUM_CHANNELS);
    if ( !(MODE inside {"Standard", "Rasterized", "Taylor"}) )
      $error("[%s %0d-%0d] Unknown DDS Mode Parameter - %s. DDS Mode Parameter Must Be \"Standard\", \"Rasterized\", or \"Taylor\". %m", "DDS", 1, 2, MODE);
    if ( !(OFFSET inside {"None", "Fixed", "Programmable", "Streaming"}) )
      $error("[%s %0d-%0d] Unknown Phase Offset Parameter - %s. Phase Offset Parameter Must Be \"None\", \"Fixed\", \"Programmable\" or \"Streaming\". %m", "DDS", 1, 3, OFFSET);
    if ( !(INCREMENT inside {"Fixed", "Programmable", "Streaming"}) )
      $error("[%s %0d-%0d] Unknown Phase Increment Parameter - %s. Phase Increment Parameter Must Be \"Fixed\", \"Programmable\" or \"Streaming\". %m", "DDS", 1, 4, INCREMENT);
    if ( !(MEMORY_TYPE inside {"Block", "Distributed"}) )
      $error("[%s %0d-%0d] Memory Type of \"%s\" is Incorrect, Must Be \"Block\" or \"Distributed\". %m", "DDS", 1, 5, MEMORY_TYPE);
    if ( !(DDS_CONFIG inside {"PhaseLUT", "Phase", "LUT"}) )
      $error("[%s %0d-%0d] Unknown DDS Configuration Parameter - %s. DDS Configuration Parameter Must Be \"PhaseLUT\", \"Phase\" or \"LUT\". %m", "DDS", 1, 6, DDS_CONFIG);
    if ( !(OSC_DATA inside {"CosSin", "SinCos", "Cos", "Sin"}) )
      $error("[%s %0d-%0d] Unknown Output LUT Data Parameter - %s. Output LUT Data Parameter Must Be \"CosSin\", \"SinCos\", \"Cos\" or \"Sin\". %m", "DDS", 1, 7, OSC_DATA);
    
    if ( (MODE == "Standard" || MODE == "Rasterized") && !(DAT_WIDTH inside {[3:32]}) )
      $error("[%s %0d-%0d] Output Width (%0d) for Standard and Rasterized Mode is Out of Range - [3:32]. %m", "DDS", 2, 1, DAT_WIDTH);
    if ( MODE == "Taylor" && !(DAT_WIDTH inside {[12:21]}) )
      $error("[%s %0d-%0d] Output Width (%0d) for Taylor Mode is Out of Range - [12:21]. %m", "DDS", 2, 2, DAT_WIDTH);
    if ( MODE == "Rasterized" && !(MODULUS inside {[9:16384]}) )
      $error("[%s %0d-%0d] Modulus Parameter (%0d) in Rasterized Mode is Out of Range - [9:16384]. %m", "DDS", 2, 3, MODULUS);
    if ( MODE == "Standard" && !(PHA_WIDTH inside {[3:16]}) ) 
      $error("[%s %0d-%0d] Phase Width Parameter (%0d) in Standard Mode is Out of Range - [3:16]. %m", "DDS", 2, 4, PHA_WIDTH);
    if ( MODE == "Rasterized" && PHA_WIDTH != $clog2(MODULUS) ) 
      $error("[%s %0d-%0d] Phase Width Parameter (%0d) in Rasterized Mode Must Be Equal - %0d. %m", "DDS", 2, 5, PHA_WIDTH, $clog2(MODULUS));
    if ( MODE == "Taylor" && !(PHA_WIDTH inside {[12:32]}) ) 
      $error("[%s %0d-%0d] Phase Width Parameter (%0d) in Taylor Mode is Out of Range - [12:32]. %m", "DDS", 2, 6, PHA_WIDTH);
    if ( MODE == "Standard" && !(LATENCY inside {[1:9]}) ) 
      $error("[%s %0d-%0d] Latency Parameter (%0d) in Standard Mode is Out of Range - [1:9]. %m", "DDS", 2, 7, LATENCY);
    if ( MODE == "Rasterized" && !(LATENCY inside {[1:6]}) ) 
      $error("[%s %0d-%0d] Latency Parameter (%0d) in Rasterized Mode is Out of Range - [1:6]. %m", "DDS", 2, 8, LATENCY);
    if ( MODE == "Taylor" && !(LATENCY inside {[1:10]}) ) 
      $error("[%s %0d-%0d] Latency Parameter (%0d) in Taylor Mode is Out of Range - [1:10]. %m", "DDS", 2, 9, LATENCY);
  end : check_param

  wire m_acc_s_rst_p;
  wire m_acc_pha_vld;
  wire [PHA_WIDTH-1:0] m_acc_pha_dat;
  wire [CHN_WIDTH-1:0] m_acc_pha_chn;

  dds_phase_accumulator #(
      .OFFSET ( OFFSET ),
      .INCREMENT ( INCREMENT ),
      .MODE ( MODE ),
      .MODULUS ( MODULUS ),
      .PHA_WIDTH ( PHA_WIDTH ),
      .NUM_CHANNELS ( NUM_CHANNELS ),
      .OUTPUT_REG ( ACC_OUT_REG ),
      .FIX_OFFSET ( FIX_OFFSET ),
      .FIX_INCREMENT ( FIX_INCREMENT ),
      .CHN_WIDTH ( CHN_WIDTH ),
      .STM_WIDTH ( STM_WIDTH ),
      .CFG_WIDTH ( CFG_WIDTH )
    ) u_dds_phase_accumulator (
      .i_acc_s_ena_p ( i_dds_s_ena_p ),
      .i_acc_a_clk_p ( i_dds_a_clk_p ),
      .i_acc_s_rst_p ( i_dds_s_rst_p ),

      .i_acc_stm_vld ( i_dds_stm_vld ),
      .o_acc_stm_rdy ( o_dds_stm_rdy ),
      .i_acc_stm_dat ( i_dds_stm_dat ),
      .i_acc_stm_syn ( i_dds_stm_syn ),

      .i_acc_cfg_vld ( i_dds_cfg_vld ),
      .i_acc_cfg_dat ( i_dds_cfg_dat ),
      .i_acc_cfg_chn ( i_dds_cfg_chn ),

      .o_acc_s_rst_p ( m_acc_s_rst_p ),

      .o_acc_pha_vld ( m_acc_pha_vld ),
      .o_acc_pha_dat ( m_acc_pha_dat ),
      .o_acc_pha_chn ( m_acc_pha_chn )
    );

  wire m_cnv_s_rst_p;
  wire m_cnv_pha_vld;
  wire [ADR_WIDTH-1:0] m_cnv_pha_dat;

  dds_phase_converter #(
      .MODE ( MODE ),
      .OSC_DATA ( OSC_DATA ),
      .PHA_WIDTH ( PHA_WIDTH ),
      .NEGATIVE_SIN ( NEGATIVE_SIN ),
      .NEGATIVE_COS ( NEGATIVE_COS ),
      .OUTPUT_REG ( CNV_OUT_REG ),
      .N ( N ),
      .ADR_WIDTH ( ADR_WIDTH )
    ) u_dds_phase_converter (
      .i_cnv_a_clk_p ( i_dds_a_clk_p ),
      .i_cnv_s_rst_n ( m_acc_s_rst_p ),

      .i_cnv_pha_vld ( m_acc_pha_vld ),
      .i_cnv_pha_dat ( m_acc_pha_dat ),

      .o_cnv_s_rst_p ( m_cnv_s_rst_p ),

      .o_cnv_pha_vld ( m_cnv_pha_vld ),
      .o_cnv_pha_dat ( m_cnv_pha_dat )
    );

  wire m_lut_osc_vld;
  wire [LUT_WIDTH-1:0] m_lut_osc_dat;

  dds_lut #(
      .MODE ( MODE ),
      .OSC_DATA ( OSC_DATA ),
      .MEMORY_TYPE ( MEMORY_TYPE ),
      .LUT_FILE ( LUT_FILE ),
      .MODULUS ( MODULUS ),
      .PHA_WIDTH ( PHA_WIDTH ),
      .DAT_WIDTH ( DAT_WIDTH ),
      .NEGATIVE_SIN ( NEGATIVE_SIN ),
      .NEGATIVE_COS ( NEGATIVE_COS ),
      .SINGLE_REG ( LUT_ONE_REG ),
      .DOUBLE_REG ( LUT_TWO_REG ),
      .N ( N ),
      .ADR_WIDTH ( ADR_WIDTH ),
      .LUT_WIDTH ( LUT_WIDTH )
    ) u_dds_lut (
      .i_lut_s_rst_p ( m_cnv_s_rst_p ),
      .i_lut_a_clk_p ( i_dds_a_clk_p ),

      .i_lut_pha_vld ( m_cnv_pha_vld ),
      .i_lut_pha_dat ( m_cnv_pha_dat ),

      .o_lut_osc_vld ( m_lut_osc_vld ),
      .o_lut_osc_dat ( m_lut_osc_dat )
    );

  if ( MODE == "Standard" ) begin : std

    wire m_std_dat_vld;
    wire [OSC_WIDTH-1:0] m_std_dat_osc; 

    dds_standard #(
        .OSC_DATA ( OSC_DATA ),
        .DAT_WIDTH ( DAT_WIDTH ),
        .REGISTERS ( { STD_LUT_REG, STD_SGN_REG, STD_OUT_REG } ),
        .LUT_WIDTH ( LUT_WIDTH ),
        .OSC_WIDTH ( OSC_WIDTH )
      ) u_dds_standard (
        .i_std_a_clk_p ( i_dds_a_clk_p ),

        .i_std_dat_vld ( m_lut_osc_vld ),
        .i_std_dat_lut ( m_lut_osc_dat ),

        .o_std_dat_vld ( m_std_dat_vld ),
        .o_std_dat_osc ( m_std_dat_osc )
      );

    if ( STD_DDS_REG ) begin : with_reg
      
      logic q_std_dat_vld = '0;
      logic [OSC_WIDTH-1:0] q_std_dat_osc = '0;
      always @(posedge i_dds_a_clk_p) begin
        q_std_dat_vld <= m_std_dat_vld;
        q_std_dat_osc <= m_std_dat_osc;
      end

      assign o_dds_dat_vld = m_std_dat_osc;
      assign o_dds_dat_osc = q_std_dat_osc;
    
    end : with_reg else begin : wout_reg

      assign o_dds_dat_vld = m_std_dat_vld;
      assign o_dds_dat_osc = m_std_dat_osc;

    end : wout_reg

  end : std else if ( MODE == "Rasterized" ) begin : rtd

    if ( RTD_DDS_REG ) begin : with_reg

      logic q_rtd_osc_vld = '0;
      logic [OSC_WIDTH-1:0] q_rtd_osc_dat = '0;
      always @(posedge i_dds_a_clk_p) begin
        q_rtd_osc_vld <= m_lut_osc_vld;
        q_rtd_osc_dat <= m_lut_osc_dat;
      end

      assign o_dds_dat_vld = q_rtd_osc_vld;
      assign o_dds_dat_osc = q_rtd_osc_dat;
    
    end : with_reg else begin : wout_reg

      assign o_dds_dat_vld = m_lut_osc_vld;
      assign o_dds_dat_osc = m_lut_osc_dat;

    end : wout_reg

  end : rtd else if ( MODE == "Taylor" ) begin : tlr
    
    wire m_tlr_osc_vld;
    wire [OSC_WIDTH-1:0] m_tlr_osc_dat;

    dds_taylor #(
        .OSC_DATA ( OSC_DATA ),
        .PHA_WIDTH ( PHA_WIDTH ),
        .DAT_WIDTH ( DAT_WIDTH ),
        .NEGATIVE_SIN ( NEGATIVE_SIN ),
        .NEGATIVE_COS ( NEGATIVE_COS ),
        .REGISTERS ( { LUT_ONE_REG, LUT_TWO_REG, TLR_LUT_REG, TLR_DSP_REG, TLR_MLT_REG, TLR_OUT_REG } ),
        .LUT_WIDTH ( LUT_WIDTH ),
        .OSC_WIDTH ( OSC_WIDTH )
      ) u_dds_taylor (
        .i_tlr_a_clk_p ( i_dds_a_clk_p ),

        .i_tlr_dat_vld ( m_lut_osc_vld ),
        .i_tlr_dat_lut ( m_lut_osc_dat ),

        .o_tlr_osc_vld ( m_tlr_osc_vld ),
        .o_tlr_osc_dat ( m_tlr_osc_dat )
      );

    if ( TLR_DDS_REG ) begin : with_reg
      
      logic q_tlr_osc_vld = '0;
      logic [OSC_WIDTH-1:0] q_tlr_osc_dat = '0;
      always @(posedge i_dds_a_clk_p) begin
        q_tlr_osc_vld <= m_tlr_osc_vld;
        q_tlr_osc_dat <= m_tlr_osc_dat;
      end

      assign o_dds_dat_vld = q_tlr_osc_vld;
      assign o_dds_dat_osc = q_tlr_osc_dat;
    
    end : with_reg else begin : wout_reg

      assign o_dds_dat_vld = m_tlr_osc_vld;
      assign o_dds_dat_osc = m_tlr_osc_dat;

    end : wout_reg

  end : tlr

  if ( LATENCY > 1 ) begin : pha_with_delay

    wire [PHA_WIDTH-1:0] w_acc_pha_dat;
    if ( ACC_OUT_REG ) begin : pha_with_reg

      assign w_acc_pha_dat = m_acc_pha_dat;

    end : pha_with_reg else begin : pha_wou_reg

      logic [PHA_WIDTH-1:0] q_acc_pha_dat = '0;
      always @(posedge i_dds_a_clk_p)
        if ( m_acc_pha_vld )
          q_acc_pha_dat <= m_acc_pha_dat;

      assign w_acc_pha_dat = q_acc_pha_dat;

    end : pha_wou_reg

    dds_delay #(
        .WIDTH ( PHA_WIDTH ),
        .DELAY ( LATENCY-2 ),
        .SHREG ( "Yes" ),
        .STYLE ( "SRL_REG" ),
        .RESET ( 0 )
      ) u_pha_delay (
        .i_dly_s_rst_p ( '0 ),
        .i_dly_a_clk_p ( i_dds_a_clk_p ),
        .i_dly_s_ena_p ( '1 ),
        .i_dly_a_value ( w_acc_pha_dat ),
        .o_dly_a_value ( o_dds_dat_pha )
      );

  end : pha_with_delay else begin : pha_wout_delay

    assign o_dds_dat_pha = m_acc_pha_dat;

  end : pha_wout_delay

  if ( NUM_CHANNELS == 1 ) begin : no_chan

    assign o_dds_dat_chn = m_acc_pha_chn;
  
  end : no_chan else begin : chan_on

    wire [CHN_WIDTH-1:0] w_acc_pha_chn;
    if ( LATENCY > 1 ) begin : chn_with_delay
      
      if ( ACC_OUT_REG ) begin : chn_with_reg

        assign w_acc_pha_chn = m_acc_pha_chn;

      end : chn_with_reg  else begin : chn_wout_reg

        logic [CHN_WIDTH-1:0] q_acc_pha_chn = '0;
        always @(posedge i_dds_a_clk_p)
          if ( m_acc_pha_vld )
            q_acc_pha_chn <= m_acc_pha_chn;

        assign w_acc_pha_chn = q_acc_pha_chn;

      end : chn_wout_reg
    
      dds_delay #(
          .WIDTH ( CHN_WIDTH ),
          .DELAY ( LATENCY-2 ),
          .SHREG ( "Yes" ),
          .STYLE ( "SRL_REG" ),
          .RESET ( 0 )
        ) u_chn_delay (
          .i_dly_s_rst_p ( '0 ),
          .i_dly_a_clk_p ( i_dds_a_clk_p ),
          .i_dly_s_ena_p ( '1 ),
          .i_dly_a_value ( w_acc_pha_chn ),
          .o_dly_a_value ( o_dds_dat_chn )
        );

    end : chn_with_delay  else begin : chn_wout_delay

      assign o_dds_dat_chn = m_acc_pha_chn;

    end : chn_wout_delay
    
  end : chan_on

  if ( USR_WIDTH == 0 ) begin : no_user

    assign o_dds_dat_usr = i_dds_dat_usr;
  
  end : no_user else begin : user_on
  
    dds_delay #(
        .WIDTH ( USR_WIDTH ),
        .DELAY ( LATENCY ),
        .SHREG ( "Yes" ),
        .STYLE ( "SRL_REG" ),
        .RESET ( 0 )
      ) u_usr_delay (
        .i_dly_s_rst_p ( '0 ),
        .i_dly_a_clk_p ( i_dds_a_clk_p ),
        .i_dly_s_ena_p ( '1 ),
        .i_dly_a_value ( i_dds_dat_usr ),
        .o_dly_a_value ( o_dds_dat_usr )
      );

  end : user_on

endmodule : dds

(* KEEP_HIERARCHY = "YES" *)
module dds_phase_accumulator #(
    parameter     OFFSET = "Programmable", // Phase Offset: "None", "Fixed", "Programmable" or "Streaming"
    parameter     INCREMENT = "Programmable", // Phase Increment: "Fixed", "Programmable" or "Streaming"
    parameter     MODE = "Standard", // DDS Table Mode: "Standard", "Rasterized" or "Taylor"
    parameter int MODULUS = 25, // Specify the Modulus of the Rasterized Mode from 9 To 16384
    parameter int PHA_WIDTH = 12, // Phase Width in Bits, Max is 32. Do Not Use in Rasterized Mode.
    parameter int NUM_CHANNELS = 1, // Number of Channels from 1 To 256
    parameter bit OUTPUT_REG = '0, // Register Output
    parameter int FIX_OFFSET [NUM_CHANNELS] = '{default:0}, // Phase Offset in Default State or "Fixed" Mode
    parameter int FIX_INCREMENT [NUM_CHANNELS] = '{default:0}, // Phase Increment in Default State or "Fixed" Mode
    parameter int CHN_WIDTH = $clog2(NUM_CHANNELS), // Channel Width if Multi-Channel Configuration is Used
    parameter int STM_WIDTH = ( INCREMENT == "Streaming" && OFFSET == "Streaming" ) ? 2*PHA_WIDTH : ( INCREMENT == "Streaming" || OFFSET == "Streaming" ) ? PHA_WIDTH : 0, // Phase Stream Width if Streaming
    parameter int CFG_WIDTH = ( INCREMENT == "Programmable" && OFFSET == "Programmable" ) ? 2*PHA_WIDTH : ( INCREMENT == "Programmable" || OFFSET == "Programmable" ) ? PHA_WIDTH : 0 // Phase Config Width if Programmable
  )  (
    input   wire                  i_acc_s_ena_p, // Synchronous Enbale, In Streaming Mode is Clock Enable, In Non-Streqming Mode Only for Managment Frequency Sampling Rate
    input   wire                  i_acc_a_clk_p, // Rising Edge Clock
    input   wire                  i_acc_s_rst_p, // Synchronous Reset, In Non-Streaming Mode Use to Reset Phase Accumulator

    input   wire                  i_acc_stm_vld, // Valid for Streaming Mode
    output  wire                  o_acc_stm_rdy, // Ready for Streaming Mode
    input   wire  [STM_WIDTH-1:0] i_acc_stm_dat, // Streaming Mode Data
    input   wire                  i_acc_stm_syn, // Resync - Reset Phase Accumulator, Only for Phase Increment Streaming Mode

    input   wire                  i_acc_cfg_vld, // Valid for Configuration Mode
    input   wire  [CFG_WIDTH-1:0] i_acc_cfg_dat, // Configuration Mode Data
    input   wire  [CHN_WIDTH-1:0] i_acc_cfg_chn, // Configuration Mode Channel in Multi-Channel Mode

    output  wire                  o_acc_s_rst_p, // Output Synchronous Reset for LUT

    output  wire                  o_acc_pha_vld, // Ouput Phase Valid
    output  wire  [PHA_WIDTH-1:0] o_acc_pha_dat, // Output Phase Data
    output  wire  [CHN_WIDTH-1:0] o_acc_pha_chn // Output Phase Channel In Multi-Channel Mode
  );

  // Stream and config bus ranges
  `define STM_OFS_RANGE $high(i_acc_stm_dat):$size(i_acc_stm_dat)-PHA_WIDTH
  `define STM_INC_RANGE PHA_WIDTH-1:0
  `define CFG_OFS_RANGE $high(i_acc_cfg_dat):$size(i_acc_cfg_dat)-PHA_WIDTH
  `define CFG_INC_RANGE PHA_WIDTH-1:0

  typedef logic [PHA_WIDTH-1:0] t_pha;

  // Capture & Inverse Input Reset
  logic q_acc_s_rst_p = '1;
  always @(posedge i_acc_a_clk_p)
    q_acc_s_rst_p <= i_acc_s_rst_p;

  wire w_acc_s_rst_p;

  if ( OFFSET == "Streaming" || INCREMENT == "Streaming" ) begin : rst_stream

    logic q_stm_s_rst_p = '0;
    always @(posedge i_acc_a_clk_p)
      q_stm_s_rst_p <= q_acc_s_rst_p;

    assign w_acc_s_rst_p = q_stm_s_rst_p;

  end : rst_stream else begin : rst_config

    assign w_acc_s_rst_p = q_acc_s_rst_p && i_acc_s_rst_p;

  end : rst_config

  if ( OUTPUT_REG ) begin : rst_with_reg
    
    logic q_out_s_rst_p = '0;
    always @(posedge i_acc_a_clk_p)
      q_out_s_rst_p <= w_acc_s_rst_p;

    assign o_acc_s_rst_p = q_out_s_rst_p;
  
  end : rst_with_reg else begin : rst_wout_reg

    assign o_acc_s_rst_p = w_acc_s_rst_p;
  
  end : rst_wout_reg

  if ( NUM_CHANNELS == 1 ) begin : one_chan

    // Capture Offset & Increment Parameters
    wire t_pha w_cap_ofs_dat;
    if ( OFFSET == "Streaming" ) begin : ofs_stm

      assign w_cap_ofs_dat = i_acc_stm_dat[`STM_OFS_RANGE];
      
    end : ofs_stm else if ( OFFSET == "Programmable" ) begin : ofs_prg

      t_pha q_cap_ofs_dat = FIX_OFFSET[0];
      always @(posedge i_acc_a_clk_p)
        if ( i_acc_cfg_vld )
          q_cap_ofs_dat <= i_acc_cfg_dat[`CFG_OFS_RANGE];

      assign w_cap_ofs_dat = q_cap_ofs_dat;

    end : ofs_prg else begin : ofs_fix

      assign w_cap_ofs_dat = ( OFFSET == "Fixed" ) ? FIX_OFFSET[0] : '0;

    end : ofs_fix

    wire t_pha w_cap_inc_dat;
    if ( INCREMENT == "Streaming" ) begin : inc_stm

      assign w_cap_inc_dat = i_acc_stm_dat[`STM_INC_RANGE];
      
    end : inc_stm else if ( INCREMENT == "Programmable" ) begin : inc_prg
      
      t_pha q_cap_inc_dat = FIX_INCREMENT[0];
      always @(posedge i_acc_a_clk_p)
        if ( i_acc_cfg_vld )
          q_cap_inc_dat <= i_acc_cfg_dat[`CFG_INC_RANGE];

      wire t_pha w_syn_inc_dat;
      if ( OFFSET == "Streaming" ) begin : ofs_stm

        assign w_syn_inc_dat = q_cap_inc_dat;

      end : ofs_stm else begin : ofs_any

        t_pha q_syn_inc_dat = FIX_INCREMENT[0];
        always @(posedge i_acc_a_clk_p)
          if ( q_acc_s_rst_p )
            q_syn_inc_dat <= q_cap_inc_dat;

        assign w_syn_inc_dat = q_syn_inc_dat;

      end : ofs_any

      assign w_cap_inc_dat = w_syn_inc_dat;

    end : inc_prg else begin : inc_fix

      assign w_cap_inc_dat = FIX_INCREMENT[0];

    end : inc_fix
      
    // Accumulate Phase
    logic q_acc_pha_vld = '0;
    t_pha q_acc_pha_inc = ( OFFSET == "None" || OFFSET == "Streaming" ) ? '0 : FIX_OFFSET[0];

    if ( OFFSET == "Streaming" || INCREMENT == "Streaming" ) begin : acc_stream

      // Ready for Streaming Data
      logic q_acc_stm_rdy = '0;
      always @(posedge i_acc_a_clk_p)
        if ( i_acc_s_rst_p )
          q_acc_stm_rdy <= '0;
        else
          q_acc_stm_rdy <= '1;

      assign o_acc_stm_rdy = q_acc_stm_rdy;

      wire w_acc_stm_syn;
      if ( INCREMENT == "Streaming" ) begin : inc_stream
          
        assign w_acc_stm_syn = i_acc_stm_syn;

      end : inc_stream else begin : inc_config

        assign w_acc_stm_syn = '0;

      end : inc_config

      always @(posedge i_acc_a_clk_p)
        if ( q_acc_s_rst_p )
          q_acc_pha_vld <= '0;
        else if ( i_acc_s_ena_p && i_acc_stm_vld )
          q_acc_pha_vld <= '1;
        else
          q_acc_pha_vld <= '0;

      if ( MODE == "Standard" || MODE == "Taylor" ) begin : std

        always @(posedge i_acc_a_clk_p)
          if ( q_acc_s_rst_p )
            q_acc_pha_inc <= '0;
          else if ( i_acc_s_ena_p && i_acc_stm_vld && w_acc_stm_syn )
            q_acc_pha_inc <= w_cap_inc_dat;
          else if ( i_acc_s_ena_p && i_acc_stm_vld )
            q_acc_pha_inc <= q_acc_pha_inc + w_cap_inc_dat;

      end : std else if ( MODE == "Rasterized" ) begin : rtd

        always @(posedge i_acc_a_clk_p)
          if ( q_acc_s_rst_p )
            q_acc_pha_inc <= '0;
          else if ( i_acc_s_ena_p && i_acc_stm_vld && w_acc_stm_syn )
            q_acc_pha_inc <= w_cap_inc_dat;
          else if ( i_acc_s_ena_p && i_acc_stm_vld && ( q_acc_pha_inc + w_cap_inc_dat < MODULUS ) )
            q_acc_pha_inc <= q_acc_pha_inc + w_cap_inc_dat;
          else if ( i_acc_s_ena_p && i_acc_stm_vld )
            q_acc_pha_inc <= q_acc_pha_inc + w_cap_inc_dat - MODULUS;

      end : rtd

      // Output Phase
      t_pha q_dly_stm_ofs = '0;
      always @(posedge i_acc_a_clk_p)
        if ( i_acc_s_ena_p && i_acc_stm_vld )
          q_dly_stm_ofs <= w_cap_ofs_dat;

      if ( OUTPUT_REG ) begin : out_with_reg

        logic q_out_pha_vld = '0;
        always @(posedge i_acc_a_clk_p)
          q_out_pha_vld <= q_acc_pha_vld;

        t_pha q_out_pha_dat = '0;
        if ( MODE == "Standard" || MODE == "Taylor" ) begin : std

          always @(posedge i_acc_a_clk_p)
            if ( q_acc_pha_vld )
              q_out_pha_dat <= q_acc_pha_inc + q_dly_stm_ofs;

        end : std else begin : rtd

          always @(posedge i_acc_a_clk_p)
            if ( q_acc_pha_vld && q_acc_pha_inc + q_dly_stm_ofs < MODULUS )
              q_out_pha_dat <= q_acc_pha_inc + q_dly_stm_ofs;
            else if ( q_acc_pha_vld )
              q_out_pha_dat <= q_acc_pha_inc + q_dly_stm_ofs - MODULUS;

        end : rtd

        assign o_acc_pha_vld = q_out_pha_vld;
        assign o_acc_pha_dat = q_out_pha_dat;

      end : out_with_reg else begin : out_wout_reg

        assign o_acc_pha_vld = q_acc_pha_vld;

        if ( MODE == "Standard" || MODE == "Taylor" ) begin : std

          assign o_acc_pha_dat = q_acc_pha_inc + q_dly_stm_ofs;

        end : std else begin : rtd

          assign o_acc_pha_dat = ( q_acc_pha_inc + q_dly_stm_ofs < MODULUS ) ? q_acc_pha_inc + q_dly_stm_ofs : q_acc_pha_inc + q_dly_stm_ofs - MODULUS;

        end : rtd

      end : out_wout_reg
      
    end : acc_stream else begin : acc_config

      always @(posedge i_acc_a_clk_p)
        if ( w_acc_s_rst_p )
          q_acc_pha_vld <= '0;
        else if ( i_acc_s_ena_p )
          q_acc_pha_vld <= '1;
        else
          q_acc_pha_vld <= '0;

      if ( MODE == "Standard" || MODE == "Taylor" ) begin : std

        always @(posedge i_acc_a_clk_p)
          if ( q_acc_s_rst_p )
            q_acc_pha_inc <= w_cap_ofs_dat;
          else if ( q_acc_pha_vld )
            q_acc_pha_inc <= q_acc_pha_inc + w_cap_inc_dat;

      end : std else if ( MODE == "Rasterized" ) begin : rtd

        always @(posedge i_acc_a_clk_p)
          if ( q_acc_s_rst_p )
            q_acc_pha_inc <= w_cap_ofs_dat;
          else if ( q_acc_pha_vld && ( q_acc_pha_inc + w_cap_inc_dat < MODULUS ) )
            q_acc_pha_inc <= q_acc_pha_inc + w_cap_inc_dat;
          else if ( q_acc_pha_vld )
            q_acc_pha_inc <= q_acc_pha_inc + w_cap_inc_dat - MODULUS;

      end : rtd

      // Output Phase
      if ( OUTPUT_REG ) begin : out_with_reg

        logic q_out_pha_vld = '0;
        t_pha q_out_pha_dat = '0;
        always @(posedge i_acc_a_clk_p) begin
          q_out_pha_vld <= q_acc_pha_vld;
          if ( q_acc_pha_vld )
            q_out_pha_dat <= q_acc_pha_inc;
        end

        assign o_acc_pha_vld = q_out_pha_vld;
        assign o_acc_pha_dat = q_out_pha_dat;

      end : out_with_reg else begin : out_wout_reg

        assign o_acc_pha_vld = q_acc_pha_vld;
        assign o_acc_pha_dat = q_acc_pha_inc;

      end : out_wout_reg

      assign o_acc_stm_rdy = '0;

    end : acc_config

    assign o_acc_pha_chn = '0;

  end : one_chan else begin : multi_chan

    typedef logic [CHN_WIDTH-1:0] t_chn;

    localparam MEM_STYLE = ( NUM_CHANNELS == 2 ) ? "Registers" : "Distributed";

    (* RAM_STYLE = MEM_STYLE *) t_pha r_acc_pha_mem [NUM_CHANNELS] = '{default:'0};
    
    // Capture Offset & Increment Parameters
    wire t_pha w_cap_ofs_dat [NUM_CHANNELS];
    if ( OFFSET == "Programmable" ) begin : ofs_prg

      t_pha q_cap_ofs_dat [NUM_CHANNELS];
      initial
        for ( int i = 0; i < NUM_CHANNELS; i++ )
          q_cap_ofs_dat[i] = FIX_OFFSET[i];
          
      always @(posedge i_acc_a_clk_p)
        if ( i_acc_cfg_vld )
          q_cap_ofs_dat[i_acc_cfg_chn] <= i_acc_cfg_dat[`CFG_OFS_RANGE];

      assign w_cap_ofs_dat = q_cap_ofs_dat;

    end : ofs_prg else begin : ofs_fix

      for ( genvar i = 0; i < NUM_CHANNELS; i++ ) begin : ofs_gen
        assign w_cap_ofs_dat[i] = ( OFFSET == "Fixed" ) ? FIX_OFFSET[i] : '0;
      end

    end : ofs_fix

    wire t_pha w_cap_inc_dat [NUM_CHANNELS];
    if ( INCREMENT == "Programmable" ) begin : inc_prg
      
      t_pha q_cap_inc_dat [NUM_CHANNELS];
      initial
        for ( int i = 0; i < NUM_CHANNELS; i++ )
          q_cap_inc_dat[i] = FIX_INCREMENT[i];

      always @(posedge i_acc_a_clk_p)
        if ( i_acc_cfg_vld )
          q_cap_inc_dat[i_acc_cfg_chn] <= i_acc_cfg_dat[`CFG_INC_RANGE];

      t_pha q_syn_inc_dat [NUM_CHANNELS];
      initial
        for ( int i = 0; i < NUM_CHANNELS; i++ )
          q_syn_inc_dat[i] = FIX_INCREMENT[i];

      always @(posedge i_acc_a_clk_p)
        if ( q_acc_s_rst_p )
          q_syn_inc_dat <= q_cap_inc_dat;

      assign w_cap_inc_dat = q_syn_inc_dat;

    end : inc_prg else begin : inc_fix

      for ( genvar i = 0; i < NUM_CHANNELS; i++ ) begin : inc_gen
        assign w_cap_inc_dat[i] = FIX_INCREMENT[i];
      end

    end : inc_fix

    // Accumulate Phase
    logic q_acc_pha_vld = '0;
    t_pha q_acc_pha_inc = '0;

    if ( OFFSET == "Streaming" || INCREMENT == "Streaming" ) begin : acc_stream

      // Ready for Streaming Data
      logic q_acc_stm_rdy = '0;
      always @(posedge i_acc_a_clk_p)
        if ( i_acc_s_rst_p )
          q_acc_stm_rdy <= '0;
        else
          q_acc_stm_rdy <= '1;

      assign o_acc_stm_rdy = q_acc_stm_rdy;

      wire w_acc_stm_syn;
      if ( INCREMENT == "Streaming" ) begin : inc_stream
          
        assign w_acc_stm_syn = i_acc_stm_syn;

      end : inc_stream else begin : inc_config

        assign w_acc_stm_syn = '0;

      end : inc_config

      always @(posedge i_acc_a_clk_p)
        if ( q_acc_s_rst_p )
          q_acc_pha_vld <= '0;
        else if ( i_acc_s_ena_p && i_acc_stm_vld )
          q_acc_pha_vld <= '1;
        else
          q_acc_pha_vld <= '0;
      
      t_chn q_mem_pha_chn = 1;
      always @(posedge i_acc_a_clk_p)
        if ( q_acc_s_rst_p )
          q_mem_pha_chn <= 1;
        else if ( i_acc_s_ena_p && i_acc_stm_vld )
          if ( q_mem_pha_chn == NUM_CHANNELS-1 )
            q_mem_pha_chn <= 0;
          else
            q_mem_pha_chn <= q_mem_pha_chn + 1;

      t_chn q_acc_pha_chn = '0;
      always @(posedge i_acc_a_clk_p)
        if ( q_acc_s_rst_p )
          q_acc_pha_chn <= '0;
        else if ( i_acc_s_ena_p && i_acc_stm_vld )
          q_acc_pha_chn <= q_mem_pha_chn;

      t_chn q_dly_pha_chn = '0;
      always @(posedge i_acc_a_clk_p)
        if ( i_acc_s_ena_p && i_acc_stm_vld )
          q_dly_pha_chn <= q_acc_pha_chn;

      always @(posedge i_acc_a_clk_p)
        if ( q_acc_pha_vld )
          r_acc_pha_mem[q_dly_pha_chn] <= q_acc_pha_inc;
      
      logic q_rst_pha_flg = '0;
      t_chn q_rst_pha_chn = '0;
      always @(posedge i_acc_a_clk_p) begin
        if ( q_acc_s_rst_p && !i_acc_s_rst_p )
          q_rst_pha_flg <= '1;
        else if ( i_acc_s_ena_p && i_acc_stm_vld && q_rst_pha_chn == NUM_CHANNELS-1 )
          q_rst_pha_flg <= '0;

        if ( q_acc_s_rst_p )
          q_rst_pha_chn <= '0;
        else if ( i_acc_s_ena_p && i_acc_stm_vld && q_rst_pha_chn == NUM_CHANNELS-1 )
          q_rst_pha_chn <= '0;
        else if ( i_acc_s_ena_p && i_acc_stm_vld && q_rst_pha_flg )
          q_rst_pha_chn <= q_rst_pha_chn + 1;
      end

      wire t_pha w_acc_pha_mem;

      if ( NUM_CHANNELS == 2 ) begin : mem_wout_reg

        assign w_acc_pha_mem = r_acc_pha_mem[q_acc_pha_chn];

      end : mem_wout_reg else begin : mem_with_reg

        t_pha q_acc_pha_mem = '0;
        always @(posedge i_acc_a_clk_p)
          if ( q_acc_s_rst_p )
            q_acc_pha_mem <= '0;
          else if ( i_acc_s_ena_p && i_acc_stm_vld )
            q_acc_pha_mem <= r_acc_pha_mem[q_mem_pha_chn];

        assign w_acc_pha_mem = q_acc_pha_mem;

      end : mem_with_reg

      if ( MODE == "Standard" || MODE == "Taylor" ) begin : std

        always @(posedge i_acc_a_clk_p)
          if ( q_acc_s_rst_p )
            q_acc_pha_inc <= '0;
          else if ( i_acc_s_ena_p && i_acc_stm_vld && ( w_acc_stm_syn || q_rst_pha_flg ) )
            q_acc_pha_inc <= i_acc_stm_dat[`STM_INC_RANGE];
          else if ( i_acc_s_ena_p && i_acc_stm_vld )
            q_acc_pha_inc <= w_acc_pha_mem + i_acc_stm_dat[`STM_INC_RANGE];

      end : std else if ( MODE == "Rasterized" ) begin : rtd

        always @(posedge i_acc_a_clk_p)
          if ( q_acc_s_rst_p )
            q_acc_pha_inc <= '0;
          else if ( i_acc_s_ena_p && i_acc_stm_vld && ( w_acc_stm_syn || q_rst_pha_flg ) )
            q_acc_pha_inc <= i_acc_stm_dat[`STM_INC_RANGE];
          else if ( i_acc_s_ena_p && i_acc_stm_vld && ( w_acc_pha_mem + i_acc_stm_dat[`STM_INC_RANGE] < MODULUS ) )
            q_acc_pha_inc <= w_acc_pha_mem + i_acc_stm_dat[`STM_INC_RANGE];
          else if ( i_acc_s_ena_p && i_acc_stm_vld )
            q_acc_pha_inc <= w_acc_pha_mem + i_acc_stm_dat[`STM_INC_RANGE] - MODULUS;

      end : rtd

      if ( OUTPUT_REG ) begin : out_with_reg

        logic q_out_pha_vld = '0;
        t_chn q_out_pha_chn = '0;
        always @(posedge i_acc_a_clk_p) begin
          q_out_pha_vld <= q_acc_pha_vld;
          if ( q_acc_pha_vld )
            q_out_pha_chn <= q_dly_pha_chn;
        end

        t_pha q_out_pha_dat = '0;
        if ( MODE == "Standard" || MODE == "Taylor" ) begin : out_std

          if ( OFFSET == "Streaming" ) begin : ofs_stream
      
            t_pha q_dly_stm_ofs = '0;
            always @(posedge i_acc_a_clk_p)
              if ( i_acc_s_ena_p && i_acc_stm_vld )
                q_dly_stm_ofs <= i_acc_stm_dat[`STM_OFS_RANGE];

            always @(posedge i_acc_a_clk_p)
              if ( q_acc_pha_vld )
                q_out_pha_dat <= q_acc_pha_inc + q_dly_stm_ofs;
          
          end : ofs_stream else begin : ofs_config

            always @(posedge i_acc_a_clk_p)
              if ( q_acc_pha_vld )
                q_out_pha_dat <= q_acc_pha_inc + w_cap_ofs_dat[q_dly_pha_chn];

          end : ofs_config

        end : out_std else begin : out_rtd

          if ( OFFSET == "Streaming" ) begin : ofs_stream
      
            t_pha q_dly_stm_ofs = '0;
            always @(posedge i_acc_a_clk_p)
              if ( i_acc_s_ena_p && i_acc_stm_vld )
                q_dly_stm_ofs <= i_acc_stm_dat[`STM_OFS_RANGE];

            always @(posedge i_acc_a_clk_p)
              if ( q_acc_pha_vld && q_acc_pha_inc + q_dly_stm_ofs < MODULUS )
                q_out_pha_dat <= q_acc_pha_inc + q_dly_stm_ofs;
              else if ( q_acc_pha_vld )
                q_out_pha_dat <= q_acc_pha_inc + q_dly_stm_ofs - MODULUS;

          end : ofs_stream else begin : ofs_config

            always @(posedge i_acc_a_clk_p)
              if ( q_acc_pha_vld && q_acc_pha_inc + w_cap_ofs_dat[q_dly_pha_chn] < MODULUS )
                q_out_pha_dat <= q_acc_pha_inc + w_cap_ofs_dat[q_dly_pha_chn];
              else if ( q_acc_pha_vld )
                q_out_pha_dat <= q_acc_pha_inc + w_cap_ofs_dat[q_dly_pha_chn] - MODULUS;

          end : ofs_config

        end : out_rtd

        assign o_acc_pha_vld = q_out_pha_vld;
        assign o_acc_pha_dat = q_out_pha_dat;
        assign o_acc_pha_chn = q_out_pha_chn;

      end : out_with_reg else begin : out_wout_reg

        assign o_acc_pha_vld = q_acc_pha_vld;
        assign o_acc_pha_chn = q_dly_pha_chn;

        if ( MODE == "Standard" || MODE == "Taylor" ) begin : out_std

          if ( OFFSET == "Streaming" ) begin : ofs_stream
      
            t_pha q_dly_stm_ofs = '0;
            always @(posedge i_acc_a_clk_p)
              if ( i_acc_s_ena_p && i_acc_stm_vld )
                q_dly_stm_ofs <= i_acc_stm_dat[`STM_OFS_RANGE];
              
            assign o_acc_pha_dat = q_acc_pha_inc + q_dly_stm_ofs;

          end : ofs_stream else begin : ofs_config

            assign o_acc_pha_dat = q_acc_pha_inc + w_cap_ofs_dat[q_dly_pha_chn];
          
          end : ofs_config

        end : out_std else begin : out_rtd

          if ( OFFSET == "Streaming" ) begin : ofs_stream

            t_pha q_dly_stm_ofs = '0;
            always @(posedge i_acc_a_clk_p)
              if ( i_acc_s_ena_p && i_acc_stm_vld )
                q_dly_stm_ofs <= i_acc_stm_dat[`STM_OFS_RANGE];

            assign o_acc_pha_dat = ( q_acc_pha_inc + q_dly_stm_ofs < MODULUS ) ? q_acc_pha_inc + q_dly_stm_ofs : q_acc_pha_inc + q_dly_stm_ofs - MODULUS;

          end : ofs_stream else begin : ofs_config

            assign o_acc_pha_dat = ( q_acc_pha_inc + w_cap_ofs_dat[q_dly_pha_chn] < MODULUS ) ? q_acc_pha_inc + w_cap_ofs_dat[q_dly_pha_chn] : q_acc_pha_inc + w_cap_ofs_dat[q_dly_pha_chn] - MODULUS;

          end : ofs_config

        end : out_rtd

      end : out_wout_reg

    end : acc_stream else begin : acc_config

      always @(posedge i_acc_a_clk_p)
        if ( q_acc_s_rst_p )
          q_acc_pha_vld <= '0;
        else if ( i_acc_s_ena_p && i_acc_stm_vld )
          q_acc_pha_vld <= '1;
        else
          q_acc_pha_vld <= '0;

      t_chn q_mem_pha_chn = 1;
      always @(posedge i_acc_a_clk_p)
        if ( q_acc_s_rst_p )
          q_mem_pha_chn <= 1;
        else if ( i_acc_s_ena_p && i_acc_stm_vld )
          if ( q_mem_pha_chn == NUM_CHANNELS-1 )
            q_mem_pha_chn <= 0;
          else
            q_mem_pha_chn <= q_mem_pha_chn + 1;

      t_chn q_acc_pha_chn = '0;
      always @(posedge i_acc_a_clk_p)
        if ( q_acc_s_rst_p )
          q_acc_pha_chn <= '0;
        else if ( i_acc_s_ena_p && i_acc_stm_vld )
          q_acc_pha_chn <= q_mem_pha_chn;

      t_chn q_dly_pha_chn = '0;
      always @(posedge i_acc_a_clk_p)
        if ( i_acc_s_ena_p && i_acc_stm_vld )
          q_dly_pha_chn <= q_acc_pha_chn;

      always @(posedge i_acc_a_clk_p)
        if ( q_acc_pha_vld )
          r_acc_pha_mem[q_dly_pha_chn] <= q_acc_pha_inc;
      
      logic q_rst_pha_flg = '0;
      t_chn q_rst_pha_chn = '0;
      always @(posedge i_acc_a_clk_p) begin
        if ( q_acc_s_rst_p && !i_acc_s_rst_p )
          q_rst_pha_flg <= '1;
        else if ( i_acc_s_ena_p && i_acc_stm_vld && q_rst_pha_chn == NUM_CHANNELS-1 )
          q_rst_pha_flg <= '0;

        if ( q_acc_s_rst_p )
          q_rst_pha_chn <= '0;
        else if ( i_acc_s_ena_p && i_acc_stm_vld && q_rst_pha_chn == NUM_CHANNELS-1 )
          q_rst_pha_chn <= '0;
        else if ( i_acc_s_ena_p && i_acc_stm_vld && q_rst_pha_flg )
          q_rst_pha_chn <= q_rst_pha_chn + 1;
      end

      wire t_pha w_acc_pha_mem;

      if ( NUM_CHANNELS == 2 ) begin : mem_wout_reg

        assign w_acc_pha_mem = r_acc_pha_mem[q_acc_pha_chn];

      end : mem_wout_reg else begin : mem_with_reg

        t_pha q_acc_pha_mem = '0;
        always @(posedge i_acc_a_clk_p)
          if ( q_acc_s_rst_p )
            q_acc_pha_mem <= '0;
          else if ( i_acc_s_ena_p && i_acc_stm_vld )
            q_acc_pha_mem <= r_acc_pha_mem[q_mem_pha_chn];

        assign w_acc_pha_mem = q_acc_pha_mem;

      end : mem_with_reg

      if ( MODE == "Standard" || MODE == "Taylor" ) begin : std

        always @(posedge i_acc_a_clk_p)
          if ( q_rst_pha_flg )
            q_acc_pha_inc <= w_cap_ofs_dat[q_rst_pha_chn];
          else if ( q_acc_pha_vld )
            q_acc_pha_inc <= w_acc_pha_mem + w_cap_inc_dat[q_acc_pha_chn];

      end : std else if ( MODE == "Rasterized" ) begin : rtd

        always @(posedge i_acc_a_clk_p)
          if ( q_rst_pha_flg )
            q_acc_pha_inc <= w_cap_ofs_dat[q_rst_pha_chn];
          else if ( q_acc_pha_vld && ( q_acc_pha_inc + w_cap_inc_dat[q_acc_pha_chn] < MODULUS ) )
            q_acc_pha_inc <= w_acc_pha_mem + w_cap_inc_dat[q_acc_pha_chn];
          else if ( q_acc_pha_vld )
            q_acc_pha_inc <= w_acc_pha_mem + w_cap_inc_dat[q_acc_pha_chn] - MODULUS;
        
      end : rtd

      if ( OUTPUT_REG ) begin : out_with_reg

        logic q_out_pha_vld = '0;
        t_pha q_out_pha_dat = '0;
        t_chn q_out_pha_chn = '0;
        always @(posedge i_acc_a_clk_p) begin
          q_out_pha_vld <= q_acc_pha_vld;
          if ( q_acc_pha_vld ) begin
            q_out_pha_dat <= q_acc_pha_inc;
            q_out_pha_chn <= q_dly_pha_chn;
          end
        end

        assign o_acc_pha_vld = q_out_pha_vld;
        assign o_acc_pha_dat = q_out_pha_dat;
        assign o_acc_pha_chn = q_out_pha_chn;

      end : out_with_reg else begin : out_wout_reg

        assign o_acc_pha_vld = q_acc_pha_vld;
        assign o_acc_pha_dat = q_acc_pha_inc;
        assign o_acc_pha_chn = q_dly_pha_chn;

      end : out_wout_reg

      assign o_acc_stm_rdy = '0;
    
    end : acc_config

  end

  `undef STM_INC_RANGE
  `undef CFG_INC_RANGE
  `undef STM_OFS_RANGE
  `undef CFG_OFS_RANGE

endmodule : dds_phase_accumulator

(* KEEP_HIERARCHY = "YES" *)
module dds_phase_converter #(
    parameter     MODE = "Standard", // DDS Table Mode: "Standard", "Rasterized" or "Taylor"
    parameter     OSC_DATA = "CosSin", // Output LUT Data "Cos" - Cos, "Sin" - Sin or "CosSin"/"SinCos" - Cos & Sin
    parameter int PHA_WIDTH = 12, // Phase Width in Bits, Max is 32.
    parameter bit NEGATIVE_SIN = '0, // Sine is Negative (1 - Negative)
    parameter bit NEGATIVE_COS = '0, // Cosine is Negative (1 - Negative)
    parameter bit OUTPUT_REG = '0, // Register Output
    parameter int N = ( OSC_DATA == "CosSin" || OSC_DATA == "SinCos" ) ? 2 : 1, // Coefficient for Phase Width in Standard Mode
    parameter int ADR_WIDTH = ( MODE == "Taylor" ) ? PHA_WIDTH+9 : ( MODE == "Standard" ) ? N*PHA_WIDTH : PHA_WIDTH // Phase Output Width After Conversion
  )  (
    input   wire                  i_cnv_a_clk_p, // Rising Edge Clock
    input   wire                  i_cnv_s_rst_n, // Synchronous Reset for LUT

    input   wire                  i_cnv_pha_vld, // Phase Valid
    input   wire  [PHA_WIDTH-1:0] i_cnv_pha_dat, // Phase Data

    output  wire                  o_cnv_s_rst_p, // Output Synchronous Reset for LUT
    output  wire                  o_cnv_pha_vld, // Output Phase Valid
    output  wire  [ADR_WIDTH-1:0] o_cnv_pha_dat // Output Phase Data
  );

  if ( OUTPUT_REG ) begin : rst_with_reg

    logic q_out_s_rst_p = '0;
    always @(posedge i_cnv_a_clk_p)
      q_out_s_rst_p <= i_cnv_s_rst_n;

    assign o_cnv_s_rst_p = q_out_s_rst_p;

  end : rst_with_reg else begin : rst_wout_reg

    assign o_cnv_s_rst_p = i_cnv_s_rst_n;

  end : rst_wout_reg

  if ( MODE == "Standard" ) begin : std

    localparam logic [PHA_WIDTH-1:0] ZERO_COS [2] = '{ 2**(PHA_WIDTH-2), 2**PHA_WIDTH-2**(PHA_WIDTH-2) };
    localparam logic [PHA_WIDTH-1:0] ZERO_SIN [2] = '{ 0, 2**(PHA_WIDTH-1) };

    typedef struct packed {
      logic sgn;
      logic nul;
      logic [PHA_WIDTH-3:0] pha;
    } t_pha;

    function t_pha f_cos(input logic [PHA_WIDTH-1:0] i_pha);
      f_cos.sgn = i_pha[PHA_WIDTH-1] ^ NEGATIVE_COS ^ i_pha[PHA_WIDTH-2];
      f_cos.nul = ( i_pha inside { ZERO_COS } ) ? '1 : '0;
      f_cos.pha = ( i_pha[PHA_WIDTH-2] == '0 ) ? i_pha[PHA_WIDTH-3:0] : ~ i_pha[PHA_WIDTH-3:0] + 1;
    endfunction : f_cos

    function t_pha f_sin(input logic [PHA_WIDTH-1:0] i_pha);
      f_sin.sgn = i_pha[PHA_WIDTH-1] ^ NEGATIVE_SIN;
      f_sin.nul = ( i_pha inside { ZERO_SIN } ) ? '1 : '0;
      f_sin.pha = ( i_pha[PHA_WIDTH-2] == '1 ) ? i_pha[PHA_WIDTH-3:0] : ~ i_pha[PHA_WIDTH-3:0] + 1;
    endfunction : f_sin

      if ( OUTPUT_REG ) begin : out_with_reg
        
        logic q_cnv_pha_vld = '0;
        always @(posedge i_cnv_a_clk_p)
          q_cnv_pha_vld <= i_cnv_pha_vld;

        if ( OSC_DATA == "Cos" ) begin : cos // TODO try to merge cases
          
          t_pha q_cnv_pha_cos = '{default:'0};
          always @(posedge i_cnv_a_clk_p)
            if ( i_cnv_pha_vld )
              q_cnv_pha_cos <= f_cos(i_cnv_pha_dat);
          
          assign o_cnv_pha_dat = q_cnv_pha_cos;

        end : cos else if ( OSC_DATA == "Sin" ) begin : sin
          
          t_pha q_cnv_pha_sin = '{default:'0};
          always @(posedge i_cnv_a_clk_p)
            if ( i_cnv_pha_vld )
              q_cnv_pha_sin <= f_sin(i_cnv_pha_dat);
          
          assign o_cnv_pha_dat = q_cnv_pha_sin;

        end : sin else begin : cos_and_sin

          t_pha q_cnv_pha_sin = '{default:'0}, q_cnv_pha_cos = '{default:'0};
          always @(posedge i_cnv_a_clk_p)
            if ( i_cnv_pha_vld ) begin
              q_cnv_pha_sin <= f_sin(i_cnv_pha_dat);
              q_cnv_pha_cos <= f_cos(i_cnv_pha_dat);
            end
          
          assign o_cnv_pha_dat = { q_cnv_pha_sin, q_cnv_pha_cos };

        end : cos_and_sin

        assign o_cnv_pha_vld = q_cnv_pha_vld;

      end : out_with_reg else begin : out_wout_reg

        assign o_cnv_pha_vld = i_cnv_pha_vld;
        assign o_cnv_pha_dat = ( OSC_DATA == "Cos" ) ? f_cos(i_cnv_pha_dat) : ( OSC_DATA == "Sin" ) ? f_sin(i_cnv_pha_dat) : { f_sin(i_cnv_pha_dat), f_cos(i_cnv_pha_dat) };

      end : out_wout_reg

  end : std else if ( MODE == "Rasterized" ) begin : rtd

    if ( OUTPUT_REG ) begin : out_with_reg

      logic q_cnv_pha_vld = '0;
      logic [PHA_WIDTH-1:0] q_cnv_pha_dat = '0;
      always @(posedge i_cnv_a_clk_p) begin
        q_cnv_pha_vld <= i_cnv_pha_vld;
        if ( i_cnv_pha_vld )
          q_cnv_pha_dat <= i_cnv_pha_dat;
      end

      assign o_cnv_pha_vld = q_cnv_pha_vld;
      assign o_cnv_pha_dat = q_cnv_pha_dat;

    end else begin : out_wout_reg

      assign o_cnv_pha_vld = i_cnv_pha_vld;
      assign o_cnv_pha_dat = i_cnv_pha_dat;

    end

  end : rtd else if ( MODE == "Taylor" ) begin : tlr

    typedef struct packed {
      logic [0:0] sgn;
      logic [0:0] sel;
      logic [8:0] cnv;
      logic [PHA_WIDTH-12:0] pha;
    } t_pha;

    typedef struct packed {
      logic [PHA_WIDTH-12:0] pha;
      logic [9:0] sin;
      logic [9:0] cos;
    } t_cnv;

    function t_cnv f_cnv(input t_pha i_pha);
      f_cnv.pha = i_pha.pha;
      f_cnv.sin = ( i_pha.sel ) ? { i_pha.sgn ^ NEGATIVE_SIN, ~ i_pha.cnv } : { i_pha.sgn ^ NEGATIVE_SIN, i_pha.cnv };
      f_cnv.cos = ( i_pha.sel ) ? { ~ i_pha.sgn ^ NEGATIVE_COS, i_pha.cnv } : { i_pha.sgn ^ NEGATIVE_COS, ~ i_pha.cnv };
    endfunction : f_cnv

    if ( OUTPUT_REG ) begin : out_with_reg
      
      logic q_cnv_dat_vld = '0;
      t_cnv q_cnv_dat_pha = '{default:'0};
      always @(posedge i_cnv_a_clk_p) begin
        q_cnv_dat_vld <= i_cnv_pha_vld;
        if ( i_cnv_pha_vld )
          q_cnv_dat_pha <= f_cnv(i_cnv_pha_dat);
      end

      assign o_cnv_pha_vld = q_cnv_dat_vld;
      assign o_cnv_pha_dat = q_cnv_dat_pha;

    end : out_with_reg else begin : out_wout_reg

      assign o_cnv_pha_vld = i_cnv_pha_vld;
      assign o_cnv_pha_dat = f_cnv(i_cnv_pha_dat);

    end : out_wout_reg

  end : tlr

endmodule : dds_phase_converter

(* KEEP_HIERARCHY = "YES" *)
module dds_lut #(
    parameter     MODE = "Standard", // DDS Table Mode: "Standard", "Rasterized" or "Taylor"
    parameter     OSC_DATA = "CosSin", // Output LUT Data "Cos" - Cos, "Sin" - Sin or "CosSin"/"SinCos" - Cos & Sin
    parameter     MEMORY_TYPE = "Block", // Memory Type: "Block" or "Distributed"
    parameter     LUT_FILE = "", // File Name of Bit Array for Fill Look Up Table
    parameter int MODULUS = 25, // Specify the Modulus of the Rasterized Mode from 9 To 16384
    parameter int PHA_WIDTH = ( MODE == "Rasterized" ) ? $clog2(MODULUS) : 12, // Phase Width in Bits
    parameter int DAT_WIDTH = 18, // Cos & Sin Data Width in Bits
    parameter bit NEGATIVE_SIN = '0, // Sine is Negative (1 - Negative)
    parameter bit NEGATIVE_COS = '0, // Cosine is Negative (1 - Negative)
    parameter bit SINGLE_REG = '0, // Single LUT Register
    parameter bit DOUBLE_REG = '0, // Double LUT Register
    parameter int N = ( OSC_DATA == "CosSin" || OSC_DATA == "SinCos" ) ? 2 : 1, // Coefficient for Phase Width in Standard Mode
    parameter int ADR_WIDTH = ( MODE == "Taylor" ) ? PHA_WIDTH+9 : ( MODE == "Standard" ) ? N*PHA_WIDTH : PHA_WIDTH, // Address LUT Width
    parameter int LUT_WIDTH = ( MODE == "Taylor" ) ? 2*DAT_WIDTH+PHA_WIDTH-11 : ( MODE == "Standard" ) ? N*(DAT_WIDTH+1) : N*DAT_WIDTH // Output LUT Width
  )  (
    input   wire                  i_lut_s_rst_p, // Synchronous Reset
    input   wire                  i_lut_a_clk_p, // Rising Edge Clock

    input   wire                  i_lut_pha_vld, // LUT Phase Valid
    input   wire  [ADR_WIDTH-1:0] i_lut_pha_dat, // LUT Phase Data

    output  wire                  o_lut_osc_vld, // Output Table Cos & Sin Valid
    output  wire  [LUT_WIDTH-1:0] o_lut_osc_dat  // Output Table Cos & Sin Data
  );

  wire w_snl_osc_vld;
  if ( SINGLE_REG ) begin : single_vld
    
    logic q_snl_osc_vld = '0;
    always @(posedge i_lut_a_clk_p)
      q_snl_osc_vld <= i_lut_pha_vld;

    assign w_snl_osc_vld = q_snl_osc_vld;

    if ( DOUBLE_REG && MODE != "Taylor" ) begin : double_vld

      logic q_dbl_osc_vld = '0;
      always @(posedge i_lut_a_clk_p)
        q_dbl_osc_vld <= q_snl_osc_vld;

      assign o_lut_osc_vld = q_dbl_osc_vld;

    end : double_vld else begin : single_out

      assign o_lut_osc_vld = ( MODE == "Taylor" ) ? i_lut_pha_vld : q_snl_osc_vld;

    end : single_out

  end : single_vld else begin : assign_vld

    assign o_lut_osc_vld = i_lut_pha_vld;

  end : assign_vld

  wire w_lut_s_rst_p;
  if ( SINGLE_REG ) begin : double_rst

    logic q_lut_s_rst_p = '0;
    always @(posedge i_lut_a_clk_p)
      q_lut_s_rst_p <= i_lut_s_rst_p;

    assign w_lut_s_rst_p = q_lut_s_rst_p;

  end : double_rst

  if ( MODE == "Standard" ) begin : std

    localparam int AW = PHA_WIDTH-2;
    localparam int RW = DAT_WIDTH-1;

    (* ROM_STYLE = MEMORY_TYPE *) bit [RW-1:0] c_lut_cos_rom [2**AW];
    
    initial begin : lut_init
      if ( LUT_FILE == "" )
        for ( int i = 0; i < 2**AW; i++ )
          c_lut_cos_rom[i] = RW'($rtoi((2.0**RW - 2.0) * $cos(real'(i) * 0.5*$acos(-1.0)/2.0**AW) + 0.5));
      else
        $readmemb(LUT_FILE, c_lut_cos_rom, 0, 2**AW-1);
    end : lut_init

    typedef struct packed {
      struct packed {
        logic sgn;
        logic nul;
        logic [AW-1:0] dat;
      } msb;
      struct packed {
        logic sgn;
        logic nul;
        logic [AW-1:0] dat;
      } lsb;
    } t_pha;

    typedef struct packed {
      struct packed {
        logic sgn;
        logic nul;
        logic [RW-1:0] dat;
      } msb;
      struct packed {
        logic sgn;
        logic nul;
        logic [RW-1:0] dat;
      } lsb;
    } t_lut;

    function t_lut f_lut(input t_pha i_pha); // FIXME devide on sin and cos
      f_lut.msb.sgn = i_pha.msb.sgn;
      f_lut.msb.nul = i_pha.msb.nul;
      f_lut.msb.dat = c_lut_cos_rom[i_pha.msb.dat];
      f_lut.lsb.sgn = i_pha.lsb.sgn;
      f_lut.lsb.nul = i_pha.lsb.nul;
      f_lut.lsb.dat = c_lut_cos_rom[i_pha.lsb.dat];
    endfunction : f_lut

    function t_lut f_rst();
      f_rst.msb.sgn = '0;
      f_rst.msb.nul = '0;
      f_rst.msb.dat = ( DOUBLE_REG && MEMORY_TYPE == "Block" ) ? 'X : '0;
      f_rst.lsb.sgn = '0;
      f_rst.lsb.nul = '0;
      f_rst.lsb.dat = ( DOUBLE_REG && MEMORY_TYPE == "Block" ) ? 'X : '0;
    endfunction : f_rst

    if ( SINGLE_REG ) begin : single_reg
      
      t_lut q_snl_osc_dat = '{default:'0};
      always @(posedge i_lut_a_clk_p)
        if ( i_lut_s_rst_p ) 
          q_snl_osc_dat <= f_rst();
        else if ( i_lut_pha_vld )
          q_snl_osc_dat <= f_lut(i_lut_pha_dat);

      if ( DOUBLE_REG ) begin : double_reg
        
        t_lut q_dbl_osc_dat = '{default:'0};
        always @(posedge i_lut_a_clk_p)
          if ( w_lut_s_rst_p )
            q_dbl_osc_dat <= '{default:'0};
          else if ( w_snl_osc_vld )
            q_dbl_osc_dat <= q_snl_osc_dat;

        assign o_lut_osc_dat = q_dbl_osc_dat;

      end : double_reg else begin : single_out

        assign o_lut_osc_dat = q_snl_osc_dat;

      end : single_out

    end : single_reg else begin : assign_out

      assign o_lut_osc_dat = f_lut(i_lut_pha_dat);

    end : assign_out

  end : std else if ( MODE == "Rasterized" ) begin : rtd

    typedef logic [DAT_WIDTH-1:0] t_rom;

    (* ROM_STYLE = MEMORY_TYPE *) bit [DAT_WIDTH-1:0] c_lut_sin_rom [MODULUS];
    (* ROM_STYLE = MEMORY_TYPE *) bit [DAT_WIDTH-1:0] c_lut_cos_rom [MODULUS];

    initial begin : lut_init
      if ( LUT_FILE == "" ) begin : init
        for ( int i = 0; i < MODULUS; i++ ) begin
          c_lut_sin_rom[i] = $rtoi((2.0**(DAT_WIDTH-1) - 2.0) * $sin(real'(i) * (-1.0)**int'(NEGATIVE_SIN) * 2.0*$acos(-1.0)/real'(MODULUS)));
          c_lut_cos_rom[i] = $rtoi((2.0**(DAT_WIDTH-1) - 2.0) * $cos(real'(i) * (-1.0)**int'(NEGATIVE_COS) * 2.0*$acos(-1.0)/real'(MODULUS)));
        end
      end else begin : file
        $readmemb(LUT_FILE, c_lut_sin_rom, 0, MODULUS-1);
        $readmemb(LUT_FILE, c_lut_cos_rom, 0, MODULUS-1);
      end
    end : lut_init

    wire t_rom w_lut_msb_dat, w_lut_lsb_dat;
    if ( SINGLE_REG ) begin : single_reg
      
      t_rom q_one_msb_dat = '0, q_one_lsb_dat = '0;
      always @(posedge i_lut_a_clk_p)
        if ( i_lut_s_rst_p ) begin
          q_one_msb_dat <= ( DOUBLE_REG && MEMORY_TYPE == "Block" ) ? 'X : '0;
          q_one_lsb_dat <= ( DOUBLE_REG && MEMORY_TYPE == "Block" ) ? 'X : '0;
        end else if ( i_lut_pha_vld ) begin
          q_one_msb_dat <= c_lut_sin_rom[i_lut_pha_dat];
          q_one_lsb_dat <= ( OSC_DATA == "Sin" ) ? c_lut_sin_rom[i_lut_pha_dat] : c_lut_cos_rom[i_lut_pha_dat];
        end

      if ( DOUBLE_REG ) begin : double_reg
        
        t_rom q_two_msb_dat = '0, q_two_lsb_dat = '0;
        always @(posedge i_lut_a_clk_p)
          if ( w_lut_s_rst_p ) begin
            q_one_msb_dat <= '0;
            q_one_lsb_dat <= '0;
          end else if ( w_snl_osc_vld ) begin
            q_two_msb_dat <= q_one_msb_dat;
            q_two_lsb_dat <= q_one_lsb_dat;
          end

        assign w_lut_msb_dat = q_two_msb_dat;
        assign w_lut_lsb_dat = q_two_lsb_dat;

      end : double_reg else begin : single_out

        assign w_lut_msb_dat = q_one_msb_dat;
        assign w_lut_lsb_dat = q_one_lsb_dat;

      end : single_out

    end : single_reg else begin : assign_out

      assign w_lut_msb_dat = c_lut_sin_rom[i_lut_pha_dat];
      assign w_lut_lsb_dat = ( OSC_DATA == "Sin" ) ? c_lut_sin_rom[i_lut_pha_dat] : c_lut_cos_rom[i_lut_pha_dat];

    end : assign_out

    assign o_lut_osc_dat = { w_lut_msb_dat, w_lut_lsb_dat };

  end : rtd else if ( MODE == "Taylor" ) begin : tlr

    localparam int lutTaylor [12:21][2**10] = '{ '{ 3, 9, 16, 22, 28, 35, 41, 47, 53, 60, 66, 72, 78, 85, 91, 97, 104, 110, 116, 122, 129, 135, 141, 147, 154, 160, 166, 172, 179, 185, 191, 197, 204, 210, 216, 222, 229, 235, 241, 247, 254, 260, 266, 272, 278, 285, 291, 297, 303, 310, 316, 322, 328, 334, 341, 347, 353, 359, 365, 371, 378, 384, 390, 396, 402, 408, 415, 421, 427, 433, 439, 445, 451, 457, 464, 470, 476, 482, 488, 494, 500, 506, 512, 518, 524, 531, 537, 543, 549, 555, 561, 567, 573, 579, 585, 591, 597, 603, 609, 615, 621, 627, 633, 639, 645, 651, 657, 663, 669, 674, 680, 686, 692, 698, 704, 710, 716, 722, 728, 733, 739, 745, 751, 757, 763, 768, 774, 780, 786, 792, 797, 803, 809, 815, 821, 826, 832, 838, 843, 849, 855, 861, 866, 872, 878, 883, 889, 895, 900, 906, 911, 917, 923, 928, 934, 939, 945, 951, 956, 962, 967, 973, 978, 984, 989, 995, 1000, 1006, 1011, 1017, 1022, 1028, 1033, 1038, 1044, 1049, 1055, 1060, 1065, 1071, 1076, 1081, 1087, 1092, 1097, 1103, 1108, 1113, 1118, 1124, 1129, 1134, 1139, 1145, 1150, 1155, 1160, 1165, 1170, 1176, 1181, 1186, 1191, 1196, 1201, 1206, 1211, 1216, 1221, 1226, 1231, 1236, 1241, 1246, 1251, 1256, 1261, 1266, 1271, 1276, 1281, 1286, 1291, 1296, 1300, 1305, 1310, 1315, 1320, 1324, 1329, 1334, 1339, 1344, 1348, 1353, 1358, 1362, 1367, 1372, 1376, 1381, 1386, 1390, 1395, 1399, 1404, 1409, 1413, 1418, 1422, 1427, 1431, 1436, 1440, 1445, 1449, 1453, 1458, 1462, 1467, 1471, 1475, 1480, 1484, 1488, 1493, 1497, 1501, 1505, 1510, 1514, 1518, 1522, 1526, 1531, 1535, 1539, 1543, 1547, 1551, 1555, 1559, 1564, 1568, 1572, 1576, 1580, 1584, 1588, 1591, 1595, 1599, 1603, 1607, 1611, 1615, 1619, 1623, 1626, 1630, 1634, 1638, 1641, 1645, 1649, 1653, 1656, 1660, 1664, 1667, 1671, 1675, 1678, 1682, 1685, 1689, 1692, 1696, 1699, 1703, 1706, 1710, 1713, 1717, 1720, 1724, 1727, 1730, 1734, 1737, 1740, 1744, 1747, 1750, 1753, 1757, 1760, 1763, 1766, 1769, 1772, 1776, 1779, 1782, 1785, 1788, 1791, 1794, 1797, 1800, 1803, 1806, 1809, 1812, 1815, 1818, 1820, 1823, 1826, 1829, 1832, 1835, 1837, 1840, 1843, 1846, 1848, 1851, 1854, 1856, 1859, 1861, 1864, 1867, 1869, 1872, 1874, 1877, 1879, 1882, 1884, 1887, 1889, 1891, 1894, 1896, 1899, 1901, 1903, 1905, 1908, 1910, 1912, 1914, 1917, 1919, 1921, 1923, 1925, 1927, 1930, 1932, 1934, 1936, 1938, 1940, 1942, 1944, 1946, 1948, 1950, 1951, 1953, 1955, 1957, 1959, 1961, 1962, 1964, 1966, 1968, 1969, 1971, 1973, 1974, 1976, 1978, 1979, 1981, 1982, 1984, 1985, 1987, 1988, 1990, 1991, 1993, 1994, 1996, 1997, 1998, 2000, 2001, 2002, 2004, 2005, 2006, 2007, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2019, 2020, 2021, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2029, 2030, 2031, 2032, 2032, 2033, 2034, 2035, 2035, 2036, 2036, 2037, 2038, 2038, 2039, 2039, 2040, 2040, 2041, 2041, 2042, 2042, 2042, 2043, 2043, 2043, 2044, 2044, 2044, 2044, 2045, 2045, 2045, 2045, 2045, 2046, 2046, 2046, 2046, 2046, 2046, 2046, -3, -9, -16, -22, -28, -35, -41, -47, -53, -60, -66, -72, -78, -85, -91, -97, -104, -110, -116, -122, -129, -135, -141, -147, -154, -160, -166, -172, -179, -185, -191, -197, -204, -210, -216, -222, -229, -235, -241, -247, -254, -260, -266, -272, -278, -285, -291, -297, -303, -310, -316, -322, -328, -334, -341, -347, -353, -359, -365, -371, -378, -384, -390, -396, -402, -408, -415, -421, -427, -433, -439, -445, -451, -457, -464, -470, -476, -482, -488, -494, -500, -506, -512, -518, -524, -531, -537, -543, -549, -555, -561, -567, -573, -579, -585, -591, -597, -603, -609, -615, -621, -627, -633, -639, -645, -651, -657, -663, -669, -674, -680, -686, -692, -698, -704, -710, -716, -722, -728, -733, -739, -745, -751, -757, -763, -768, -774, -780, -786, -792, -797, -803, -809, -815, -821, -826, -832, -838, -843, -849, -855, -861, -866, -872, -878, -883, -889, -895, -900, -906, -911, -917, -923, -928, -934, -939, -945, -951, -956, -962, -967, -973, -978, -984, -989, -995, -1000, -1006, -1011, -1017, -1022, -1028, -1033, -1038, -1044, -1049, -1055, -1060, -1065, -1071, -1076, -1081, -1087, -1092, -1097, -1103, -1108, -1113, -1118, -1124, -1129, -1134, -1139, -1145, -1150, -1155, -1160, -1165, -1170, -1176, -1181, -1186, -1191, -1196, -1201, -1206, -1211, -1216, -1221, -1226, -1231, -1236, -1241, -1246, -1251, -1256, -1261, -1266, -1271, -1276, -1281, -1286, -1291, -1296, -1300, -1305, -1310, -1315, -1320, -1324, -1329, -1334, -1339, -1344, -1348, -1353, -1358, -1362, -1367, -1372, -1376, -1381, -1386, -1390, -1395, -1399, -1404, -1409, -1413, -1418, -1422, -1427, -1431, -1436, -1440, -1445, -1449, -1453, -1458, -1462, -1467, -1471, -1475, -1480, -1484, -1488, -1493, -1497, -1501, -1505, -1510, -1514, -1518, -1522, -1526, -1531, -1535, -1539, -1543, -1547, -1551, -1555, -1559, -1564, -1568, -1572, -1576, -1580, -1584, -1588, -1591, -1595, -1599, -1603, -1607, -1611, -1615, -1619, -1623, -1626, -1630, -1634, -1638, -1641, -1645, -1649, -1653, -1656, -1660, -1664, -1667, -1671, -1675, -1678, -1682, -1685, -1689, -1692, -1696, -1699, -1703, -1706, -1710, -1713, -1717, -1720, -1724, -1727, -1730, -1734, -1737, -1740, -1744, -1747, -1750, -1753, -1757, -1760, -1763, -1766, -1769, -1772, -1776, -1779, -1782, -1785, -1788, -1791, -1794, -1797, -1800, -1803, -1806, -1809, -1812, -1815, -1818, -1820, -1823, -1826, -1829, -1832, -1835, -1837, -1840, -1843, -1846, -1848, -1851, -1854, -1856, -1859, -1861, -1864, -1867, -1869, -1872, -1874, -1877, -1879, -1882, -1884, -1887, -1889, -1891, -1894, -1896, -1899, -1901, -1903, -1905, -1908, -1910, -1912, -1914, -1917, -1919, -1921, -1923, -1925, -1927, -1930, -1932, -1934, -1936, -1938, -1940, -1942, -1944, -1946, -1948, -1950, -1951, -1953, -1955, -1957, -1959, -1961, -1962, -1964, -1966, -1968, -1969, -1971, -1973, -1974, -1976, -1978, -1979, -1981, -1982, -1984, -1985, -1987, -1988, -1990, -1991, -1993, -1994, -1996, -1997, -1998, -2000, -2001, -2002, -2004, -2005, -2006, -2007, -2009, -2010, -2011, -2012, -2013, -2014, -2015, -2016, -2017, -2019, -2020, -2021, -2021, -2022, -2023, -2024, -2025, -2026, -2027, -2028, -2029, -2029, -2030, -2031, -2032, -2032, -2033, -2034, -2035, -2035, -2036, -2036, -2037, -2038, -2038, -2039, -2039, -2040, -2040, -2041, -2041, -2042, -2042, -2042, -2043, -2043, -2043, -2044, -2044, -2044, -2044, -2045, -2045, -2045, -2045, -2045, -2046, -2046, -2046, -2046, -2046, -2046, -2046 },
                                                 '{ 6, 19, 31, 44, 57, 69, 82, 94, 107, 119, 132, 144, 157, 170, 182, 195, 207, 220, 232, 245, 257, 270, 282, 295, 307, 320, 332, 345, 358, 370, 383, 395, 408, 420, 433, 445, 457, 470, 482, 495, 507, 520, 532, 545, 557, 570, 582, 595, 607, 619, 632, 644, 657, 669, 681, 694, 706, 718, 731, 743, 756, 768, 780, 793, 805, 817, 829, 842, 854, 866, 879, 891, 903, 915, 928, 940, 952, 964, 976, 989, 1001, 1013, 1025, 1037, 1049, 1062, 1074, 1086, 1098, 1110, 1122, 1134, 1146, 1158, 1170, 1182, 1194, 1206, 1218, 1230, 1242, 1254, 1266, 1278, 1290, 1302, 1314, 1326, 1338, 1350, 1361, 1373, 1385, 1397, 1409, 1421, 1432, 1444, 1456, 1468, 1479, 1491, 1503, 1514, 1526, 1538, 1549, 1561, 1573, 1584, 1596, 1607, 1619, 1630, 1642, 1653, 1665, 1676, 1688, 1699, 1711, 1722, 1733, 1745, 1756, 1767, 1779, 1790, 1801, 1813, 1824, 1835, 1846, 1858, 1869, 1880, 1891, 1902, 1913, 1924, 1935, 1946, 1958, 1969, 1980, 1991, 2002, 2012, 2023, 2034, 2045, 2056, 2067, 2078, 2089, 2099, 2110, 2121, 2132, 2142, 2153, 2164, 2174, 2185, 2196, 2206, 2217, 2227, 2238, 2248, 2259, 2269, 2280, 2290, 2301, 2311, 2321, 2332, 2342, 2352, 2362, 2373, 2383, 2393, 2403, 2413, 2424, 2434, 2444, 2454, 2464, 2474, 2484, 2494, 2504, 2514, 2524, 2534, 2543, 2553, 2563, 2573, 2583, 2592, 2602, 2612, 2621, 2631, 2641, 2650, 2660, 2669, 2679, 2688, 2698, 2707, 2717, 2726, 2735, 2745, 2754, 2763, 2773, 2782, 2791, 2800, 2809, 2818, 2828, 2837, 2846, 2855, 2864, 2873, 2882, 2890, 2899, 2908, 2917, 2926, 2935, 2943, 2952, 2961, 2969, 2978, 2987, 2995, 3004, 3012, 3021, 3029, 3038, 3046, 3054, 3063, 3071, 3079, 3088, 3096, 3104, 3112, 3120, 3129, 3137, 3145, 3153, 3161, 3169, 3177, 3185, 3192, 3200, 3208, 3216, 3224, 3231, 3239, 3247, 3254, 3262, 3270, 3277, 3285, 3292, 3300, 3307, 3314, 3322, 3329, 3336, 3344, 3351, 3358, 3365, 3372, 3379, 3386, 3394, 3401, 3408, 3414, 3421, 3428, 3435, 3442, 3449, 3455, 3462, 3469, 3476, 3482, 3489, 3495, 3502, 3508, 3515, 3521, 3528, 3534, 3540, 3547, 3553, 3559, 3565, 3571, 3578, 3584, 3590, 3596, 3602, 3608, 3614, 3619, 3625, 3631, 3637, 3643, 3648, 3654, 3660, 3665, 3671, 3676, 3682, 3687, 3693, 3698, 3704, 3709, 3714, 3720, 3725, 3730, 3735, 3740, 3745, 3750, 3755, 3760, 3765, 3770, 3775, 3780, 3785, 3790, 3794, 3799, 3804, 3808, 3813, 3817, 3822, 3826, 3831, 3835, 3840, 3844, 3848, 3853, 3857, 3861, 3865, 3869, 3873, 3877, 3881, 3885, 3889, 3893, 3897, 3901, 3905, 3908, 3912, 3916, 3920, 3923, 3927, 3930, 3934, 3937, 3941, 3944, 3947, 3951, 3954, 3957, 3960, 3964, 3967, 3970, 3973, 3976, 3979, 3982, 3985, 3988, 3990, 3993, 3996, 3999, 4001, 4004, 4007, 4009, 4012, 4014, 4017, 4019, 4021, 4024, 4026, 4028, 4030, 4033, 4035, 4037, 4039, 4041, 4043, 4045, 4047, 4049, 4051, 4052, 4054, 4056, 4058, 4059, 4061, 4062, 4064, 4065, 4067, 4068, 4070, 4071, 4072, 4074, 4075, 4076, 4077, 4078, 4079, 4080, 4081, 4082, 4083, 4084, 4085, 4086, 4087, 4087, 4088, 4089, 4089, 4090, 4090, 4091, 4091, 4092, 4092, 4093, 4093, 4093, 4093, 4094, 4094, 4094, 4094, 4094, -6, -19, -31, -44, -57, -69, -82, -94, -107, -119, -132, -144, -157, -170, -182, -195, -207, -220, -232, -245, -257, -270, -282, -295, -307, -320, -332, -345, -358, -370, -383, -395, -408, -420, -433, -445, -457, -470, -482, -495, -507, -520, -532, -545, -557, -570, -582, -595, -607, -619, -632, -644, -657, -669, -681, -694, -706, -718, -731, -743, -756, -768, -780, -793, -805, -817, -829, -842, -854, -866, -879, -891, -903, -915, -928, -940, -952, -964, -976, -989, -1001, -1013, -1025, -1037, -1049, -1062, -1074, -1086, -1098, -1110, -1122, -1134, -1146, -1158, -1170, -1182, -1194, -1206, -1218, -1230, -1242, -1254, -1266, -1278, -1290, -1302, -1314, -1326, -1338, -1350, -1361, -1373, -1385, -1397, -1409, -1421, -1432, -1444, -1456, -1468, -1479, -1491, -1503, -1514, -1526, -1538, -1549, -1561, -1573, -1584, -1596, -1607, -1619, -1630, -1642, -1653, -1665, -1676, -1688, -1699, -1711, -1722, -1733, -1745, -1756, -1767, -1779, -1790, -1801, -1813, -1824, -1835, -1846, -1858, -1869, -1880, -1891, -1902, -1913, -1924, -1935, -1946, -1958, -1969, -1980, -1991, -2002, -2012, -2023, -2034, -2045, -2056, -2067, -2078, -2089, -2099, -2110, -2121, -2132, -2142, -2153, -2164, -2174, -2185, -2196, -2206, -2217, -2227, -2238, -2248, -2259, -2269, -2280, -2290, -2301, -2311, -2321, -2332, -2342, -2352, -2362, -2373, -2383, -2393, -2403, -2413, -2424, -2434, -2444, -2454, -2464, -2474, -2484, -2494, -2504, -2514, -2524, -2534, -2543, -2553, -2563, -2573, -2583, -2592, -2602, -2612, -2621, -2631, -2641, -2650, -2660, -2669, -2679, -2688, -2698, -2707, -2717, -2726, -2735, -2745, -2754, -2763, -2773, -2782, -2791, -2800, -2809, -2818, -2828, -2837, -2846, -2855, -2864, -2873, -2882, -2890, -2899, -2908, -2917, -2926, -2935, -2943, -2952, -2961, -2969, -2978, -2987, -2995, -3004, -3012, -3021, -3029, -3038, -3046, -3054, -3063, -3071, -3079, -3088, -3096, -3104, -3112, -3120, -3129, -3137, -3145, -3153, -3161, -3169, -3177, -3185, -3192, -3200, -3208, -3216, -3224, -3231, -3239, -3247, -3254, -3262, -3270, -3277, -3285, -3292, -3300, -3307, -3314, -3322, -3329, -3336, -3344, -3351, -3358, -3365, -3372, -3379, -3386, -3394, -3401, -3408, -3414, -3421, -3428, -3435, -3442, -3449, -3455, -3462, -3469, -3476, -3482, -3489, -3495, -3502, -3508, -3515, -3521, -3528, -3534, -3540, -3547, -3553, -3559, -3565, -3571, -3578, -3584, -3590, -3596, -3602, -3608, -3614, -3619, -3625, -3631, -3637, -3643, -3648, -3654, -3660, -3665, -3671, -3676, -3682, -3687, -3693, -3698, -3704, -3709, -3714, -3720, -3725, -3730, -3735, -3740, -3745, -3750, -3755, -3760, -3765, -3770, -3775, -3780, -3785, -3790, -3794, -3799, -3804, -3808, -3813, -3817, -3822, -3826, -3831, -3835, -3840, -3844, -3848, -3853, -3857, -3861, -3865, -3869, -3873, -3877, -3881, -3885, -3889, -3893, -3897, -3901, -3905, -3908, -3912, -3916, -3920, -3923, -3927, -3930, -3934, -3937, -3941, -3944, -3947, -3951, -3954, -3957, -3960, -3964, -3967, -3970, -3973, -3976, -3979, -3982, -3985, -3988, -3990, -3993, -3996, -3999, -4001, -4004, -4007, -4009, -4012, -4014, -4017, -4019, -4021, -4024, -4026, -4028, -4030, -4033, -4035, -4037, -4039, -4041, -4043, -4045, -4047, -4049, -4051, -4052, -4054, -4056, -4058, -4059, -4061, -4062, -4064, -4065, -4067, -4068, -4070, -4071, -4072, -4074, -4075, -4076, -4077, -4078, -4079, -4080, -4081, -4082, -4083, -4084, -4085, -4086, -4087, -4087, -4088, -4089, -4089, -4090, -4090, -4091, -4091, -4092, -4092, -4093, -4093, -4093, -4093, -4094, -4094, -4094, -4094, -4094 },
                                                 '{ 13, 38, 63, 88, 113, 138, 163, 188, 214, 239, 264, 289, 314, 339, 364, 389, 414, 440, 465, 490, 515, 540, 565, 590, 615, 640, 665, 690, 715, 740, 765, 790, 815, 840, 865, 890, 915, 940, 965, 990, 1015, 1040, 1065, 1090, 1115, 1140, 1164, 1189, 1214, 1239, 1264, 1289, 1313, 1338, 1363, 1388, 1413, 1437, 1462, 1487, 1511, 1536, 1561, 1585, 1610, 1635, 1659, 1684, 1709, 1733, 1758, 1782, 1807, 1831, 1856, 1880, 1905, 1929, 1953, 1978, 2002, 2027, 2051, 2075, 2099, 2124, 2148, 2172, 2196, 2221, 2245, 2269, 2293, 2317, 2341, 2365, 2389, 2413, 2437, 2461, 2485, 2509, 2533, 2557, 2581, 2605, 2629, 2652, 2676, 2700, 2724, 2747, 2771, 2795, 2818, 2842, 2865, 2889, 2912, 2936, 2959, 2983, 3006, 3029, 3053, 3076, 3099, 3123, 3146, 3169, 3192, 3215, 3238, 3261, 3284, 3307, 3330, 3353, 3376, 3399, 3422, 3445, 3468, 3490, 3513, 3536, 3558, 3581, 3604, 3626, 3649, 3671, 3694, 3716, 3738, 3761, 3783, 3805, 3827, 3850, 3872, 3894, 3916, 3938, 3960, 3982, 4004, 4026, 4048, 4070, 4091, 4113, 4135, 4156, 4178, 4200, 4221, 4243, 4264, 4286, 4307, 4328, 4350, 4371, 4392, 4413, 4435, 4456, 4477, 4498, 4519, 4540, 4561, 4581, 4602, 4623, 4644, 4664, 4685, 4706, 4726, 4747, 4767, 4787, 4808, 4828, 4848, 4869, 4889, 4909, 4929, 4949, 4969, 4989, 5009, 5029, 5049, 5068, 5088, 5108, 5127, 5147, 5166, 5186, 5205, 5225, 5244, 5263, 5283, 5302, 5321, 5340, 5359, 5378, 5397, 5416, 5435, 5453, 5472, 5491, 5509, 5528, 5546, 5565, 5583, 5602, 5620, 5638, 5656, 5675, 5693, 5711, 5729, 5747, 5764, 5782, 5800, 5818, 5835, 5853, 5871, 5888, 5906, 5923, 5940, 5958, 5975, 5992, 6009, 6026, 6043, 6060, 6077, 6094, 6110, 6127, 6144, 6160, 6177, 6193, 6210, 6226, 6242, 6259, 6275, 6291, 6307, 6323, 6339, 6355, 6371, 6386, 6402, 6418, 6433, 6449, 6464, 6480, 6495, 6510, 6525, 6541, 6556, 6571, 6586, 6601, 6615, 6630, 6645, 6660, 6674, 6689, 6703, 6718, 6732, 6746, 6760, 6775, 6789, 6803, 6817, 6831, 6844, 6858, 6872, 6886, 6899, 6913, 6926, 6939, 6953, 6966, 6979, 6992, 7005, 7018, 7031, 7044, 7057, 7070, 7082, 7095, 7107, 7120, 7132, 7145, 7157, 7169, 7181, 7193, 7205, 7217, 7229, 7241, 7252, 7264, 7276, 7287, 7298, 7310, 7321, 7332, 7344, 7355, 7366, 7377, 7387, 7398, 7409, 7420, 7430, 7441, 7451, 7462, 7472, 7482, 7492, 7503, 7513, 7523, 7532, 7542, 7552, 7562, 7571, 7581, 7590, 7600, 7609, 7618, 7628, 7637, 7646, 7655, 7664, 7672, 7681, 7690, 7698, 7707, 7715, 7724, 7732, 7740, 7749, 7757, 7765, 7773, 7781, 7788, 7796, 7804, 7811, 7819, 7826, 7834, 7841, 7848, 7855, 7862, 7869, 7876, 7883, 7890, 7897, 7903, 7910, 7916, 7923, 7929, 7935, 7941, 7948, 7954, 7960, 7965, 7971, 7977, 7983, 7988, 7994, 7999, 8005, 8010, 8015, 8020, 8025, 8030, 8035, 8040, 8045, 8049, 8054, 8058, 8063, 8067, 8072, 8076, 8080, 8084, 8088, 8092, 8096, 8099, 8103, 8107, 8110, 8114, 8117, 8120, 8124, 8127, 8130, 8133, 8136, 8139, 8141, 8144, 8147, 8149, 8152, 8154, 8156, 8159, 8161, 8163, 8165, 8167, 8169, 8170, 8172, 8174, 8175, 8177, 8178, 8180, 8181, 8182, 8183, 8184, 8185, 8186, 8187, 8187, 8188, 8188, 8189, 8189, 8190, 8190, 8190, 8190, -13, -38, -63, -88, -113, -138, -163, -188, -214, -239, -264, -289, -314, -339, -364, -389, -414, -440, -465, -490, -515, -540, -565, -590, -615, -640, -665, -690, -715, -740, -765, -790, -815, -840, -865, -890, -915, -940, -965, -990, -1015, -1040, -1065, -1090, -1115, -1140, -1164, -1189, -1214, -1239, -1264, -1289, -1313, -1338, -1363, -1388, -1413, -1437, -1462, -1487, -1511, -1536, -1561, -1585, -1610, -1635, -1659, -1684, -1709, -1733, -1758, -1782, -1807, -1831, -1856, -1880, -1905, -1929, -1953, -1978, -2002, -2027, -2051, -2075, -2099, -2124, -2148, -2172, -2196, -2221, -2245, -2269, -2293, -2317, -2341, -2365, -2389, -2413, -2437, -2461, -2485, -2509, -2533, -2557, -2581, -2605, -2629, -2652, -2676, -2700, -2724, -2747, -2771, -2795, -2818, -2842, -2865, -2889, -2912, -2936, -2959, -2983, -3006, -3029, -3053, -3076, -3099, -3123, -3146, -3169, -3192, -3215, -3238, -3261, -3284, -3307, -3330, -3353, -3376, -3399, -3422, -3445, -3468, -3490, -3513, -3536, -3558, -3581, -3604, -3626, -3649, -3671, -3694, -3716, -3738, -3761, -3783, -3805, -3827, -3850, -3872, -3894, -3916, -3938, -3960, -3982, -4004, -4026, -4048, -4070, -4091, -4113, -4135, -4156, -4178, -4200, -4221, -4243, -4264, -4286, -4307, -4328, -4350, -4371, -4392, -4413, -4435, -4456, -4477, -4498, -4519, -4540, -4561, -4581, -4602, -4623, -4644, -4664, -4685, -4706, -4726, -4747, -4767, -4787, -4808, -4828, -4848, -4869, -4889, -4909, -4929, -4949, -4969, -4989, -5009, -5029, -5049, -5068, -5088, -5108, -5127, -5147, -5166, -5186, -5205, -5225, -5244, -5263, -5283, -5302, -5321, -5340, -5359, -5378, -5397, -5416, -5435, -5453, -5472, -5491, -5509, -5528, -5546, -5565, -5583, -5602, -5620, -5638, -5656, -5675, -5693, -5711, -5729, -5747, -5764, -5782, -5800, -5818, -5835, -5853, -5871, -5888, -5906, -5923, -5940, -5958, -5975, -5992, -6009, -6026, -6043, -6060, -6077, -6094, -6110, -6127, -6144, -6160, -6177, -6193, -6210, -6226, -6242, -6259, -6275, -6291, -6307, -6323, -6339, -6355, -6371, -6386, -6402, -6418, -6433, -6449, -6464, -6480, -6495, -6510, -6525, -6541, -6556, -6571, -6586, -6601, -6615, -6630, -6645, -6660, -6674, -6689, -6703, -6718, -6732, -6746, -6760, -6775, -6789, -6803, -6817, -6831, -6844, -6858, -6872, -6886, -6899, -6913, -6926, -6939, -6953, -6966, -6979, -6992, -7005, -7018, -7031, -7044, -7057, -7070, -7082, -7095, -7107, -7120, -7132, -7145, -7157, -7169, -7181, -7193, -7205, -7217, -7229, -7241, -7252, -7264, -7276, -7287, -7298, -7310, -7321, -7332, -7344, -7355, -7366, -7377, -7387, -7398, -7409, -7420, -7430, -7441, -7451, -7462, -7472, -7482, -7492, -7503, -7513, -7523, -7532, -7542, -7552, -7562, -7571, -7581, -7590, -7600, -7609, -7618, -7628, -7637, -7646, -7655, -7664, -7672, -7681, -7690, -7698, -7707, -7715, -7724, -7732, -7740, -7749, -7757, -7765, -7773, -7781, -7788, -7796, -7804, -7811, -7819, -7826, -7834, -7841, -7848, -7855, -7862, -7869, -7876, -7883, -7890, -7897, -7903, -7910, -7916, -7923, -7929, -7935, -7941, -7948, -7954, -7960, -7965, -7971, -7977, -7983, -7988, -7994, -7999, -8005, -8010, -8015, -8020, -8025, -8030, -8035, -8040, -8045, -8049, -8054, -8058, -8063, -8067, -8072, -8076, -8080, -8084, -8088, -8092, -8096, -8099, -8103, -8107, -8110, -8114, -8117, -8120, -8124, -8127, -8130, -8133, -8136, -8139, -8141, -8144, -8147, -8149, -8152, -8154, -8156, -8159, -8161, -8163, -8165, -8167, -8169, -8170, -8172, -8174, -8175, -8177, -8178, -8180, -8181, -8182, -8183, -8184, -8185, -8186, -8187, -8187, -8188, -8188, -8189, -8189, -8190, -8190, -8190, -8190 },
                                                 '{ 25, 75, 126, 176, 226, 276, 327, 377, 427, 477, 528, 578, 628, 678, 729, 779, 829, 879, 929, 979, 1030, 1080, 1130, 1180, 1230, 1280, 1330, 1380, 1431, 1481, 1531, 1581, 1631, 1681, 1731, 1781, 1831, 1881, 1930, 1980, 2030, 2080, 2130, 2180, 2230, 2279, 2329, 2379, 2429, 2478, 2528, 2578, 2627, 2677, 2726, 2776, 2825, 2875, 2924, 2974, 3023, 3073, 3122, 3171, 3221, 3270, 3319, 3368, 3417, 3467, 3516, 3565, 3614, 3663, 3712, 3761, 3810, 3859, 3907, 3956, 4005, 4054, 4102, 4151, 4200, 4248, 4297, 4345, 4394, 4442, 4490, 4539, 4587, 4635, 4683, 4731, 4779, 4828, 4876, 4923, 4971, 5019, 5067, 5115, 5163, 5210, 5258, 5305, 5353, 5400, 5448, 5495, 5543, 5590, 5637, 5684, 5731, 5778, 5825, 5872, 5919, 5966, 6013, 6060, 6106, 6153, 6199, 6246, 6292, 6339, 6385, 6431, 6477, 6524, 6570, 6616, 6662, 6708, 6753, 6799, 6845, 6890, 6936, 6981, 7027, 7072, 7118, 7163, 7208, 7253, 7298, 7343, 7388, 7433, 7478, 7522, 7567, 7611, 7656, 7700, 7745, 7789, 7833, 7877, 7921, 7965, 8009, 8053, 8097, 8140, 8184, 8227, 8271, 8314, 8357, 8400, 8444, 8487, 8530, 8572, 8615, 8658, 8701, 8743, 8786, 8828, 8870, 8912, 8955, 8997, 9039, 9080, 9122, 9164, 9206, 9247, 9289, 9330, 9371, 9412, 9453, 9494, 9535, 9576, 9617, 9658, 9698, 9739, 9779, 9819, 9859, 9899, 9939, 9979, 10019, 10059, 10099, 10138, 10177, 10217, 10256, 10295, 10334, 10373, 10412, 10451, 10489, 10528, 10566, 10605, 10643, 10681, 10719, 10757, 10795, 10833, 10871, 10908, 10945, 10983, 11020, 11057, 11094, 11131, 11168, 11205, 11241, 11278, 11314, 11351, 11387, 11423, 11459, 11495, 11530, 11566, 11602, 11637, 11672, 11708, 11743, 11778, 11812, 11847, 11882, 11916, 11951, 11985, 12019, 12054, 12087, 12121, 12155, 12189, 12222, 12256, 12289, 12322, 12355, 12388, 12421, 12454, 12486, 12519, 12551, 12583, 12615, 12647, 12679, 12711, 12743, 12774, 12806, 12837, 12868, 12899, 12930, 12961, 12992, 13022, 13053, 13083, 13113, 13143, 13173, 13203, 13233, 13262, 13292, 13321, 13350, 13379, 13408, 13437, 13466, 13494, 13523, 13551, 13579, 13607, 13635, 13663, 13691, 13718, 13745, 13773, 13800, 13827, 13854, 13881, 13907, 13934, 13960, 13986, 14012, 14038, 14064, 14090, 14115, 14141, 14166, 14191, 14216, 14241, 14266, 14291, 14315, 14340, 14364, 14388, 14412, 14436, 14459, 14483, 14506, 14530, 14553, 14576, 14599, 14621, 14644, 14667, 14689, 14711, 14733, 14755, 14777, 14798, 14820, 14841, 14862, 14883, 14904, 14925, 14946, 14966, 14987, 15007, 15027, 15047, 15067, 15086, 15106, 15125, 15145, 15164, 15183, 15201, 15220, 15239, 15257, 15275, 15293, 15311, 15329, 15347, 15364, 15382, 15399, 15416, 15433, 15450, 15466, 15483, 15499, 15515, 15531, 15547, 15563, 15579, 15594, 15609, 15625, 15640, 15655, 15669, 15684, 15698, 15713, 15727, 15741, 15755, 15768, 15782, 15795, 15809, 15822, 15835, 15847, 15860, 15873, 15885, 15897, 15909, 15921, 15933, 15944, 15956, 15967, 15978, 15989, 16000, 16011, 16022, 16032, 16042, 16052, 16062, 16072, 16082, 16091, 16101, 16110, 16119, 16128, 16136, 16145, 16154, 16162, 16170, 16178, 16186, 16193, 16201, 16208, 16216, 16223, 16230, 16236, 16243, 16249, 16256, 16262, 16268, 16274, 16279, 16285, 16290, 16296, 16301, 16306, 16310, 16315, 16319, 16324, 16328, 16332, 16336, 16339, 16343, 16346, 16350, 16353, 16356, 16358, 16361, 16363, 16366, 16368, 16370, 16372, 16373, 16375, 16376, 16378, 16379, 16380, 16380, 16381, 16382, 16382, 16382, -25, -75, -126, -176, -226, -276, -327, -377, -427, -477, -528, -578, -628, -678, -729, -779, -829, -879, -929, -979, -1030, -1080, -1130, -1180, -1230, -1280, -1330, -1380, -1431, -1481, -1531, -1581, -1631, -1681, -1731, -1781, -1831, -1881, -1930, -1980, -2030, -2080, -2130, -2180, -2230, -2279, -2329, -2379, -2429, -2478, -2528, -2578, -2627, -2677, -2726, -2776, -2825, -2875, -2924, -2974, -3023, -3073, -3122, -3171, -3221, -3270, -3319, -3368, -3417, -3467, -3516, -3565, -3614, -3663, -3712, -3761, -3810, -3859, -3907, -3956, -4005, -4054, -4102, -4151, -4200, -4248, -4297, -4345, -4394, -4442, -4490, -4539, -4587, -4635, -4683, -4731, -4779, -4828, -4876, -4923, -4971, -5019, -5067, -5115, -5163, -5210, -5258, -5305, -5353, -5400, -5448, -5495, -5543, -5590, -5637, -5684, -5731, -5778, -5825, -5872, -5919, -5966, -6013, -6060, -6106, -6153, -6199, -6246, -6292, -6339, -6385, -6431, -6477, -6524, -6570, -6616, -6662, -6708, -6753, -6799, -6845, -6890, -6936, -6981, -7027, -7072, -7118, -7163, -7208, -7253, -7298, -7343, -7388, -7433, -7478, -7522, -7567, -7611, -7656, -7700, -7745, -7789, -7833, -7877, -7921, -7965, -8009, -8053, -8097, -8140, -8184, -8227, -8271, -8314, -8357, -8400, -8444, -8487, -8530, -8572, -8615, -8658, -8701, -8743, -8786, -8828, -8870, -8912, -8955, -8997, -9039, -9080, -9122, -9164, -9206, -9247, -9289, -9330, -9371, -9412, -9453, -9494, -9535, -9576, -9617, -9658, -9698, -9739, -9779, -9819, -9859, -9899, -9939, -9979, -10019, -10059, -10099, -10138, -10177, -10217, -10256, -10295, -10334, -10373, -10412, -10451, -10489, -10528, -10566, -10605, -10643, -10681, -10719, -10757, -10795, -10833, -10871, -10908, -10945, -10983, -11020, -11057, -11094, -11131, -11168, -11205, -11241, -11278, -11314, -11351, -11387, -11423, -11459, -11495, -11530, -11566, -11602, -11637, -11672, -11708, -11743, -11778, -11812, -11847, -11882, -11916, -11951, -11985, -12019, -12054, -12087, -12121, -12155, -12189, -12222, -12256, -12289, -12322, -12355, -12388, -12421, -12454, -12486, -12519, -12551, -12583, -12615, -12647, -12679, -12711, -12743, -12774, -12806, -12837, -12868, -12899, -12930, -12961, -12992, -13022, -13053, -13083, -13113, -13143, -13173, -13203, -13233, -13262, -13292, -13321, -13350, -13379, -13408, -13437, -13466, -13494, -13523, -13551, -13579, -13607, -13635, -13663, -13691, -13718, -13745, -13773, -13800, -13827, -13854, -13881, -13907, -13934, -13960, -13986, -14012, -14038, -14064, -14090, -14115, -14141, -14166, -14191, -14216, -14241, -14266, -14291, -14315, -14340, -14364, -14388, -14412, -14436, -14459, -14483, -14506, -14530, -14553, -14576, -14599, -14621, -14644, -14667, -14689, -14711, -14733, -14755, -14777, -14798, -14820, -14841, -14862, -14883, -14904, -14925, -14946, -14966, -14987, -15007, -15027, -15047, -15067, -15086, -15106, -15125, -15145, -15164, -15183, -15201, -15220, -15239, -15257, -15275, -15293, -15311, -15329, -15347, -15364, -15382, -15399, -15416, -15433, -15450, -15466, -15483, -15499, -15515, -15531, -15547, -15563, -15579, -15594, -15609, -15625, -15640, -15655, -15669, -15684, -15698, -15713, -15727, -15741, -15755, -15768, -15782, -15795, -15809, -15822, -15835, -15847, -15860, -15873, -15885, -15897, -15909, -15921, -15933, -15944, -15956, -15967, -15978, -15989, -16000, -16011, -16022, -16032, -16042, -16052, -16062, -16072, -16082, -16091, -16101, -16110, -16119, -16128, -16136, -16145, -16154, -16162, -16170, -16178, -16186, -16193, -16201, -16208, -16216, -16223, -16230, -16236, -16243, -16249, -16256, -16262, -16268, -16274, -16279, -16285, -16290, -16296, -16301, -16306, -16310, -16315, -16319, -16324, -16328, -16332, -16336, -16339, -16343, -16346, -16350, -16353, -16356, -16358, -16361, -16363, -16366, -16368, -16370, -16372, -16373, -16375, -16376, -16378, -16379, -16380, -16380, -16381, -16382, -16382, -16382 },
                                                 '{ 50, 151, 251, 352, 452, 553, 653, 754, 854, 955, 1055, 1156, 1256, 1357, 1457, 1558, 1658, 1758, 1859, 1959, 2059, 2160, 2260, 2360, 2461, 2561, 2661, 2761, 2861, 2961, 3062, 3162, 3262, 3362, 3462, 3562, 3661, 3761, 3861, 3961, 4061, 4161, 4260, 4360, 4459, 4559, 4659, 4758, 4857, 4957, 5056, 5156, 5255, 5354, 5453, 5552, 5651, 5750, 5849, 5948, 6047, 6146, 6244, 6343, 6442, 6540, 6639, 6737, 6835, 6934, 7032, 7130, 7228, 7326, 7424, 7522, 7620, 7717, 7815, 7913, 8010, 8108, 8205, 8302, 8400, 8497, 8594, 8691, 8788, 8884, 8981, 9078, 9174, 9271, 9367, 9463, 9560, 9656, 9752, 9848, 9943, 10039, 10135, 10230, 10326, 10421, 10516, 10612, 10707, 10802, 10896, 10991, 11086, 11180, 11275, 11369, 11463, 11557, 11652, 11745, 11839, 11933, 12026, 12120, 12213, 12306, 12400, 12493, 12585, 12678, 12771, 12863, 12956, 13048, 13140, 13232, 13324, 13416, 13507, 13599, 13690, 13782, 13873, 13964, 14055, 14145, 14236, 14327, 14417, 14507, 14597, 14687, 14777, 14866, 14956, 15045, 15135, 15224, 15313, 15401, 15490, 15579, 15667, 15755, 15843, 15931, 16019, 16107, 16194, 16281, 16368, 16455, 16542, 16629, 16716, 16802, 16888, 16974, 17060, 17146, 17231, 17317, 17402, 17487, 17572, 17657, 17742, 17826, 17910, 17994, 18078, 18162, 18246, 18329, 18412, 18495, 18578, 18661, 18743, 18826, 18908, 18990, 19072, 19153, 19235, 19316, 19397, 19478, 19559, 19640, 19720, 19800, 19880, 19960, 20040, 20119, 20198, 20277, 20356, 20435, 20513, 20592, 20670, 20748, 20825, 20903, 20980, 21057, 21134, 21211, 21287, 21364, 21440, 21516, 21592, 21667, 21742, 21817, 21892, 21967, 22042, 22116, 22190, 22264, 22337, 22411, 22484, 22557, 22630, 22702, 22775, 22847, 22919, 22991, 23062, 23133, 23205, 23275, 23346, 23416, 23487, 23557, 23626, 23696, 23765, 23834, 23903, 23972, 24040, 24109, 24176, 24244, 24312, 24379, 24446, 24513, 24579, 24646, 24712, 24778, 24843, 24909, 24974, 25039, 25104, 25168, 25233, 25297, 25360, 25424, 25487, 25550, 25613, 25676, 25738, 25800, 25862, 25923, 25985, 26046, 26107, 26167, 26228, 26288, 26348, 26407, 26467, 26526, 26585, 26643, 26702, 26760, 26818, 26876, 26933, 26990, 27047, 27103, 27160, 27216, 27272, 27327, 27383, 27438, 27493, 27547, 27601, 27656, 27709, 27763, 27816, 27869, 27922, 27974, 28027, 28078, 28130, 28182, 28233, 28284, 28334, 28385, 28435, 28484, 28534, 28583, 28632, 28681, 28729, 28778, 28826, 28873, 28921, 28968, 29015, 29061, 29107, 29154, 29199, 29245, 29290, 29335, 29380, 29424, 29468, 29512, 29555, 29599, 29642, 29684, 29727, 29769, 29811, 29852, 29894, 29935, 29975, 30016, 30056, 30096, 30135, 30175, 30214, 30253, 30291, 30329, 30367, 30405, 30442, 30479, 30516, 30552, 30588, 30624, 30660, 30695, 30730, 30765, 30799, 30834, 30868, 30901, 30934, 30967, 31000, 31032, 31065, 31096, 31128, 31159, 31190, 31221, 31251, 31281, 31311, 31340, 31370, 31399, 31427, 31455, 31483, 31511, 31539, 31566, 31592, 31619, 31645, 31671, 31697, 31722, 31747, 31772, 31796, 31820, 31844, 31868, 31891, 31914, 31936, 31959, 31981, 32003, 32024, 32045, 32066, 32086, 32107, 32127, 32146, 32165, 32184, 32203, 32222, 32240, 32257, 32275, 32292, 32309, 32326, 32342, 32358, 32374, 32389, 32404, 32419, 32433, 32447, 32461, 32475, 32488, 32501, 32513, 32526, 32538, 32549, 32561, 32572, 32583, 32593, 32603, 32613, 32623, 32632, 32641, 32649, 32658, 32666, 32673, 32681, 32688, 32695, 32701, 32707, 32713, 32719, 32724, 32729, 32734, 32738, 32742, 32746, 32749, 32752, 32755, 32757, 32759, 32761, 32763, 32764, 32765, 32766, 32766, -50, -151, -251, -352, -452, -553, -653, -754, -854, -955, -1055, -1156, -1256, -1357, -1457, -1558, -1658, -1758, -1859, -1959, -2059, -2160, -2260, -2360, -2461, -2561, -2661, -2761, -2861, -2961, -3062, -3162, -3262, -3362, -3462, -3562, -3661, -3761, -3861, -3961, -4061, -4161, -4260, -4360, -4459, -4559, -4659, -4758, -4857, -4957, -5056, -5156, -5255, -5354, -5453, -5552, -5651, -5750, -5849, -5948, -6047, -6146, -6244, -6343, -6442, -6540, -6639, -6737, -6835, -6934, -7032, -7130, -7228, -7326, -7424, -7522, -7620, -7717, -7815, -7913, -8010, -8108, -8205, -8302, -8400, -8497, -8594, -8691, -8788, -8884, -8981, -9078, -9174, -9271, -9367, -9463, -9560, -9656, -9752, -9848, -9943, -10039, -10135, -10230, -10326, -10421, -10516, -10612, -10707, -10802, -10896, -10991, -11086, -11180, -11275, -11369, -11463, -11557, -11652, -11745, -11839, -11933, -12026, -12120, -12213, -12306, -12400, -12493, -12585, -12678, -12771, -12863, -12956, -13048, -13140, -13232, -13324, -13416, -13507, -13599, -13690, -13782, -13873, -13964, -14055, -14145, -14236, -14327, -14417, -14507, -14597, -14687, -14777, -14866, -14956, -15045, -15135, -15224, -15313, -15401, -15490, -15579, -15667, -15755, -15843, -15931, -16019, -16107, -16194, -16281, -16368, -16455, -16542, -16629, -16716, -16802, -16888, -16974, -17060, -17146, -17231, -17317, -17402, -17487, -17572, -17657, -17742, -17826, -17910, -17994, -18078, -18162, -18246, -18329, -18412, -18495, -18578, -18661, -18743, -18826, -18908, -18990, -19072, -19153, -19235, -19316, -19397, -19478, -19559, -19640, -19720, -19800, -19880, -19960, -20040, -20119, -20198, -20277, -20356, -20435, -20513, -20592, -20670, -20748, -20825, -20903, -20980, -21057, -21134, -21211, -21287, -21364, -21440, -21516, -21592, -21667, -21742, -21817, -21892, -21967, -22042, -22116, -22190, -22264, -22337, -22411, -22484, -22557, -22630, -22702, -22775, -22847, -22919, -22991, -23062, -23133, -23205, -23275, -23346, -23416, -23487, -23557, -23626, -23696, -23765, -23834, -23903, -23972, -24040, -24109, -24176, -24244, -24312, -24379, -24446, -24513, -24579, -24646, -24712, -24778, -24843, -24909, -24974, -25039, -25104, -25168, -25233, -25297, -25360, -25424, -25487, -25550, -25613, -25676, -25738, -25800, -25862, -25923, -25985, -26046, -26107, -26167, -26228, -26288, -26348, -26407, -26467, -26526, -26585, -26643, -26702, -26760, -26818, -26876, -26933, -26990, -27047, -27103, -27160, -27216, -27272, -27327, -27383, -27438, -27493, -27547, -27601, -27656, -27709, -27763, -27816, -27869, -27922, -27974, -28027, -28078, -28130, -28182, -28233, -28284, -28334, -28385, -28435, -28484, -28534, -28583, -28632, -28681, -28729, -28778, -28826, -28873, -28921, -28968, -29015, -29061, -29107, -29154, -29199, -29245, -29290, -29335, -29380, -29424, -29468, -29512, -29555, -29599, -29642, -29684, -29727, -29769, -29811, -29852, -29894, -29935, -29975, -30016, -30056, -30096, -30135, -30175, -30214, -30253, -30291, -30329, -30367, -30405, -30442, -30479, -30516, -30552, -30588, -30624, -30660, -30695, -30730, -30765, -30799, -30834, -30868, -30901, -30934, -30967, -31000, -31032, -31065, -31096, -31128, -31159, -31190, -31221, -31251, -31281, -31311, -31340, -31370, -31399, -31427, -31455, -31483, -31511, -31539, -31566, -31592, -31619, -31645, -31671, -31697, -31722, -31747, -31772, -31796, -31820, -31844, -31868, -31891, -31914, -31936, -31959, -31981, -32003, -32024, -32045, -32066, -32086, -32107, -32127, -32146, -32165, -32184, -32203, -32222, -32240, -32257, -32275, -32292, -32309, -32326, -32342, -32358, -32374, -32389, -32404, -32419, -32433, -32447, -32461, -32475, -32488, -32501, -32513, -32526, -32538, -32549, -32561, -32572, -32583, -32593, -32603, -32613, -32623, -32632, -32641, -32649, -32658, -32666, -32673, -32681, -32688, -32695, -32701, -32707, -32713, -32719, -32724, -32729, -32734, -32738, -32742, -32746, -32749, -32752, -32755, -32757, -32759, -32761, -32763, -32764, -32765, -32766, -32766 },
                                                 '{ 101, 302, 503, 704, 905, 1106, 1307, 1508, 1709, 1910, 2111, 2312, 2513, 2713, 2914, 3115, 3316, 3517, 3718, 3918, 4119, 4320, 4520, 4721, 4921, 5122, 5322, 5522, 5723, 5923, 6123, 6323, 6523, 6724, 6923, 7123, 7323, 7523, 7723, 7922, 8122, 8321, 8521, 8720, 8919, 9118, 9317, 9516, 9715, 9914, 10113, 10311, 10510, 10708, 10907, 11105, 11303, 11501, 11699, 11896, 12094, 12292, 12489, 12686, 12884, 13081, 13278, 13474, 13671, 13868, 14064, 14260, 14457, 14653, 14849, 15044, 15240, 15435, 15631, 15826, 16021, 16216, 16411, 16605, 16800, 16994, 17188, 17382, 17576, 17769, 17963, 18156, 18349, 18542, 18735, 18927, 19120, 19312, 19504, 19696, 19887, 20079, 20270, 20461, 20652, 20843, 21033, 21224, 21414, 21604, 21794, 21983, 22172, 22361, 22550, 22739, 22927, 23116, 23304, 23492, 23679, 23866, 24054, 24241, 24427, 24614, 24800, 24986, 25172, 25357, 25542, 25727, 25912, 26097, 26281, 26465, 26649, 26832, 27016, 27199, 27382, 27564, 27746, 27928, 28110, 28292, 28473, 28654, 28835, 29015, 29195, 29375, 29555, 29734, 29913, 30092, 30270, 30448, 30626, 30804, 30981, 31158, 31335, 31511, 31687, 31863, 32039, 32214, 32389, 32564, 32738, 32912, 33086, 33259, 33432, 33605, 33777, 33950, 34121, 34293, 34464, 34635, 34805, 34976, 35145, 35315, 35484, 35653, 35822, 35990, 36158, 36325, 36492, 36659, 36826, 36992, 37157, 37323, 37488, 37653, 37817, 37981, 38145, 38308, 38471, 38634, 38796, 38958, 39119, 39280, 39441, 39601, 39761, 39921, 40080, 40239, 40398, 40556, 40714, 40871, 41028, 41185, 41341, 41497, 41652, 41807, 41962, 42116, 42270, 42423, 42576, 42729, 42881, 43033, 43184, 43335, 43486, 43636, 43786, 43935, 44084, 44233, 44381, 44529, 44676, 44823, 44969, 45115, 45261, 45406, 45551, 45695, 45839, 45983, 46126, 46268, 46411, 46552, 46694, 46834, 46975, 47115, 47254, 47393, 47532, 47670, 47808, 47945, 48082, 48218, 48354, 48490, 48625, 48759, 48894, 49027, 49160, 49293, 49425, 49557, 49688, 49819, 49950, 50080, 50209, 50338, 50467, 50595, 50722, 50849, 50976, 51102, 51228, 51353, 51477, 51602, 51725, 51848, 51971, 52093, 52215, 52336, 52457, 52577, 52697, 52816, 52935, 53054, 53171, 53289, 53405, 53522, 53637, 53753, 53867, 53982, 54095, 54209, 54321, 54434, 54545, 54656, 54767, 54877, 54987, 55096, 55205, 55313, 55420, 55527, 55634, 55740, 55845, 55950, 56055, 56159, 56262, 56365, 56467, 56569, 56670, 56771, 56871, 56971, 57070, 57168, 57266, 57364, 57461, 57557, 57653, 57748, 57843, 57937, 58031, 58124, 58217, 58309, 58400, 58491, 58582, 58672, 58761, 58850, 58938, 59025, 59112, 59199, 59285, 59370, 59455, 59539, 59623, 59706, 59789, 59871, 59952, 60033, 60114, 60193, 60273, 60351, 60429, 60507, 60584, 60660, 60736, 60811, 60886, 60960, 61034, 61106, 61179, 61251, 61322, 61392, 61462, 61532, 61601, 61669, 61737, 61804, 61871, 61937, 62002, 62067, 62131, 62195, 62258, 62320, 62382, 62443, 62504, 62564, 62624, 62683, 62741, 62799, 62856, 62913, 62969, 63024, 63079, 63133, 63187, 63240, 63292, 63344, 63395, 63446, 63496, 63545, 63594, 63643, 63690, 63737, 63784, 63830, 63875, 63920, 63964, 64007, 64050, 64092, 64134, 64175, 64215, 64255, 64294, 64333, 64371, 64408, 64445, 64481, 64517, 64552, 64586, 64620, 64653, 64686, 64718, 64749, 64780, 64810, 64839, 64868, 64897, 64924, 64951, 64978, 65004, 65029, 65053, 65077, 65101, 65124, 65146, 65167, 65188, 65208, 65228, 65247, 65266, 65284, 65301, 65317, 65334, 65349, 65364, 65378, 65391, 65404, 65417, 65428, 65440, 65450, 65460, 65469, 65478, 65486, 65493, 65500, 65506, 65512, 65517, 65521, 65525, 65528, 65530, 65532, 65533, 65534, -101, -302, -503, -704, -905, -1106, -1307, -1508, -1709, -1910, -2111, -2312, -2513, -2713, -2914, -3115, -3316, -3517, -3718, -3918, -4119, -4320, -4520, -4721, -4921, -5122, -5322, -5522, -5723, -5923, -6123, -6323, -6523, -6724, -6923, -7123, -7323, -7523, -7723, -7922, -8122, -8321, -8521, -8720, -8919, -9118, -9317, -9516, -9715, -9914, -10113, -10311, -10510, -10708, -10907, -11105, -11303, -11501, -11699, -11896, -12094, -12292, -12489, -12686, -12884, -13081, -13278, -13474, -13671, -13868, -14064, -14260, -14457, -14653, -14849, -15044, -15240, -15435, -15631, -15826, -16021, -16216, -16411, -16605, -16800, -16994, -17188, -17382, -17576, -17769, -17963, -18156, -18349, -18542, -18735, -18927, -19120, -19312, -19504, -19696, -19887, -20079, -20270, -20461, -20652, -20843, -21033, -21224, -21414, -21604, -21794, -21983, -22172, -22361, -22550, -22739, -22927, -23116, -23304, -23492, -23679, -23866, -24054, -24241, -24427, -24614, -24800, -24986, -25172, -25357, -25542, -25727, -25912, -26097, -26281, -26465, -26649, -26832, -27016, -27199, -27382, -27564, -27746, -27928, -28110, -28292, -28473, -28654, -28835, -29015, -29195, -29375, -29555, -29734, -29913, -30092, -30270, -30448, -30626, -30804, -30981, -31158, -31335, -31511, -31687, -31863, -32039, -32214, -32389, -32564, -32738, -32912, -33086, -33259, -33432, -33605, -33777, -33950, -34121, -34293, -34464, -34635, -34805, -34976, -35145, -35315, -35484, -35653, -35822, -35990, -36158, -36325, -36492, -36659, -36826, -36992, -37157, -37323, -37488, -37653, -37817, -37981, -38145, -38308, -38471, -38634, -38796, -38958, -39119, -39280, -39441, -39601, -39761, -39921, -40080, -40239, -40398, -40556, -40714, -40871, -41028, -41185, -41341, -41497, -41652, -41807, -41962, -42116, -42270, -42423, -42576, -42729, -42881, -43033, -43184, -43335, -43486, -43636, -43786, -43935, -44084, -44233, -44381, -44529, -44676, -44823, -44969, -45115, -45261, -45406, -45551, -45695, -45839, -45983, -46126, -46268, -46411, -46552, -46694, -46834, -46975, -47115, -47254, -47393, -47532, -47670, -47808, -47945, -48082, -48218, -48354, -48490, -48625, -48759, -48894, -49027, -49160, -49293, -49425, -49557, -49688, -49819, -49950, -50080, -50209, -50338, -50467, -50595, -50722, -50849, -50976, -51102, -51228, -51353, -51477, -51602, -51725, -51848, -51971, -52093, -52215, -52336, -52457, -52577, -52697, -52816, -52935, -53054, -53171, -53289, -53405, -53522, -53637, -53753, -53867, -53982, -54095, -54209, -54321, -54434, -54545, -54656, -54767, -54877, -54987, -55096, -55205, -55313, -55420, -55527, -55634, -55740, -55845, -55950, -56055, -56159, -56262, -56365, -56467, -56569, -56670, -56771, -56871, -56971, -57070, -57168, -57266, -57364, -57461, -57557, -57653, -57748, -57843, -57937, -58031, -58124, -58217, -58309, -58400, -58491, -58582, -58672, -58761, -58850, -58938, -59025, -59112, -59199, -59285, -59370, -59455, -59539, -59623, -59706, -59789, -59871, -59952, -60033, -60114, -60193, -60273, -60351, -60429, -60507, -60584, -60660, -60736, -60811, -60886, -60960, -61034, -61106, -61179, -61251, -61322, -61392, -61462, -61532, -61601, -61669, -61737, -61804, -61871, -61937, -62002, -62067, -62131, -62195, -62258, -62320, -62382, -62443, -62504, -62564, -62624, -62683, -62741, -62799, -62856, -62913, -62969, -63024, -63079, -63133, -63187, -63240, -63292, -63344, -63395, -63446, -63496, -63545, -63594, -63643, -63690, -63737, -63784, -63830, -63875, -63920, -63964, -64007, -64050, -64092, -64134, -64175, -64215, -64255, -64294, -64333, -64371, -64408, -64445, -64481, -64517, -64552, -64586, -64620, -64653, -64686, -64718, -64749, -64780, -64810, -64839, -64868, -64897, -64924, -64951, -64978, -65004, -65029, -65053, -65077, -65101, -65124, -65146, -65167, -65188, -65208, -65228, -65247, -65266, -65284, -65301, -65317, -65334, -65349, -65364, -65378, -65391, -65404, -65417, -65428, -65440, -65450, -65460, -65469, -65478, -65486, -65493, -65500, -65506, -65512, -65517, -65521, -65525, -65528, -65530, -65532, -65533, -65534 },
                                                 '{ 201, 603, 1005, 1407, 1809, 2212, 2614, 3016, 3418, 3820, 4222, 4623, 5025, 5427, 5829, 6230, 6632, 7034, 7435, 7837, 8238, 8639, 9040, 9442, 9843, 10244, 10644, 11045, 11446, 11846, 12247, 12647, 13047, 13447, 13847, 14247, 14647, 15046, 15446, 15845, 16244, 16643, 17042, 17440, 17839, 18237, 18635, 19033, 19431, 19828, 20226, 20623, 21020, 21417, 21813, 22210, 22606, 23002, 23398, 23793, 24189, 24584, 24979, 25373, 25768, 26162, 26556, 26949, 27343, 27736, 28129, 28521, 28914, 29306, 29698, 30089, 30480, 30871, 31262, 31652, 32042, 32432, 32822, 33211, 33600, 33988, 34376, 34764, 35152, 35539, 35926, 36312, 36699, 37084, 37470, 37855, 38240, 38624, 39008, 39392, 39776, 40158, 40541, 40923, 41305, 41687, 42068, 42448, 42828, 43208, 43588, 43967, 44345, 44724, 45101, 45479, 45856, 46232, 46608, 46984, 47359, 47734, 48108, 48482, 48855, 49228, 49600, 49972, 50344, 50715, 51086, 51456, 51825, 52194, 52563, 52931, 53299, 53666, 54032, 54399, 54764, 55129, 55494, 55858, 56221, 56584, 56947, 57309, 57670, 58031, 58391, 58751, 59110, 59469, 59827, 60184, 60541, 60898, 61253, 61609, 61963, 62317, 62671, 63024, 63376, 63728, 64079, 64429, 64779, 65128, 65477, 65825, 66172, 66519, 66865, 67211, 67556, 67900, 68244, 68587, 68929, 69271, 69612, 69952, 70292, 70631, 70969, 71307, 71644, 71981, 72316, 72651, 72986, 73319, 73652, 73985, 74316, 74647, 74977, 75307, 75635, 75963, 76291, 76617, 76943, 77269, 77593, 77917, 78240, 78562, 78883, 79204, 79524, 79843, 80162, 80480, 80797, 81113, 81428, 81743, 82057, 82370, 82683, 82994, 83305, 83615, 83925, 84233, 84541, 84848, 85154, 85459, 85763, 86067, 86370, 86672, 86973, 87274, 87573, 87872, 88170, 88467, 88763, 89059, 89354, 89647, 89940, 90232, 90524, 90814, 91103, 91392, 91680, 91967, 92253, 92538, 92822, 93106, 93389, 93670, 93951, 94231, 94510, 94788, 95066, 95342, 95617, 95892, 96166, 96438, 96710, 96981, 97251, 97520, 97789, 98056, 98322, 98588, 98852, 99116, 99379, 99640, 99901, 100161, 100420, 100678, 100935, 101191, 101446, 101700, 101953, 102205, 102457, 102707, 102956, 103205, 103452, 103699, 103944, 104188, 104432, 104674, 104916, 105156, 105396, 105635, 105872, 106109, 106344, 106579, 106812, 107045, 107276, 107507, 107736, 107965, 108192, 108419, 108644, 108869, 109092, 109315, 109536, 109756, 109976, 110194, 110411, 110627, 110842, 111056, 111269, 111481, 111692, 111902, 112111, 112319, 112526, 112731, 112936, 113139, 113342, 113543, 113744, 113943, 114141, 114338, 114534, 114729, 114923, 115116, 115308, 115498, 115688, 115876, 116064, 116250, 116435, 116619, 116802, 116984, 117165, 117345, 117523, 117701, 117877, 118053, 118227, 118400, 118572, 118742, 118912, 119081, 119248, 119414, 119580, 119744, 119907, 120069, 120229, 120389, 120547, 120705, 120861, 121016, 121170, 121322, 121474, 121624, 121774, 121922, 122069, 122215, 122360, 122503, 122645, 122787, 122927, 123066, 123204, 123340, 123476, 123610, 123743, 123875, 124006, 124136, 124264, 124391, 124518, 124642, 124766, 124889, 125010, 125131, 125250, 125368, 125484, 125600, 125714, 125827, 125939, 126050, 126160, 126268, 126376, 126482, 126586, 126690, 126793, 126894, 126994, 127093, 127191, 127287, 127382, 127477, 127569, 127661, 127752, 127841, 127929, 128016, 128102, 128186, 128269, 128352, 128432, 128512, 128591, 128668, 128744, 128819, 128892, 128965, 129036, 129106, 129174, 129242, 129308, 129373, 129437, 129500, 129561, 129622, 129681, 129738, 129795, 129850, 129904, 129957, 130009, 130059, 130109, 130157, 130203, 130249, 130293, 130336, 130378, 130419, 130458, 130497, 130533, 130569, 130604, 130637, 130669, 130700, 130729, 130758, 130785, 130811, 130835, 130859, 130881, 130902, 130922, 130940, 130958, 130974, 130988, 131002, 131014, 131025, 131035, 131044, 131051, 131057, 131062, 131066, 131069, 131070, -201, -603, -1005, -1407, -1809, -2212, -2614, -3016, -3418, -3820, -4222, -4623, -5025, -5427, -5829, -6230, -6632, -7034, -7435, -7837, -8238, -8639, -9040, -9442, -9843, -10244, -10644, -11045, -11446, -11846, -12247, -12647, -13047, -13447, -13847, -14247, -14647, -15046, -15446, -15845, -16244, -16643, -17042, -17440, -17839, -18237, -18635, -19033, -19431, -19828, -20226, -20623, -21020, -21417, -21813, -22210, -22606, -23002, -23398, -23793, -24189, -24584, -24979, -25373, -25768, -26162, -26556, -26949, -27343, -27736, -28129, -28521, -28914, -29306, -29698, -30089, -30480, -30871, -31262, -31652, -32042, -32432, -32822, -33211, -33600, -33988, -34376, -34764, -35152, -35539, -35926, -36312, -36699, -37084, -37470, -37855, -38240, -38624, -39008, -39392, -39776, -40158, -40541, -40923, -41305, -41687, -42068, -42448, -42828, -43208, -43588, -43967, -44345, -44724, -45101, -45479, -45856, -46232, -46608, -46984, -47359, -47734, -48108, -48482, -48855, -49228, -49600, -49972, -50344, -50715, -51086, -51456, -51825, -52194, -52563, -52931, -53299, -53666, -54032, -54399, -54764, -55129, -55494, -55858, -56221, -56584, -56947, -57309, -57670, -58031, -58391, -58751, -59110, -59469, -59827, -60184, -60541, -60898, -61253, -61609, -61963, -62317, -62671, -63024, -63376, -63728, -64079, -64429, -64779, -65128, -65477, -65825, -66172, -66519, -66865, -67211, -67556, -67900, -68244, -68587, -68929, -69271, -69612, -69952, -70292, -70631, -70969, -71307, -71644, -71981, -72316, -72651, -72986, -73319, -73652, -73985, -74316, -74647, -74977, -75307, -75635, -75963, -76291, -76617, -76943, -77269, -77593, -77917, -78240, -78562, -78883, -79204, -79524, -79843, -80162, -80480, -80797, -81113, -81428, -81743, -82057, -82370, -82683, -82994, -83305, -83615, -83925, -84233, -84541, -84848, -85154, -85459, -85763, -86067, -86370, -86672, -86973, -87274, -87573, -87872, -88170, -88467, -88763, -89059, -89354, -89647, -89940, -90232, -90524, -90814, -91103, -91392, -91680, -91967, -92253, -92538, -92822, -93106, -93389, -93670, -93951, -94231, -94510, -94788, -95066, -95342, -95617, -95892, -96166, -96438, -96710, -96981, -97251, -97520, -97789, -98056, -98322, -98588, -98852, -99116, -99379, -99640, -99901, -100161, -100420, -100678, -100935, -101191, -101446, -101700, -101953, -102205, -102457, -102707, -102956, -103205, -103452, -103699, -103944, -104188, -104432, -104674, -104916, -105156, -105396, -105635, -105872, -106109, -106344, -106579, -106812, -107045, -107276, -107507, -107736, -107965, -108192, -108419, -108644, -108869, -109092, -109315, -109536, -109756, -109976, -110194, -110411, -110627, -110842, -111056, -111269, -111481, -111692, -111902, -112111, -112319, -112526, -112731, -112936, -113139, -113342, -113543, -113744, -113943, -114141, -114338, -114534, -114729, -114923, -115116, -115308, -115498, -115688, -115876, -116064, -116250, -116435, -116619, -116802, -116984, -117165, -117345, -117523, -117701, -117877, -118053, -118227, -118400, -118572, -118742, -118912, -119081, -119248, -119414, -119580, -119744, -119907, -120069, -120229, -120389, -120547, -120705, -120861, -121016, -121170, -121322, -121474, -121624, -121774, -121922, -122069, -122215, -122360, -122503, -122645, -122787, -122927, -123066, -123204, -123340, -123476, -123610, -123743, -123875, -124006, -124136, -124264, -124391, -124518, -124642, -124766, -124889, -125010, -125131, -125250, -125368, -125484, -125600, -125714, -125827, -125939, -126050, -126160, -126268, -126376, -126482, -126586, -126690, -126793, -126894, -126994, -127093, -127191, -127287, -127382, -127477, -127569, -127661, -127752, -127841, -127929, -128016, -128102, -128186, -128269, -128352, -128432, -128512, -128591, -128668, -128744, -128819, -128892, -128965, -129036, -129106, -129174, -129242, -129308, -129373, -129437, -129500, -129561, -129622, -129681, -129738, -129795, -129850, -129904, -129957, -130009, -130059, -130109, -130157, -130203, -130249, -130293, -130336, -130378, -130419, -130458, -130497, -130533, -130569, -130604, -130637, -130669, -130700, -130729, -130758, -130785, -130811, -130835, -130859, -130881, -130902, -130922, -130940, -130958, -130974, -130988, -131002, -131014, -131025, -131035, -131044, -131051, -131057, -131062, -131066, -131069, -131070 },
                                                 '{ 402, 1206, 2011, 2815, 3619, 4423, 5227, 6031, 6835, 7639, 8443, 9247, 10051, 10854, 11658, 12461, 13264, 14067, 14870, 15673, 16476, 17279, 18081, 18883, 19685, 20487, 21289, 22090, 22892, 23693, 24494, 25294, 26095, 26895, 27695, 28494, 29293, 30093, 30891, 31690, 32488, 33286, 34083, 34881, 35678, 36474, 37270, 38066, 38862, 39657, 40452, 41246, 42040, 42834, 43627, 44420, 45212, 46004, 46796, 47587, 48378, 49168, 49958, 50747, 51536, 52324, 53112, 53899, 54686, 55472, 56258, 57043, 57828, 58612, 59396, 60179, 60961, 61743, 62524, 63305, 64085, 64865, 65644, 66422, 67200, 67977, 68753, 69529, 70304, 71078, 71852, 72625, 73398, 74170, 74941, 75711, 76480, 77249, 78018, 78785, 79552, 80318, 81083, 81847, 82611, 83374, 84136, 84897, 85658, 86417, 87176, 87934, 88691, 89448, 90203, 90958, 91712, 92465, 93217, 93968, 94719, 95468, 96217, 96964, 97711, 98457, 99202, 99946, 100689, 101431, 102172, 102912, 103651, 104389, 105127, 105863, 106598, 107332, 108066, 108798, 109529, 110259, 110988, 111716, 112443, 113169, 113894, 114618, 115341, 116063, 116783, 117503, 118221, 118938, 119654, 120369, 121083, 121796, 122508, 123218, 123927, 124635, 125342, 126048, 126753, 127456, 128158, 128859, 129559, 130258, 130955, 131651, 132346, 133039, 133732, 134423, 135113, 135801, 136488, 137174, 137859, 138542, 139225, 139905, 140585, 141263, 141940, 142615, 143289, 143962, 144634, 145304, 145972, 146640, 147306, 147970, 148633, 149295, 149956, 150614, 151272, 151928, 152583, 153236, 153888, 154538, 155187, 155835, 156481, 157125, 157768, 158410, 159050, 159688, 160325, 160961, 161595, 162227, 162858, 163488, 164116, 164742, 165367, 165990, 166612, 167232, 167850, 168467, 169083, 169696, 170309, 170919, 171528, 172136, 172741, 173345, 173948, 174549, 175148, 175746, 176341, 176936, 177528, 178119, 178708, 179296, 179882, 180466, 181048, 181629, 182208, 182786, 183361, 183935, 184507, 185078, 185646, 186213, 186779, 187342, 187904, 188464, 189022, 189578, 190133, 190685, 191236, 191785, 192333, 192878, 193422, 193964, 194504, 195042, 195579, 196113, 196646, 197177, 197706, 198233, 198759, 199282, 199804, 200323, 200841, 201357, 201871, 202383, 202893, 203402, 203908, 204412, 204915, 205416, 205914, 206411, 206906, 207399, 207889, 208378, 208865, 209350, 209833, 210315, 210794, 211271, 211746, 212219, 212690, 213159, 213626, 214091, 214554, 215016, 215475, 215932, 216387, 216840, 217290, 217739, 218186, 218631, 219074, 219514, 219953, 220389, 220824, 221256, 221686, 222115, 222541, 222965, 223387, 223806, 224224, 224640, 225053, 225464, 225874, 226281, 226686, 227088, 227489, 227888, 228284, 228678, 229071, 229460, 229848, 230234, 230617, 230999, 231378, 231755, 232129, 232502, 232872, 233241, 233607, 233970, 234332, 234691, 235049, 235404, 235756, 236107, 236455, 236801, 237145, 237487, 237826, 238163, 238498, 238831, 239161, 239489, 239815, 240139, 240460, 240779, 241096, 241411, 241723, 242033, 242341, 242647, 242950, 243251, 243549, 243846, 244140, 244431, 244721, 245008, 245293, 245575, 245856, 246133, 246409, 246682, 246953, 247222, 247488, 247752, 248014, 248273, 248530, 248785, 249037, 249287, 249534, 249780, 250023, 250263, 250501, 250737, 250971, 251202, 251430, 251657, 251881, 252102, 252322, 252538, 252753, 252965, 253175, 253382, 253587, 253790, 253990, 254188, 254383, 254576, 254767, 254955, 255141, 255324, 255505, 255684, 255860, 256034, 256205, 256374, 256541, 256705, 256867, 257026, 257183, 257337, 257490, 257639, 257786, 257931, 258074, 258213, 258351, 258486, 258619, 258749, 258877, 259002, 259125, 259245, 259363, 259479, 259592, 259703, 259811, 259917, 260020, 260121, 260219, 260315, 260409, 260500, 260589, 260675, 260759, 260840, 260919, 260995, 261069, 261140, 261209, 261276, 261340, 261402, 261461, 261518, 261572, 261624, 261673, 261720, 261764, 261806, 261846, 261883, 261917, 261949, 261979, 262006, 262031, 262053, 262072, 262090, 262105, 262117, 262127, 262134, 262139, 262142, -402, -1206, -2011, -2815, -3619, -4423, -5227, -6031, -6835, -7639, -8443, -9247, -10051, -10854, -11658, -12461, -13264, -14067, -14870, -15673, -16476, -17279, -18081, -18883, -19685, -20487, -21289, -22090, -22892, -23693, -24494, -25294, -26095, -26895, -27695, -28494, -29293, -30093, -30891, -31690, -32488, -33286, -34083, -34881, -35678, -36474, -37270, -38066, -38862, -39657, -40452, -41246, -42040, -42834, -43627, -44420, -45212, -46004, -46796, -47587, -48378, -49168, -49958, -50747, -51536, -52324, -53112, -53899, -54686, -55472, -56258, -57043, -57828, -58612, -59396, -60179, -60961, -61743, -62524, -63305, -64085, -64865, -65644, -66422, -67200, -67977, -68753, -69529, -70304, -71078, -71852, -72625, -73398, -74170, -74941, -75711, -76480, -77249, -78018, -78785, -79552, -80318, -81083, -81847, -82611, -83374, -84136, -84897, -85658, -86417, -87176, -87934, -88691, -89448, -90203, -90958, -91712, -92465, -93217, -93968, -94719, -95468, -96217, -96964, -97711, -98457, -99202, -99946, -100689, -101431, -102172, -102912, -103651, -104389, -105127, -105863, -106598, -107332, -108066, -108798, -109529, -110259, -110988, -111716, -112443, -113169, -113894, -114618, -115341, -116063, -116783, -117503, -118221, -118938, -119654, -120369, -121083, -121796, -122508, -123218, -123927, -124635, -125342, -126048, -126753, -127456, -128158, -128859, -129559, -130258, -130955, -131651, -132346, -133039, -133732, -134423, -135113, -135801, -136488, -137174, -137859, -138542, -139225, -139905, -140585, -141263, -141940, -142615, -143289, -143962, -144634, -145304, -145972, -146640, -147306, -147970, -148633, -149295, -149956, -150614, -151272, -151928, -152583, -153236, -153888, -154538, -155187, -155835, -156481, -157125, -157768, -158410, -159050, -159688, -160325, -160961, -161595, -162227, -162858, -163488, -164116, -164742, -165367, -165990, -166612, -167232, -167850, -168467, -169083, -169696, -170309, -170919, -171528, -172136, -172741, -173345, -173948, -174549, -175148, -175746, -176341, -176936, -177528, -178119, -178708, -179296, -179882, -180466, -181048, -181629, -182208, -182786, -183361, -183935, -184507, -185078, -185646, -186213, -186779, -187342, -187904, -188464, -189022, -189578, -190133, -190685, -191236, -191785, -192333, -192878, -193422, -193964, -194504, -195042, -195579, -196113, -196646, -197177, -197706, -198233, -198759, -199282, -199804, -200323, -200841, -201357, -201871, -202383, -202893, -203402, -203908, -204412, -204915, -205416, -205914, -206411, -206906, -207399, -207889, -208378, -208865, -209350, -209833, -210315, -210794, -211271, -211746, -212219, -212690, -213159, -213626, -214091, -214554, -215016, -215475, -215932, -216387, -216840, -217290, -217739, -218186, -218631, -219074, -219514, -219953, -220389, -220824, -221256, -221686, -222115, -222541, -222965, -223387, -223806, -224224, -224640, -225053, -225464, -225874, -226281, -226686, -227088, -227489, -227888, -228284, -228678, -229071, -229460, -229848, -230234, -230617, -230999, -231378, -231755, -232129, -232502, -232872, -233241, -233607, -233970, -234332, -234691, -235049, -235404, -235756, -236107, -236455, -236801, -237145, -237487, -237826, -238163, -238498, -238831, -239161, -239489, -239815, -240139, -240460, -240779, -241096, -241411, -241723, -242033, -242341, -242647, -242950, -243251, -243549, -243846, -244140, -244431, -244721, -245008, -245293, -245575, -245856, -246133, -246409, -246682, -246953, -247222, -247488, -247752, -248014, -248273, -248530, -248785, -249037, -249287, -249534, -249780, -250023, -250263, -250501, -250737, -250971, -251202, -251430, -251657, -251881, -252102, -252322, -252538, -252753, -252965, -253175, -253382, -253587, -253790, -253990, -254188, -254383, -254576, -254767, -254955, -255141, -255324, -255505, -255684, -255860, -256034, -256205, -256374, -256541, -256705, -256867, -257026, -257183, -257337, -257490, -257639, -257786, -257931, -258074, -258213, -258351, -258486, -258619, -258749, -258877, -259002, -259125, -259245, -259363, -259479, -259592, -259703, -259811, -259917, -260020, -260121, -260219, -260315, -260409, -260500, -260589, -260675, -260759, -260840, -260919, -260995, -261069, -261140, -261209, -261276, -261340, -261402, -261461, -261518, -261572, -261624, -261673, -261720, -261764, -261806, -261846, -261883, -261917, -261949, -261979, -262006, -262031, -262053, -262072, -262090, -262105, -262117, -262127, -262134, -262139, -262142 },
                                                 '{ 804, 2413, 4021, 5630, 7238, 8846, 10454, 12063, 13671, 15278, 16886, 18494, 20101, 21708, 23315, 24922, 26529, 28135, 29741, 31347, 32952, 34557, 36162, 37767, 39371, 40975, 42578, 44181, 45784, 47386, 48987, 50589, 52189, 53790, 55389, 56989, 58587, 60185, 61783, 63380, 64976, 66572, 68167, 69762, 71356, 72949, 74541, 76133, 77724, 79314, 80904, 82493, 84081, 85668, 87255, 88840, 90425, 92009, 93592, 95174, 96756, 98336, 99916, 101494, 103072, 104648, 106224, 107799, 109372, 110945, 112516, 114087, 115656, 117225, 118792, 120358, 121923, 123487, 125049, 126611, 128171, 129730, 131288, 132845, 134400, 135954, 137507, 139058, 140609, 142158, 143705, 145251, 146796, 148340, 149882, 151422, 152962, 154499, 156036, 157571, 159104, 160636, 162166, 163695, 165222, 166748, 168272, 169795, 171316, 172835, 174353, 175869, 177384, 178896, 180407, 181917, 183425, 184931, 186435, 187937, 189438, 190937, 192434, 193929, 195423, 196914, 198404, 199892, 201378, 202862, 204345, 205825, 207303, 208780, 210254, 211727, 213197, 214666, 216132, 217597, 219059, 220519, 221978, 223434, 224888, 226340, 227790, 229237, 230683, 232126, 233567, 235006, 236443, 237877, 239310, 240740, 242167, 243593, 245016, 246437, 247856, 249272, 250686, 252097, 253506, 254913, 256317, 257719, 259119, 260516, 261911, 263303, 264693, 266080, 267464, 268847, 270226, 271603, 272978, 274350, 275719, 277086, 278450, 279812, 281171, 282527, 283881, 285232, 286580, 287925, 289268, 290608, 291946, 293281, 294612, 295942, 297268, 298591, 299912, 301230, 302545, 303857, 305167, 306473, 307777, 309078, 310375, 311670, 312962, 314251, 315537, 316820, 318100, 319378, 320652, 321923, 323191, 324456, 325718, 326977, 328232, 329485, 330735, 331981, 333225, 334465, 335702, 336936, 338167, 339394, 340619, 341840, 343058, 344272, 345484, 346692, 347897, 349099, 350297, 351492, 352684, 353873, 355058, 356240, 357418, 358593, 359765, 360933, 362098, 363260, 364418, 365573, 366724, 367872, 369016, 370157, 371294, 372428, 373558, 374685, 375809, 376928, 378045, 379157, 380266, 381372, 382474, 383572, 384667, 385758, 386846, 387930, 389010, 390086, 391159, 392228, 393294, 394356, 395414, 396468, 397519, 398565, 399609, 400648, 401684, 402715, 403743, 404768, 405788, 406805, 407817, 408826, 409831, 410833, 411830, 412823, 413813, 414799, 415781, 416758, 417732, 418702, 419668, 420631, 421589, 422543, 423493, 424439, 425382, 426320, 427254, 428184, 429111, 430033, 430951, 431865, 432775, 433681, 434583, 435480, 436374, 437263, 438149, 439030, 439907, 440780, 441649, 442514, 443374, 444231, 445083, 445931, 446775, 447614, 448450, 449281, 450108, 450930, 451749, 452563, 453373, 454179, 454980, 455777, 456570, 457359, 458143, 458923, 459698, 460470, 461236, 461999, 462757, 463511, 464261, 465006, 465747, 466483, 467215, 467943, 468666, 469385, 470099, 470809, 471514, 472215, 472912, 473604, 474292, 474975, 475654, 476328, 476998, 477663, 478324, 478981, 479632, 480280, 480923, 481561, 482195, 482824, 483448, 484068, 484684, 485295, 485901, 486503, 487101, 487693, 488281, 488865, 489444, 490018, 490588, 491153, 491713, 492269, 492820, 493367, 493908, 494446, 494978, 495506, 496029, 496548, 497062, 497571, 498076, 498576, 499071, 499561, 500047, 500528, 501004, 501476, 501943, 502405, 502863, 503315, 503763, 504207, 504645, 505079, 505508, 505932, 506352, 506766, 507176, 507581, 507982, 508377, 508768, 509154, 509536, 509912, 510284, 510651, 511013, 511370, 511722, 512070, 512413, 512751, 513084, 513412, 513736, 514054, 514368, 514677, 514981, 515280, 515575, 515864, 516149, 516429, 516704, 516974, 517239, 517500, 517755, 518006, 518252, 518492, 518728, 518960, 519186, 519407, 519624, 519835, 520042, 520244, 520441, 520633, 520820, 521002, 521179, 521352, 521519, 521682, 521839, 521992, 522140, 522283, 522421, 522554, 522682, 522805, 522924, 523037, 523146, 523249, 523348, 523441, 523530, 523614, 523693, 523767, 523836, 523900, 523959, 524014, 524063, 524107, 524147, 524181, 524211, 524236, 524255, 524270, 524280, 524285, -804, -2413, -4021, -5630, -7238, -8846, -10454, -12063, -13671, -15278, -16886, -18494, -20101, -21708, -23315, -24922, -26529, -28135, -29741, -31347, -32952, -34557, -36162, -37767, -39371, -40975, -42578, -44181, -45784, -47386, -48987, -50589, -52189, -53790, -55389, -56989, -58587, -60185, -61783, -63380, -64976, -66572, -68167, -69762, -71356, -72949, -74541, -76133, -77724, -79314, -80904, -82493, -84081, -85668, -87255, -88840, -90425, -92009, -93592, -95174, -96756, -98336, -99916, -101494, -103072, -104648, -106224, -107799, -109372, -110945, -112516, -114087, -115656, -117225, -118792, -120358, -121923, -123487, -125049, -126611, -128171, -129730, -131288, -132845, -134400, -135954, -137507, -139058, -140609, -142158, -143705, -145251, -146796, -148340, -149882, -151422, -152962, -154499, -156036, -157571, -159104, -160636, -162166, -163695, -165222, -166748, -168272, -169795, -171316, -172835, -174353, -175869, -177384, -178896, -180407, -181917, -183425, -184931, -186435, -187937, -189438, -190937, -192434, -193929, -195423, -196914, -198404, -199892, -201378, -202862, -204345, -205825, -207303, -208780, -210254, -211727, -213197, -214666, -216132, -217597, -219059, -220519, -221978, -223434, -224888, -226340, -227790, -229237, -230683, -232126, -233567, -235006, -236443, -237877, -239310, -240740, -242167, -243593, -245016, -246437, -247856, -249272, -250686, -252097, -253506, -254913, -256317, -257719, -259119, -260516, -261911, -263303, -264693, -266080, -267464, -268847, -270226, -271603, -272978, -274350, -275719, -277086, -278450, -279812, -281171, -282527, -283881, -285232, -286580, -287925, -289268, -290608, -291946, -293281, -294612, -295942, -297268, -298591, -299912, -301230, -302545, -303857, -305167, -306473, -307777, -309078, -310375, -311670, -312962, -314251, -315537, -316820, -318100, -319378, -320652, -321923, -323191, -324456, -325718, -326977, -328232, -329485, -330735, -331981, -333225, -334465, -335702, -336936, -338167, -339394, -340619, -341840, -343058, -344272, -345484, -346692, -347897, -349099, -350297, -351492, -352684, -353873, -355058, -356240, -357418, -358593, -359765, -360933, -362098, -363260, -364418, -365573, -366724, -367872, -369016, -370157, -371294, -372428, -373558, -374685, -375809, -376928, -378045, -379157, -380266, -381372, -382474, -383572, -384667, -385758, -386846, -387930, -389010, -390086, -391159, -392228, -393294, -394356, -395414, -396468, -397519, -398565, -399609, -400648, -401684, -402715, -403743, -404768, -405788, -406805, -407817, -408826, -409831, -410833, -411830, -412823, -413813, -414799, -415781, -416758, -417732, -418702, -419668, -420631, -421589, -422543, -423493, -424439, -425382, -426320, -427254, -428184, -429111, -430033, -430951, -431865, -432775, -433681, -434583, -435480, -436374, -437263, -438149, -439030, -439907, -440780, -441649, -442514, -443374, -444231, -445083, -445931, -446775, -447614, -448450, -449281, -450108, -450930, -451749, -452563, -453373, -454179, -454980, -455777, -456570, -457359, -458143, -458923, -459698, -460470, -461236, -461999, -462757, -463511, -464261, -465006, -465747, -466483, -467215, -467943, -468666, -469385, -470099, -470809, -471514, -472215, -472912, -473604, -474292, -474975, -475654, -476328, -476998, -477663, -478324, -478981, -479632, -480280, -480923, -481561, -482195, -482824, -483448, -484068, -484684, -485295, -485901, -486503, -487101, -487693, -488281, -488865, -489444, -490018, -490588, -491153, -491713, -492269, -492820, -493367, -493908, -494446, -494978, -495506, -496029, -496548, -497062, -497571, -498076, -498576, -499071, -499561, -500047, -500528, -501004, -501476, -501943, -502405, -502863, -503315, -503763, -504207, -504645, -505079, -505508, -505932, -506352, -506766, -507176, -507581, -507982, -508377, -508768, -509154, -509536, -509912, -510284, -510651, -511013, -511370, -511722, -512070, -512413, -512751, -513084, -513412, -513736, -514054, -514368, -514677, -514981, -515280, -515575, -515864, -516149, -516429, -516704, -516974, -517239, -517500, -517755, -518006, -518252, -518492, -518728, -518960, -519186, -519407, -519624, -519835, -520042, -520244, -520441, -520633, -520820, -521002, -521179, -521352, -521519, -521682, -521839, -521992, -522140, -522283, -522421, -522554, -522682, -522805, -522924, -523037, -523146, -523249, -523348, -523441, -523530, -523614, -523693, -523767, -523836, -523900, -523959, -524014, -524063, -524107, -524147, -524181, -524211, -524236, -524255, -524270, -524280, -524285 },
                                                 '{ 1608, 4825, 8042, 11259, 14476, 17693, 20909, 24125, 27341, 30557, 33772, 36988, 40202, 43417, 46631, 49844, 53058, 56270, 59482, 62694, 65905, 69115, 72325, 75534, 78742, 81949, 85156, 88362, 91567, 94771, 97975, 101177, 104379, 107579, 110779, 113977, 117175, 120371, 123566, 126760, 129953, 133144, 136335, 139524, 142711, 145898, 149083, 152266, 155449, 158629, 161808, 164986, 168162, 171337, 174510, 177681, 180851, 184019, 187185, 190349, 193512, 196673, 199832, 202989, 206144, 209297, 212448, 215598, 218745, 221890, 225033, 228174, 231313, 234450, 237584, 240716, 243846, 246974, 250099, 253222, 256343, 259461, 262576, 265690, 268800, 271909, 275014, 278117, 281218, 284316, 287411, 290503, 293593, 296680, 299764, 302845, 305924, 308999, 312072, 315142, 318208, 321272, 324333, 327391, 330445, 333497, 336545, 339590, 342632, 345671, 348707, 351739, 354768, 357793, 360816, 363834, 366850, 369862, 372870, 375875, 378877, 381874, 384869, 387859, 390846, 393830, 396809, 399785, 402757, 405726, 408690, 411651, 414607, 417560, 420509, 423454, 426395, 429332, 432265, 435194, 438119, 441039, 443956, 446868, 449776, 452680, 455580, 458475, 461366, 464253, 467135, 470013, 472887, 475756, 478620, 481480, 484336, 487187, 490033, 492875, 495712, 498545, 501372, 504195, 507014, 509827, 512636, 515440, 518239, 521033, 523822, 526607, 529386, 532160, 534930, 537694, 540453, 543208, 545957, 548701, 551440, 554173, 556902, 559625, 562343, 565055, 567762, 570464, 573161, 575852, 578538, 581218, 583893, 586562, 589226, 591884, 594537, 597184, 599826, 602461, 605092, 607716, 610335, 612948, 615555, 618156, 620752, 623342, 625926, 628504, 631076, 633642, 636202, 638756, 641305, 643847, 646383, 648913, 651437, 653954, 656466, 658972, 661471, 663964, 666451, 668931, 671405, 673873, 676335, 678790, 681239, 683681, 686117, 688546, 690969, 693386, 695796, 698199, 700596, 702986, 705370, 707747, 710117, 712481, 714838, 717188, 719531, 721868, 724198, 726521, 728837, 731147, 733449, 735745, 738033, 740315, 742590, 744858, 747118, 749372, 751619, 753858, 756091, 758316, 760534, 762746, 764949, 767146, 769336, 771518, 773693, 775861, 778021, 780174, 782320, 784458, 786589, 788713, 790829, 792937, 795039, 797132, 799219, 801297, 803369, 805432, 807488, 809537, 811578, 813611, 815636, 817654, 819664, 821667, 823662, 825649, 827628, 829599, 831563, 833518, 835466, 837406, 839339, 841263, 843179, 845088, 846988, 848881, 850765, 852642, 854510, 856370, 858223, 860067, 861903, 863731, 865551, 867363, 869167, 870962, 872750, 874529, 876299, 878062, 879816, 881562, 883300, 885029, 886750, 888463, 890168, 891864, 893551, 895230, 896901, 898563, 900217, 901863, 903500, 905128, 906748, 908359, 909962, 911556, 913142, 914719, 916287, 917847, 919398, 920941, 922475, 924000, 925516, 927024, 928523, 930013, 931495, 932968, 934432, 935887, 937333, 938771, 940200, 941620, 943031, 944433, 945826, 947210, 948586, 949952, 951310, 952658, 953998, 955329, 956650, 957963, 959267, 960561, 961847, 963123, 964391, 965649, 966899, 968139, 969370, 970592, 971805, 973008, 974203, 975388, 976564, 977731, 978889, 980038, 981177, 982307, 983428, 984540, 985642, 986735, 987819, 988893, 989958, 991014, 992061, 993098, 994126, 995144, 996153, 997153, 998143, 999124, 1000096, 1001058, 1002011, 1002954, 1003888, 1004812, 1005727, 1006633, 1007529, 1008415, 1009292, 1010160, 1011018, 1011866, 1012705, 1013535, 1014355, 1015165, 1015966, 1016757, 1017539, 1018311, 1019073, 1019826, 1020569, 1021303, 1022027, 1022742, 1023447, 1024142, 1024827, 1025503, 1026169, 1026826, 1027473, 1028110, 1028738, 1029356, 1029964, 1030563, 1031151, 1031731, 1032300, 1032860, 1033410, 1033950, 1034480, 1035001, 1035512, 1036014, 1036505, 1036987, 1037459, 1037921, 1038374, 1038816, 1039249, 1039673, 1040086, 1040490, 1040883, 1041267, 1041641, 1042006, 1042360, 1042705, 1043040, 1043365, 1043681, 1043986, 1044282, 1044568, 1044844, 1045110, 1045366, 1045613, 1045849, 1046076, 1046293, 1046500, 1046697, 1046885, 1047062, 1047230, 1047388, 1047536, 1047674, 1047802, 1047921, 1048029, 1048128, 1048217, 1048296, 1048365, 1048424, 1048473, 1048513, 1048543, 1048562, 1048572, -1608, -4825, -8042, -11259, -14476, -17693, -20909, -24125, -27341, -30557, -33772, -36988, -40202, -43417, -46631, -49844, -53058, -56270, -59482, -62694, -65905, -69115, -72325, -75534, -78742, -81949, -85156, -88362, -91567, -94771, -97975, -101177, -104379, -107579, -110779, -113977, -117175, -120371, -123566, -126760, -129953, -133144, -136335, -139524, -142711, -145898, -149083, -152266, -155449, -158629, -161808, -164986, -168162, -171337, -174510, -177681, -180851, -184019, -187185, -190349, -193512, -196673, -199832, -202989, -206144, -209297, -212448, -215598, -218745, -221890, -225033, -228174, -231313, -234450, -237584, -240716, -243846, -246974, -250099, -253222, -256343, -259461, -262576, -265690, -268800, -271909, -275014, -278117, -281218, -284316, -287411, -290503, -293593, -296680, -299764, -302845, -305924, -308999, -312072, -315142, -318208, -321272, -324333, -327391, -330445, -333497, -336545, -339590, -342632, -345671, -348707, -351739, -354768, -357793, -360816, -363834, -366850, -369862, -372870, -375875, -378877, -381874, -384869, -387859, -390846, -393830, -396809, -399785, -402757, -405726, -408690, -411651, -414607, -417560, -420509, -423454, -426395, -429332, -432265, -435194, -438119, -441039, -443956, -446868, -449776, -452680, -455580, -458475, -461366, -464253, -467135, -470013, -472887, -475756, -478620, -481480, -484336, -487187, -490033, -492875, -495712, -498545, -501372, -504195, -507014, -509827, -512636, -515440, -518239, -521033, -523822, -526607, -529386, -532160, -534930, -537694, -540453, -543208, -545957, -548701, -551440, -554173, -556902, -559625, -562343, -565055, -567762, -570464, -573161, -575852, -578538, -581218, -583893, -586562, -589226, -591884, -594537, -597184, -599826, -602461, -605092, -607716, -610335, -612948, -615555, -618156, -620752, -623342, -625926, -628504, -631076, -633642, -636202, -638756, -641305, -643847, -646383, -648913, -651437, -653954, -656466, -658972, -661471, -663964, -666451, -668931, -671405, -673873, -676335, -678790, -681239, -683681, -686117, -688546, -690969, -693386, -695796, -698199, -700596, -702986, -705370, -707747, -710117, -712481, -714838, -717188, -719531, -721868, -724198, -726521, -728837, -731147, -733449, -735745, -738033, -740315, -742590, -744858, -747118, -749372, -751619, -753858, -756091, -758316, -760534, -762746, -764949, -767146, -769336, -771518, -773693, -775861, -778021, -780174, -782320, -784458, -786589, -788713, -790829, -792937, -795039, -797132, -799219, -801297, -803369, -805432, -807488, -809537, -811578, -813611, -815636, -817654, -819664, -821667, -823662, -825649, -827628, -829599, -831563, -833518, -835466, -837406, -839339, -841263, -843179, -845088, -846988, -848881, -850765, -852642, -854510, -856370, -858223, -860067, -861903, -863731, -865551, -867363, -869167, -870962, -872750, -874529, -876299, -878062, -879816, -881562, -883300, -885029, -886750, -888463, -890168, -891864, -893551, -895230, -896901, -898563, -900217, -901863, -903500, -905128, -906748, -908359, -909962, -911556, -913142, -914719, -916287, -917847, -919398, -920941, -922475, -924000, -925516, -927024, -928523, -930013, -931495, -932968, -934432, -935887, -937333, -938771, -940200, -941620, -943031, -944433, -945826, -947210, -948586, -949952, -951310, -952658, -953998, -955329, -956650, -957963, -959267, -960561, -961847, -963123, -964391, -965649, -966899, -968139, -969370, -970592, -971805, -973008, -974203, -975388, -976564, -977731, -978889, -980038, -981177, -982307, -983428, -984540, -985642, -986735, -987819, -988893, -989958, -991014, -992061, -993098, -994126, -995144, -996153, -997153, -998143, -999124, -1000096, -1001058, -1002011, -1002954, -1003888, -1004812, -1005727, -1006633, -1007529, -1008415, -1009292, -1010160, -1011018, -1011866, -1012705, -1013535, -1014355, -1015165, -1015966, -1016757, -1017539, -1018311, -1019073, -1019826, -1020569, -1021303, -1022027, -1022742, -1023447, -1024142, -1024827, -1025503, -1026169, -1026826, -1027473, -1028110, -1028738, -1029356, -1029964, -1030563, -1031151, -1031731, -1032300, -1032860, -1033410, -1033950, -1034480, -1035001, -1035512, -1036014, -1036505, -1036987, -1037459, -1037921, -1038374, -1038816, -1039249, -1039673, -1040086, -1040490, -1040883, -1041267, -1041641, -1042006, -1042360, -1042705, -1043040, -1043365, -1043681, -1043986, -1044282, -1044568, -1044844, -1045110, -1045366, -1045613, -1045849, -1046076, -1046293, -1046500, -1046697, -1046885, -1047062, -1047230, -1047388, -1047536, -1047674, -1047802, -1047921, -1048029, -1048128, -1048217, -1048296, -1048365, -1048424, -1048473, -1048513, -1048543, -1048562, -1048572 } };

    (* ROM_STYLE = MEMORY_TYPE *) bit [DAT_WIDTH-1:0] c_lut_sin_rom [2**10];

    initial
      for ( int i = 0; i < 2**10; i++ )
        c_lut_sin_rom[i] = lutTaylor[DAT_WIDTH][i];

    typedef struct packed {
      logic [PHA_WIDTH-12:0] dat;
      logic [9:0] sin;
      logic [9:0] cos;
    } t_pha;

    typedef struct packed {
      logic [DAT_WIDTH-1:0] sin;
      logic [DAT_WIDTH-1:0] cos;
    } t_lut;

    function t_lut f_lut(input t_pha i_pha);
      f_lut.sin = c_lut_sin_rom[i_pha.sin];
      f_lut.cos = c_lut_sin_rom[i_pha.cos];
    endfunction : f_lut

    function t_lut f_rst();
      f_rst.sin = ( DOUBLE_REG && MEMORY_TYPE == "Block" ) ? 'X : '0;
      f_rst.cos = ( DOUBLE_REG && MEMORY_TYPE == "Block" ) ? 'X : '0;
    endfunction : f_rst

    t_pha w_lut_pha;
    assign w_lut_pha = i_lut_pha_dat;

    if ( SINGLE_REG ) begin : single_reg
      
      t_lut q_snl_osc_dat = '{default:'0};
      always @(posedge i_lut_a_clk_p)
        if ( i_lut_s_rst_p )
          q_snl_osc_dat <= f_rst();
        else if ( i_lut_pha_vld )
          q_snl_osc_dat <= f_lut(w_lut_pha);

      if ( DOUBLE_REG ) begin : double_reg

        t_lut q_dbl_osc_dat = '{default:'0};
        always @(posedge i_lut_a_clk_p)
          if ( w_lut_s_rst_p )
            q_dbl_osc_dat <= '{default:'0};
          else if ( w_snl_osc_vld )
            q_dbl_osc_dat <= q_snl_osc_dat;

        assign o_lut_osc_dat = { w_lut_pha.dat, q_dbl_osc_dat };

      end : double_reg else begin : single_out

        assign o_lut_osc_dat = { w_lut_pha.dat, q_snl_osc_dat };

      end : single_out

    end : single_reg else begin : assign_out

      assign o_lut_osc_dat = { w_lut_pha.dat, f_lut(w_lut_pha) };

    end : assign_out

  end : tlr
  
endmodule : dds_lut

(* KEEP_HIERARCHY = "YES" *)
module dds_standard #(
    parameter           OSC_DATA = "CosSin", // Output "Cos" - Cos, "Sin" - Sin or "CosSin", "SinCos" - Cos & Sin
    parameter int       DAT_WIDTH = 18, // Cos & Sin Data Width in Bits
    parameter bit       INPUT_REG = '0, //  Input Register
    parameter bit [2:0] REGISTERS = '0, //  Standerd Registers
    parameter bit       OUTPUT_REG = '0, //  Output Register
    parameter int       LUT_WIDTH = ( OSC_DATA == "CosSin" || OSC_DATA == "SinCos" ) ? 2*(DAT_WIDTH+1) : DAT_WIDTH+1, // Output Cos & Sin Width from LUT
    parameter int       OSC_WIDTH = ( OSC_DATA == "CosSin" || OSC_DATA == "SinCos" ) ? 2*DAT_WIDTH : DAT_WIDTH // Output Cos & Sin Width
  )  (
    input   wire                  i_std_a_clk_p, // Rising Edge Clock

    input   wire                  i_std_dat_vld, // Cos & Sin Data Valid
    input   wire  [LUT_WIDTH-1:0] i_std_dat_lut, // Cos & Sin Data from LUT

    output  wire                  o_std_dat_vld, // Output Cos & Sin Valid
    output  wire  [OSC_WIDTH-1:0] o_std_dat_osc // Output Cos & Sin Value
  );

  typedef struct packed { bit LUT_OUT, SGN_REG, OUT_REG; } t_std;

  localparam t_std STD = REGISTERS;

  localparam int RW = DAT_WIDTH-1;

  typedef struct packed {
    struct packed {
      logic sgn;
      logic nul;
      logic [RW-1:0] dat;
    } msb;
    struct packed {
      logic sgn;
      logic nul;
      logic [RW-1:0] dat;
    } lsb;
  } t_lut;

  logic w_lut_dat_vld;
  t_lut w_lut_dat_lut;
  if ( STD.LUT_OUT ) begin : lut_out_with_reg

    logic q_lut_dat_vld = '0;
    t_lut q_lut_dat_lut = '{default:'0};
    always @(posedge i_std_a_clk_p) begin
      q_lut_dat_vld <= i_std_dat_vld;
      // if ( i_std_dat_vld ) FIXME try add a parameter to manage this case
        q_lut_dat_lut <= i_std_dat_lut;
    end

    assign w_lut_dat_vld = q_lut_dat_vld;
    assign w_lut_dat_lut = q_lut_dat_lut;

  end : lut_out_with_reg else begin : lut_out_wout_reg

    assign w_lut_dat_vld = i_std_dat_vld;
    assign w_lut_dat_lut = i_std_dat_lut;

  end : lut_out_wout_reg

  typedef struct packed {
    struct packed {
      logic nul;
      logic [DAT_WIDTH-1:0] dat;
    } msb;
    struct packed {
      logic nul;
      logic [DAT_WIDTH-1:0] dat;
    } lsb;
  } t_sgn;

  function t_sgn f_sgn(input t_lut i_lut);
    f_sgn.msb.nul = i_lut.msb.nul;
    f_sgn.msb.dat = ( i_lut.msb.sgn ) ? ~ { 1'b0, i_lut.msb.dat } + 1 : { 1'b0, i_lut.msb.dat } + 1 - 1;
    f_sgn.lsb.nul = i_lut.lsb.nul;
    f_sgn.lsb.dat = ( i_lut.lsb.sgn ) ? ~ { 1'b0, i_lut.lsb.dat } + 1 : { 1'b0, i_lut.lsb.dat } + 1 - 1;
  endfunction : f_sgn

  logic w_sgn_dat_vld;
  t_sgn w_sgn_dat_osc;
  if ( STD.SGN_REG ) begin : sgn_with_reg

    logic q_sgn_dat_vld = '0;
    t_sgn q_sgn_dat_osc = '{default:'0};
    always @(posedge i_std_a_clk_p) begin
      q_sgn_dat_vld <= w_lut_dat_vld;
      // if ( w_lut_dat_vld ) FIXME try add a parameter to manage this case
        q_sgn_dat_osc <= f_sgn(w_lut_dat_lut);
    end

    assign w_sgn_dat_vld = q_sgn_dat_vld;
    assign w_sgn_dat_osc = q_sgn_dat_osc;

  end : sgn_with_reg else begin : sgn_wout_reg

    assign w_sgn_dat_vld = w_lut_dat_vld;
    assign w_sgn_dat_osc = f_sgn(w_lut_dat_lut);
  
  end : sgn_wout_reg

  typedef struct packed {
    struct packed {
      logic [DAT_WIDTH-1:0] dat;
    } msb;
    struct packed {
      logic [DAT_WIDTH-1:0] dat;
    } lsb;
  } t_out;

  function t_out f_out(input t_sgn i_sgn);
    f_out.msb.dat = ( i_sgn.msb.nul ) ? '0 : i_sgn.msb.dat;
    f_out.lsb.dat = ( i_sgn.lsb.nul ) ? '0 : i_sgn.lsb.dat;
  endfunction : f_out

  if ( STD.OUT_REG ) begin : out_with_reg

    logic q_out_dat_vld = '0;
    t_out q_out_dat_osc = '{default:'0};
    always @(posedge i_std_a_clk_p) begin
      q_out_dat_vld <= w_sgn_dat_vld;
      // if ( w_sgn_dat_vld ) FIXME try add a parameter to manage this case
        q_out_dat_osc <= f_out(w_sgn_dat_osc);
    end

    assign o_std_dat_vld = q_out_dat_vld;
    assign o_std_dat_osc = q_out_dat_osc;

  end : out_with_reg else begin : out_wout_reg

    assign o_std_dat_vld = w_sgn_dat_vld;
    assign o_std_dat_osc = f_out(w_sgn_dat_osc);

  end : out_wout_reg

endmodule : dds_standard

(* KEEP_HIERARCHY = "YES" *)
module dds_taylor #(
    parameter           OSC_DATA = "CosSin", // Output "Cos" - Cos, "Sin" - Sin or "CosSin" | "SinCos" - Cos & Sin
    parameter int       PHA_WIDTH = 12, // Phase Width in Bits, Min is 12, Max is 32
    parameter int       DAT_WIDTH = 18, // Output Width in Bits, Max is 21
    parameter bit       NEGATIVE_SIN = '0, // Sine is Negative (1 - Negative)
    parameter bit       NEGATIVE_COS = '0, // Cosine is Negative (1 - Negative)
    parameter bit [5:0] REGISTERS = '0, // Taylor Registers
    parameter int       LUT_WIDTH = 2*DAT_WIDTH+PHA_WIDTH-11, // Cos & Sin LUT Width
    parameter int       OSC_WIDTH = ( OSC_DATA == "CosSin" || OSC_DATA == "SinCos" ) ? 2*DAT_WIDTH : DAT_WIDTH // Output Width
  )  (
    input   wire                  i_tlr_a_clk_p, // Rising Edge Clock

    input   wire                  i_tlr_dat_vld, // Cos & Sin Valid
    input   wire  [LUT_WIDTH-1:0] i_tlr_dat_lut, // Cos & Sin from LUT

    output  wire                  o_tlr_osc_vld, // Cos & Sin Valid
    output  wire  [OSC_WIDTH-1:0] o_tlr_osc_dat // Cos & Sin Out Data
  );

  typedef struct packed { bit ONE_REG, TWO_REG, LUT_REG, DSP_REG, MLT_REG, OUT_REG; } t_tlr;

  localparam t_tlr TLR = REGISTERS;

  // Valid 
  wire w_tlr_one_vld;
  if ( TLR.ONE_REG ) begin : vld_one_with_reg

    logic q_tlr_one_vld = '0;
    always @(posedge i_tlr_a_clk_p)
      q_tlr_one_vld <= i_tlr_dat_vld;

    assign w_tlr_one_vld = q_tlr_one_vld;

  end : vld_one_with_reg else begin : vld_one_wout_reg

    assign w_tlr_one_vld = i_tlr_dat_vld;

  end : vld_one_wout_reg

  wire w_tlr_two_vld;
  if ( TLR.TWO_REG ) begin : vld_two_with_reg

    logic q_tlr_two_vld = '0;
    always @(posedge i_tlr_a_clk_p)
      q_tlr_two_vld <= w_tlr_one_vld;

    assign w_tlr_two_vld = q_tlr_two_vld;

  end : vld_two_with_reg else begin : vld_two_wout_reg

    assign w_tlr_two_vld = i_tlr_dat_vld;

  end : vld_two_wout_reg

  wire w_tlr_lut_vld;
  if ( TLR.LUT_REG ) begin : vld_lut_with_reg

    logic q_tlr_lut_vld = '0;
    always @(posedge i_tlr_a_clk_p)
      q_tlr_lut_vld <= w_tlr_two_vld;

    assign w_tlr_lut_vld = q_tlr_lut_vld;

  end : vld_lut_with_reg else begin : vld_lut_wout_reg

    assign w_tlr_lut_vld = w_tlr_two_vld;

  end : vld_lut_wout_reg

  wire w_tlr_dsp_vld;
  if ( TLR.DSP_REG ) begin : vld_dsp_with_reg

    logic q_tlr_dsp_vld = '0;
    always @(posedge i_tlr_a_clk_p)
      q_tlr_dsp_vld <= w_tlr_lut_vld;

    assign w_tlr_dsp_vld = q_tlr_dsp_vld;

  end : vld_dsp_with_reg else begin : vld_dsp_wout_reg

    assign w_tlr_dsp_vld = w_tlr_lut_vld;

  end : vld_dsp_wout_reg

  wire w_tlr_mlt_vld;
  if ( TLR.MLT_REG ) begin : vld_mlt_with_reg

    logic q_tlr_mlt_vld = '0;
    always @(posedge i_tlr_a_clk_p)
      q_tlr_mlt_vld <= w_tlr_dsp_vld;

    assign w_tlr_mlt_vld = q_tlr_mlt_vld;

  end : vld_mlt_with_reg else begin : vld_mlt_wout_reg

    assign w_tlr_mlt_vld = w_tlr_dsp_vld;

  end : vld_mlt_wout_reg

  wire w_tlr_out_vld;
  if ( TLR.OUT_REG ) begin : vld_out_with_reg

    logic q_tlr_out_vld = '0;
    always @(posedge i_tlr_a_clk_p)
      q_tlr_out_vld <= w_tlr_mlt_vld;

    assign w_tlr_out_vld = q_tlr_out_vld;

  end : vld_out_with_reg else begin : vld_out_wout_reg

    assign w_tlr_out_vld = w_tlr_mlt_vld;

  end : vld_out_wout_reg

  assign o_tlr_osc_vld = w_tlr_out_vld;

  typedef logic [PHA_WIDTH-12:0] t_pha;
  typedef logic [DAT_WIDTH-1:0] t_dat;

  typedef struct packed {
    t_pha pha;
    t_dat sin;
    t_dat cos;
  } t_lut;

  function logic [16:0] f_pha(input t_pha i_pha);
    if ( $size(i_pha) > 17 )
      return i_pha >> $size(i_pha)-17;
    else
      return i_pha << 17-$size(i_pha);
  endfunction : f_pha

  function logic [17:0] f_osc(input t_dat i_dat);
    if ( $size(i_dat) > 18 )
      return i_dat >> $size(i_dat)-18;
    else if ( $size(i_dat) < 18 )
      return { i_dat, 1'b1 } << 17-$size(i_dat);
    else
      return i_dat;
  endfunction : f_osc

  const logic [16:0] c_dsp_pha_mlt = 17'h1921F;
  const logic [47:0] c_dsp_pha_sum = 48'h000E6DE10000;

  t_lut w_lut;
  assign w_lut = i_tlr_dat_lut;

  (* USE_DSP = "Yes" *) wire [16:0] w_tlr_pha_dat;
  if ( TLR.TWO_REG ) begin : lut_with_double_reg
    
    (* USE_DSP = "Yes" *) logic [16:0] q_tlr_pha_dat = '0;
    always @(posedge i_tlr_a_clk_p)
      // if ( w_tlr_one_vld )
        q_tlr_pha_dat <= f_pha(w_lut.pha);

    assign w_tlr_pha_dat = q_tlr_pha_dat;

  end : lut_with_double_reg else begin : lut_wout_double_reg

    assign w_tlr_pha_dat = f_pha(w_lut.pha);

  end : lut_wout_double_reg

  t_dat w_tlr_sin_lut, w_tlr_cos_lut;
  (* USE_DSP = "Yes" *) wire [33:0] w_tlr_pha_mlt;
  if ( TLR.LUT_REG ) begin : lut_out_with_reg

    t_dat q_tlr_sin_lut = '0, q_tlr_cos_lut = '0;
    (* USE_DSP = "Yes" *) logic [33:0] q_tlr_pha_mlt = '0;
    always @(posedge i_tlr_a_clk_p) begin
      // if ( w_tlr_two_vld ) begin FIXME try add a parameter to manage this case
        q_tlr_sin_lut <= w_lut.sin;
        q_tlr_cos_lut <= w_lut.cos;
        q_tlr_pha_mlt <= w_tlr_pha_dat * c_dsp_pha_mlt;
      end

    assign w_tlr_sin_lut = q_tlr_sin_lut;
    assign w_tlr_cos_lut = q_tlr_cos_lut;
    assign w_tlr_pha_mlt = q_tlr_pha_mlt;

  end : lut_out_with_reg else begin : lut_out_wout_reg

    assign w_tlr_sin_lut = w_lut.sin;
    assign w_tlr_cos_lut = w_lut.cos;
    assign w_tlr_pha_mlt = w_tlr_pha_dat * c_dsp_pha_mlt;

  end : lut_out_wout_reg

  (* USE_DSP = "Yes" *) wire [35:0] w_tlr_pha_sum;
  if ( TLR.ONE_REG ) begin : lut_with_single_reg
    
    (* USE_DSP = "Yes" *) logic [35:0] q_tlr_pha_sum = '0;
    always @(posedge i_tlr_a_clk_p)
      // if ( i_tlr_dat_vld ) FIXME try add a parameter to manage this case
        q_tlr_pha_sum <= w_tlr_pha_mlt + c_dsp_pha_sum;

    assign w_tlr_pha_sum = q_tlr_pha_sum;

  end : lut_with_single_reg else begin : lut_wout_single_reg

    assign w_tlr_pha_sum = w_tlr_pha_mlt + c_dsp_pha_sum;

  end : lut_wout_single_reg

  // Sin aproximation
  (* USE_DSP = "Yes" *) wire [41:0] w_tlr_sin_out;
  if ( OSC_DATA == "CosSin" || OSC_DATA == "SinCos" || OSC_DATA == "Sin" ) begin : sin
    
    (* USE_DSP = "Yes" *) wire [17:0] w_sin_cos_dsp;
    (* USE_DSP = "Yes" *) wire [17:0] w_sin_pha_dsp;
    (* USE_DSP = "Yes" *) wire [41:0] w_sin_sin_dsp;
    if ( TLR.DSP_REG ) begin : dsp_with_reg
      
      (* USE_DSP = "Yes" *) logic [17:0] q_sin_cos_dsp = '0;
      (* USE_DSP = "Yes" *) logic [17:0] q_sin_pha_dsp = '0;
      (* USE_DSP = "Yes" *) logic [41:0] q_sin_sin_dsp = '0;
      always @(posedge i_tlr_a_clk_p) begin
        // if ( w_tlr_lut_vld ) begin FIXME try add a parameter to manage this case
          q_sin_cos_dsp <= f_osc(w_tlr_cos_lut);
          q_sin_pha_dsp <= w_tlr_pha_sum[35:18];
          q_sin_sin_dsp <= { w_tlr_sin_lut, 1'b1, {35-DAT_WIDTH{1'b0}}, 1'b1, 5'b0 };
        end

      assign w_sin_cos_dsp = q_sin_cos_dsp;
      assign w_sin_pha_dsp = q_sin_pha_dsp;
      assign w_sin_sin_dsp = q_sin_sin_dsp;

    end : dsp_with_reg else begin : dsp_wout_reg

      assign w_sin_cos_dsp = f_osc(w_tlr_cos_lut);
      assign w_sin_pha_dsp = w_tlr_pha_sum[35:18];
      assign w_sin_sin_dsp = { w_tlr_sin_lut, 1'b1, {35-DAT_WIDTH{1'b0}}, 1'b1, 5'b0 };

    end : dsp_wout_reg
    
    (* USE_DSP = "Yes" *) wire [41:0] w_tlr_sin_reg;
    (* USE_DSP = "Yes" *) wire [35:0] w_tlr_sin_mlt;
    if ( TLR.MLT_REG ) begin : mlt_with_reg
    
      (* USE_DSP = "Yes" *) logic [41:0] q_tlr_sin_reg = '0;
      (* USE_DSP = "Yes" *) logic [35:0] q_tlr_sin_mlt = '0;
      always @(posedge i_tlr_a_clk_p) begin
        // if ( w_tlr_dsp_vld ) begin FIXME try add a parameter to manage this case
          q_tlr_sin_reg <= w_sin_sin_dsp;
          q_tlr_sin_mlt <= signed'(w_sin_cos_dsp) * signed'(w_sin_pha_dsp);
        end

      assign w_tlr_sin_reg = q_tlr_sin_reg;
      assign w_tlr_sin_mlt = q_tlr_sin_mlt;

    end : mlt_with_reg else begin : mlt_wout_reg

      assign w_tlr_sin_reg = w_sin_sin_dsp;
      assign w_tlr_sin_mlt = signed'(w_sin_cos_dsp) * signed'(w_sin_pha_dsp);
      
    end : mlt_wout_reg

    if ( TLR.OUT_REG ) begin : out_with_reg
    
      (* USE_DSP = "Yes" *) logic [41:0] q_tlr_sin_out = '0;
      always @(posedge i_tlr_a_clk_p)
        // if ( w_tlr_mlt_vld ) FIXME try add a parameter to manage this case
          q_tlr_sin_out <= ( NEGATIVE_COS ^ NEGATIVE_SIN ) ? signed'(w_tlr_sin_reg) - signed'(w_tlr_sin_mlt) : signed'(w_tlr_sin_reg) + signed'(w_tlr_sin_mlt);

      assign w_tlr_sin_out = q_tlr_sin_out;

    end : out_with_reg else begin : out_wout_reg

      assign w_tlr_sin_out = ( NEGATIVE_COS ^ NEGATIVE_SIN ) ? signed'(w_tlr_sin_reg) - signed'(w_tlr_sin_mlt) : signed'(w_tlr_sin_reg) + signed'(w_tlr_sin_mlt);

    end : out_wout_reg

  end : sin

  // Cos aproximation
  (* USE_DSP = "Yes" *) wire [41:0] w_tlr_cos_out;
  if ( OSC_DATA == "CosSin" || OSC_DATA == "SinCos" || OSC_DATA == "Cos" ) begin : cos
  
    (* USE_DSP = "Yes" *) wire [17:0] w_cos_sin_dsp;
    (* USE_DSP = "Yes" *) wire [17:0] w_cos_pha_dsp;
    (* USE_DSP = "Yes" *) wire [41:0] w_cos_cos_dsp;
    if ( TLR.DSP_REG ) begin : dsp_with_reg
      
      (* USE_DSP = "Yes" *) logic [17:0] q_cos_sin_dsp = '0;
      (* USE_DSP = "Yes" *) logic [17:0] q_cos_pha_dsp = '0;
      (* USE_DSP = "Yes" *) logic [41:0] q_cos_cos_dsp = '0;
      always @(posedge i_tlr_a_clk_p) begin
        // if ( w_tlr_lut_vld ) begin FIXME try add a parameter to manage this case
          q_cos_sin_dsp <= f_osc(w_tlr_sin_lut);
          q_cos_pha_dsp <= w_tlr_pha_sum[35:18];
          q_cos_cos_dsp <= { w_tlr_cos_lut, 1'b1, {35-DAT_WIDTH{1'b0}}, 1'b1, 5'b0 };
        end

      assign w_cos_sin_dsp = q_cos_sin_dsp;
      assign w_cos_pha_dsp = q_cos_pha_dsp;
      assign w_cos_cos_dsp = q_cos_cos_dsp;

    end : dsp_with_reg else begin : dsp_wout_reg

      assign w_cos_sin_dsp = f_osc(w_tlr_sin_lut);
      assign w_cos_pha_dsp = w_tlr_pha_sum[35:18];
      assign w_cos_cos_dsp = { w_tlr_cos_lut, 1'b1, {35-DAT_WIDTH{1'b0}}, 1'b1, 5'b0 };

    end : dsp_wout_reg
    
    (* USE_DSP = "Yes" *) wire [41:0] w_tlr_cos_reg;
    (* USE_DSP = "Yes" *) wire [35:0] w_tlr_cos_mlt;
    if ( TLR.MLT_REG ) begin : mlt_with_reg
    
      (* USE_DSP = "Yes" *) logic [41:0] q_tlr_cos_reg = '0;
      (* USE_DSP = "Yes" *) logic [35:0] q_tlr_cos_mlt = '0;
      always @(posedge i_tlr_a_clk_p) begin
        // if ( w_tlr_dsp_vld ) begin FIXME try add a parameter to manage this case
          q_tlr_cos_reg <= w_cos_cos_dsp;
          q_tlr_cos_mlt <= signed'(w_cos_sin_dsp) * signed'(w_cos_pha_dsp);
        end

      assign w_tlr_cos_reg = q_tlr_cos_reg;
      assign w_tlr_cos_mlt = q_tlr_cos_mlt;

    end : mlt_with_reg else begin : mlt_wout_reg

      assign w_tlr_cos_reg = w_cos_cos_dsp;
      assign w_tlr_cos_mlt = signed'(w_cos_sin_dsp) * signed'(w_cos_pha_dsp);
      
    end : mlt_wout_reg

    if ( TLR.OUT_REG ) begin : out_with_reg
    
      (* USE_DSP = "Yes" *) logic [41:0] q_tlr_cos_out = '0;
      always @(posedge i_tlr_a_clk_p)
        // if ( w_tlr_mlt_vld ) FIXME try add a parameter to manage this case
          q_tlr_cos_out <= ( NEGATIVE_COS ^ NEGATIVE_SIN ) ? signed'(w_tlr_cos_reg) + signed'(w_tlr_cos_mlt) : signed'(w_tlr_cos_reg) - signed'(w_tlr_cos_mlt);

      assign w_tlr_cos_out = q_tlr_cos_out;

    end : out_with_reg else begin : out_wout_reg

      assign w_tlr_cos_out = ( NEGATIVE_COS ^ NEGATIVE_SIN ) ? signed'(w_tlr_cos_reg) + signed'(w_tlr_cos_mlt) : signed'(w_tlr_cos_reg) - signed'(w_tlr_cos_mlt);

    end : out_wout_reg

  end : cos

  assign o_tlr_osc_dat = ( OSC_DATA == "Sin" ) ? w_tlr_sin_out[41:42-DAT_WIDTH] : ( OSC_DATA == "Cos" ) ? w_tlr_cos_out[41:42-DAT_WIDTH] : { w_tlr_sin_out[41:42-DAT_WIDTH], w_tlr_cos_out[41:42-DAT_WIDTH] };

endmodule : dds_taylor

(* KEEP_HIERARCHY = "YES" *)
module dds_delay #(
    parameter int WIDTH = 1, // Width of data
    parameter int DELAY = 16, // Delay value
    parameter     SHREG = "Yes", // Shift Register: "Yes" or "No"
    parameter     STYLE = "SRL", // Shift register style: [ Register | SRL | SRL_REG | REG_SRL | REG_SRL_REG | Block ]
    parameter int RESET = 0 // Reset output data if not null value
  )  (
    input   wire              i_dly_s_rst_p, // Synchronous reset, active high, enabled if RESET not null
    input   wire              i_dly_a_clk_p, // Rising edge clock
    input   wire              i_dly_s_ena_p, // Clock enable, if not equal every clock cycle then summary delay is DELAY-1 + one clock period
    input   wire  [WIDTH-1:0] i_dly_a_value, // Input data
    output  wire  [WIDTH-1:0] o_dly_a_value // Output delayed data
  );

  // Check parameters
  initial begin : check_param
    if ( !(WIDTH inside {[0:4096]}) ) 
      $error("[%s %0d-%0d] Width of data is %d, but must be greater than 0 and less than 4096. %m", "DELAY", 1, 1, WIDTH);
    if ( !(DELAY inside {[0:1048576]}) )
      $error("[%s %0d-%0d] Delay value is %d, but must be greater than 0 and less than 1048576. %m", "DELAY", 1, 2, DELAY);
  end : check_param

  (* SHREG_EXTRACT = SHREG, SRL_STYLE = STYLE *) logic [DELAY-1:0][WIDTH-1:0] q_dly_a_value = '0;

  if ( DELAY == 0 ) begin : zero

    assign o_dly_a_value = i_dly_a_value;

  end : zero else if ( DELAY == 1 ) begin : once

    if ( RESET == 0 ) begin : no_reset

      always @(posedge i_dly_a_clk_p)
        if ( i_dly_s_ena_p )
          q_dly_a_value[0] <= i_dly_a_value;

      assign o_dly_a_value = q_dly_a_value[0];

    end : no_reset else begin : reset_on
      
      logic q_dly_s_rst_p = '0;
      always @(posedge i_dly_a_clk_p)
        q_dly_s_rst_p <= i_dly_s_rst_p;

      always @(posedge i_dly_a_clk_p)
        if ( q_dly_s_rst_p )
          q_dly_a_value[0] <= '0;
        else if ( i_dly_s_ena_p )
          q_dly_a_value[0] <= i_dly_a_value;

      assign o_dly_a_value = q_dly_a_value[0];

    end : reset_on

  end : once else begin : many

    if ( RESET == 0 ) begin : no_reset
      
      always @(posedge i_dly_a_clk_p)
        if ( i_dly_s_ena_p )
          q_dly_a_value <= { q_dly_a_value[$high(q_dly_a_value)-1:0], i_dly_a_value };

      assign o_dly_a_value = q_dly_a_value[$high(q_dly_a_value)];
      
    end : no_reset else begin : reset_on

      logic q_dly_s_rst_p = '0;
      always @(posedge i_dly_a_clk_p)
        q_dly_s_rst_p <= i_dly_s_rst_p;

      logic [$clog2(DELAY):0] q_dly_counter = DELAY;
      always @(posedge i_dly_a_clk_p)
        if ( q_dly_s_rst_p )
          q_dly_counter <= DELAY;
        else if ( i_dly_s_ena_p && q_dly_counter != 0 )
          q_dly_counter <= q_dly_counter - 1;

      always @(posedge i_dly_a_clk_p)
        if ( i_dly_s_ena_p )
          q_dly_a_value <= { q_dly_a_value[$high(q_dly_a_value)-1:0], i_dly_a_value };

      assign o_dly_a_value = ( q_dly_counter == 0 ) ? q_dly_a_value[$high(q_dly_a_value)] : '0;

    end : reset_on

  end : many

endmodule : dds_delay

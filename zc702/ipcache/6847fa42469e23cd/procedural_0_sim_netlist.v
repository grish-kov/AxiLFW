// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Wed Jul  3 15:10:11 2024
// Host        : Griffon running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ procedural_0_sim_netlist.v
// Design      : procedural_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_avg
   (\block[0].w_avg_valid ,
    i_valid,
    Q,
    i_div_s_rst_p,
    i_clk,
    s_tdata,
    \q_data_cnt_reg[0]_0 ,
    \q_data_cnt_reg[0]_1 ,
    \q_data_cnt_reg[0]_2 ,
    \q_data_cnt_reg[0]_3 ,
    \q_data_cnt_reg[0]_4 ,
    \q_data_cnt_reg[0]_5 ,
    q_last);
  output \block[0].w_avg_valid ;
  output i_valid;
  output [15:0]Q;
  input i_div_s_rst_p;
  input i_clk;
  input [15:0]s_tdata;
  input \q_data_cnt_reg[0]_0 ;
  input \q_data_cnt_reg[0]_1 ;
  input \q_data_cnt_reg[0]_2 ;
  input \q_data_cnt_reg[0]_3 ;
  input \q_data_cnt_reg[0]_4 ;
  input \q_data_cnt_reg[0]_5 ;
  input [0:0]q_last;

  wire [15:0]Q;
  wire \block[0].w_avg_valid ;
  wire i_clk;
  wire i_div_s_rst_p;
  wire i_valid;
  wire o_valid_i_1_n_0;
  wire \q_data_cnt[0]_i_2_n_0 ;
  wire [15:0]q_data_cnt_reg;
  wire \q_data_cnt_reg[0]_0 ;
  wire \q_data_cnt_reg[0]_1 ;
  wire \q_data_cnt_reg[0]_2 ;
  wire \q_data_cnt_reg[0]_3 ;
  wire \q_data_cnt_reg[0]_4 ;
  wire \q_data_cnt_reg[0]_5 ;
  wire \q_data_cnt_reg[0]_i_1_n_0 ;
  wire \q_data_cnt_reg[0]_i_1_n_1 ;
  wire \q_data_cnt_reg[0]_i_1_n_2 ;
  wire \q_data_cnt_reg[0]_i_1_n_3 ;
  wire \q_data_cnt_reg[0]_i_1_n_4 ;
  wire \q_data_cnt_reg[0]_i_1_n_5 ;
  wire \q_data_cnt_reg[0]_i_1_n_6 ;
  wire \q_data_cnt_reg[0]_i_1_n_7 ;
  wire \q_data_cnt_reg[12]_i_1_n_1 ;
  wire \q_data_cnt_reg[12]_i_1_n_2 ;
  wire \q_data_cnt_reg[12]_i_1_n_3 ;
  wire \q_data_cnt_reg[12]_i_1_n_4 ;
  wire \q_data_cnt_reg[12]_i_1_n_5 ;
  wire \q_data_cnt_reg[12]_i_1_n_6 ;
  wire \q_data_cnt_reg[12]_i_1_n_7 ;
  wire \q_data_cnt_reg[4]_i_1_n_0 ;
  wire \q_data_cnt_reg[4]_i_1_n_1 ;
  wire \q_data_cnt_reg[4]_i_1_n_2 ;
  wire \q_data_cnt_reg[4]_i_1_n_3 ;
  wire \q_data_cnt_reg[4]_i_1_n_4 ;
  wire \q_data_cnt_reg[4]_i_1_n_5 ;
  wire \q_data_cnt_reg[4]_i_1_n_6 ;
  wire \q_data_cnt_reg[4]_i_1_n_7 ;
  wire \q_data_cnt_reg[8]_i_1_n_0 ;
  wire \q_data_cnt_reg[8]_i_1_n_1 ;
  wire \q_data_cnt_reg[8]_i_1_n_2 ;
  wire \q_data_cnt_reg[8]_i_1_n_3 ;
  wire \q_data_cnt_reg[8]_i_1_n_4 ;
  wire \q_data_cnt_reg[8]_i_1_n_5 ;
  wire \q_data_cnt_reg[8]_i_1_n_6 ;
  wire \q_data_cnt_reg[8]_i_1_n_7 ;
  wire q_div_rdy;
  wire [15:0]q_div_res_dat;
  wire q_div_res_vld;
  wire q_div_vld;
  wire q_div_vld_i_1_n_0;
  wire [0:0]q_last;
  wire \q_sum_buf[0]_i_2_n_0 ;
  wire \q_sum_buf[0]_i_3_n_0 ;
  wire \q_sum_buf[0]_i_4_n_0 ;
  wire \q_sum_buf[0]_i_5_n_0 ;
  wire \q_sum_buf[12]_i_2_n_0 ;
  wire \q_sum_buf[12]_i_3_n_0 ;
  wire \q_sum_buf[12]_i_4_n_0 ;
  wire \q_sum_buf[12]_i_5_n_0 ;
  wire \q_sum_buf[4]_i_2_n_0 ;
  wire \q_sum_buf[4]_i_3_n_0 ;
  wire \q_sum_buf[4]_i_4_n_0 ;
  wire \q_sum_buf[4]_i_5_n_0 ;
  wire \q_sum_buf[8]_i_2_n_0 ;
  wire \q_sum_buf[8]_i_3_n_0 ;
  wire \q_sum_buf[8]_i_4_n_0 ;
  wire \q_sum_buf[8]_i_5_n_0 ;
  wire [15:0]q_sum_buf_reg;
  wire \q_sum_buf_reg[0]_i_1_n_0 ;
  wire \q_sum_buf_reg[0]_i_1_n_1 ;
  wire \q_sum_buf_reg[0]_i_1_n_2 ;
  wire \q_sum_buf_reg[0]_i_1_n_3 ;
  wire \q_sum_buf_reg[0]_i_1_n_4 ;
  wire \q_sum_buf_reg[0]_i_1_n_5 ;
  wire \q_sum_buf_reg[0]_i_1_n_6 ;
  wire \q_sum_buf_reg[0]_i_1_n_7 ;
  wire \q_sum_buf_reg[12]_i_1_n_1 ;
  wire \q_sum_buf_reg[12]_i_1_n_2 ;
  wire \q_sum_buf_reg[12]_i_1_n_3 ;
  wire \q_sum_buf_reg[12]_i_1_n_4 ;
  wire \q_sum_buf_reg[12]_i_1_n_5 ;
  wire \q_sum_buf_reg[12]_i_1_n_6 ;
  wire \q_sum_buf_reg[12]_i_1_n_7 ;
  wire \q_sum_buf_reg[4]_i_1_n_0 ;
  wire \q_sum_buf_reg[4]_i_1_n_1 ;
  wire \q_sum_buf_reg[4]_i_1_n_2 ;
  wire \q_sum_buf_reg[4]_i_1_n_3 ;
  wire \q_sum_buf_reg[4]_i_1_n_4 ;
  wire \q_sum_buf_reg[4]_i_1_n_5 ;
  wire \q_sum_buf_reg[4]_i_1_n_6 ;
  wire \q_sum_buf_reg[4]_i_1_n_7 ;
  wire \q_sum_buf_reg[8]_i_1_n_0 ;
  wire \q_sum_buf_reg[8]_i_1_n_1 ;
  wire \q_sum_buf_reg[8]_i_1_n_2 ;
  wire \q_sum_buf_reg[8]_i_1_n_3 ;
  wire \q_sum_buf_reg[8]_i_1_n_4 ;
  wire \q_sum_buf_reg[8]_i_1_n_5 ;
  wire \q_sum_buf_reg[8]_i_1_n_6 ;
  wire \q_sum_buf_reg[8]_i_1_n_7 ;
  wire [15:0]s_tdata;
  wire [3:3]\NLW_q_data_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_q_sum_buf_reg[12]_i_1_CO_UNCONNECTED ;

  (* DVD_W = "16" *) 
  (* DVR_W = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* L = "32" *) 
  (* M = "17" *) 
  (* N = "2" *) 
  (* R = "2" *) 
  (* RES_W = "16" *) 
  (* ROUNDING = "1'b1" *) 
  (* SIGNED = "1'b0" *) 
  (* THROUGHPUT = "16" *) 
  (* USE_RESET = "1'b1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider__1 DIVIDER
       (.i_div_a_clk_p(i_clk),
        .i_div_dat_vld(q_div_vld),
        .i_div_dvd_dat(q_sum_buf_reg),
        .i_div_dvr_dat(q_data_cnt_reg),
        .i_div_s_rst_p(i_div_s_rst_p),
        .o_div_dat_rdy(q_div_rdy),
        .o_div_res_dat(q_div_res_dat),
        .o_div_res_vld(q_div_res_vld));
  FDRE \o_avg_data_reg[0] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \o_avg_data_reg[10] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \o_avg_data_reg[11] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \o_avg_data_reg[12] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \o_avg_data_reg[13] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \o_avg_data_reg[14] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \o_avg_data_reg[15] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \o_avg_data_reg[1] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \o_avg_data_reg[2] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \o_avg_data_reg[3] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \o_avg_data_reg[4] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \o_avg_data_reg[5] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \o_avg_data_reg[6] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \o_avg_data_reg[7] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \o_avg_data_reg[8] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \o_avg_data_reg[9] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h4)) 
    o_valid_i_1
       (.I0(\block[0].w_avg_valid ),
        .I1(q_div_res_vld),
        .O(o_valid_i_1_n_0));
  FDRE o_valid_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_valid_i_1_n_0),
        .Q(\block[0].w_avg_valid ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \q_data[15]_i_1__0 
       (.I0(\q_data_cnt_reg[0]_0 ),
        .I1(\q_data_cnt_reg[0]_1 ),
        .I2(\q_data_cnt_reg[0]_2 ),
        .I3(\q_data_cnt_reg[0]_3 ),
        .I4(\q_data_cnt_reg[0]_4 ),
        .I5(\q_data_cnt_reg[0]_5 ),
        .O(i_valid));
  LUT1 #(
    .INIT(2'h1)) 
    \q_data_cnt[0]_i_2 
       (.I0(q_data_cnt_reg[0]),
        .O(\q_data_cnt[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[0] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_data_cnt_reg[0]_i_1_n_7 ),
        .Q(q_data_cnt_reg[0]),
        .R(\block[0].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_data_cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\q_data_cnt_reg[0]_i_1_n_0 ,\q_data_cnt_reg[0]_i_1_n_1 ,\q_data_cnt_reg[0]_i_1_n_2 ,\q_data_cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\q_data_cnt_reg[0]_i_1_n_4 ,\q_data_cnt_reg[0]_i_1_n_5 ,\q_data_cnt_reg[0]_i_1_n_6 ,\q_data_cnt_reg[0]_i_1_n_7 }),
        .S({q_data_cnt_reg[3:1],\q_data_cnt[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[10] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_data_cnt_reg[8]_i_1_n_5 ),
        .Q(q_data_cnt_reg[10]),
        .R(\block[0].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[11] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_data_cnt_reg[8]_i_1_n_4 ),
        .Q(q_data_cnt_reg[11]),
        .R(\block[0].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[12] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_data_cnt_reg[12]_i_1_n_7 ),
        .Q(q_data_cnt_reg[12]),
        .R(\block[0].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_data_cnt_reg[12]_i_1 
       (.CI(\q_data_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_q_data_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\q_data_cnt_reg[12]_i_1_n_1 ,\q_data_cnt_reg[12]_i_1_n_2 ,\q_data_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_data_cnt_reg[12]_i_1_n_4 ,\q_data_cnt_reg[12]_i_1_n_5 ,\q_data_cnt_reg[12]_i_1_n_6 ,\q_data_cnt_reg[12]_i_1_n_7 }),
        .S(q_data_cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[13] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_data_cnt_reg[12]_i_1_n_6 ),
        .Q(q_data_cnt_reg[13]),
        .R(\block[0].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[14] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_data_cnt_reg[12]_i_1_n_5 ),
        .Q(q_data_cnt_reg[14]),
        .R(\block[0].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[15] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_data_cnt_reg[12]_i_1_n_4 ),
        .Q(q_data_cnt_reg[15]),
        .R(\block[0].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[1] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_data_cnt_reg[0]_i_1_n_6 ),
        .Q(q_data_cnt_reg[1]),
        .R(\block[0].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[2] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_data_cnt_reg[0]_i_1_n_5 ),
        .Q(q_data_cnt_reg[2]),
        .R(\block[0].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[3] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_data_cnt_reg[0]_i_1_n_4 ),
        .Q(q_data_cnt_reg[3]),
        .R(\block[0].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[4] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_data_cnt_reg[4]_i_1_n_7 ),
        .Q(q_data_cnt_reg[4]),
        .R(\block[0].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_data_cnt_reg[4]_i_1 
       (.CI(\q_data_cnt_reg[0]_i_1_n_0 ),
        .CO({\q_data_cnt_reg[4]_i_1_n_0 ,\q_data_cnt_reg[4]_i_1_n_1 ,\q_data_cnt_reg[4]_i_1_n_2 ,\q_data_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_data_cnt_reg[4]_i_1_n_4 ,\q_data_cnt_reg[4]_i_1_n_5 ,\q_data_cnt_reg[4]_i_1_n_6 ,\q_data_cnt_reg[4]_i_1_n_7 }),
        .S(q_data_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[5] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_data_cnt_reg[4]_i_1_n_6 ),
        .Q(q_data_cnt_reg[5]),
        .R(\block[0].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[6] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_data_cnt_reg[4]_i_1_n_5 ),
        .Q(q_data_cnt_reg[6]),
        .R(\block[0].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[7] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_data_cnt_reg[4]_i_1_n_4 ),
        .Q(q_data_cnt_reg[7]),
        .R(\block[0].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[8] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_data_cnt_reg[8]_i_1_n_7 ),
        .Q(q_data_cnt_reg[8]),
        .R(\block[0].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_data_cnt_reg[8]_i_1 
       (.CI(\q_data_cnt_reg[4]_i_1_n_0 ),
        .CO({\q_data_cnt_reg[8]_i_1_n_0 ,\q_data_cnt_reg[8]_i_1_n_1 ,\q_data_cnt_reg[8]_i_1_n_2 ,\q_data_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_data_cnt_reg[8]_i_1_n_4 ,\q_data_cnt_reg[8]_i_1_n_5 ,\q_data_cnt_reg[8]_i_1_n_6 ,\q_data_cnt_reg[8]_i_1_n_7 }),
        .S(q_data_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[9] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_data_cnt_reg[8]_i_1_n_6 ),
        .Q(q_data_cnt_reg[9]),
        .R(\block[0].w_avg_valid ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    q_div_vld_i_1
       (.I0(q_div_vld),
        .I1(q_last),
        .I2(q_div_rdy),
        .I3(q_div_res_vld),
        .O(q_div_vld_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_div_vld_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(q_div_vld_i_1_n_0),
        .Q(q_div_vld),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[0]_i_2 
       (.I0(s_tdata[3]),
        .I1(q_sum_buf_reg[3]),
        .O(\q_sum_buf[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[0]_i_3 
       (.I0(s_tdata[2]),
        .I1(q_sum_buf_reg[2]),
        .O(\q_sum_buf[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[0]_i_4 
       (.I0(s_tdata[1]),
        .I1(q_sum_buf_reg[1]),
        .O(\q_sum_buf[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[0]_i_5 
       (.I0(s_tdata[0]),
        .I1(q_sum_buf_reg[0]),
        .O(\q_sum_buf[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[12]_i_2 
       (.I0(s_tdata[15]),
        .I1(q_sum_buf_reg[15]),
        .O(\q_sum_buf[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[12]_i_3 
       (.I0(s_tdata[14]),
        .I1(q_sum_buf_reg[14]),
        .O(\q_sum_buf[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[12]_i_4 
       (.I0(s_tdata[13]),
        .I1(q_sum_buf_reg[13]),
        .O(\q_sum_buf[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[12]_i_5 
       (.I0(s_tdata[12]),
        .I1(q_sum_buf_reg[12]),
        .O(\q_sum_buf[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[4]_i_2 
       (.I0(s_tdata[7]),
        .I1(q_sum_buf_reg[7]),
        .O(\q_sum_buf[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[4]_i_3 
       (.I0(s_tdata[6]),
        .I1(q_sum_buf_reg[6]),
        .O(\q_sum_buf[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[4]_i_4 
       (.I0(s_tdata[5]),
        .I1(q_sum_buf_reg[5]),
        .O(\q_sum_buf[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[4]_i_5 
       (.I0(s_tdata[4]),
        .I1(q_sum_buf_reg[4]),
        .O(\q_sum_buf[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[8]_i_2 
       (.I0(s_tdata[11]),
        .I1(q_sum_buf_reg[11]),
        .O(\q_sum_buf[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[8]_i_3 
       (.I0(s_tdata[10]),
        .I1(q_sum_buf_reg[10]),
        .O(\q_sum_buf[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[8]_i_4 
       (.I0(s_tdata[9]),
        .I1(q_sum_buf_reg[9]),
        .O(\q_sum_buf[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[8]_i_5 
       (.I0(s_tdata[8]),
        .I1(q_sum_buf_reg[8]),
        .O(\q_sum_buf[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[0] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_sum_buf_reg[0]_i_1_n_7 ),
        .Q(q_sum_buf_reg[0]),
        .R(\block[0].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_sum_buf_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\q_sum_buf_reg[0]_i_1_n_0 ,\q_sum_buf_reg[0]_i_1_n_1 ,\q_sum_buf_reg[0]_i_1_n_2 ,\q_sum_buf_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(s_tdata[3:0]),
        .O({\q_sum_buf_reg[0]_i_1_n_4 ,\q_sum_buf_reg[0]_i_1_n_5 ,\q_sum_buf_reg[0]_i_1_n_6 ,\q_sum_buf_reg[0]_i_1_n_7 }),
        .S({\q_sum_buf[0]_i_2_n_0 ,\q_sum_buf[0]_i_3_n_0 ,\q_sum_buf[0]_i_4_n_0 ,\q_sum_buf[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[10] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_sum_buf_reg[8]_i_1_n_5 ),
        .Q(q_sum_buf_reg[10]),
        .R(\block[0].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[11] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_sum_buf_reg[8]_i_1_n_4 ),
        .Q(q_sum_buf_reg[11]),
        .R(\block[0].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[12] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_sum_buf_reg[12]_i_1_n_7 ),
        .Q(q_sum_buf_reg[12]),
        .R(\block[0].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_sum_buf_reg[12]_i_1 
       (.CI(\q_sum_buf_reg[8]_i_1_n_0 ),
        .CO({\NLW_q_sum_buf_reg[12]_i_1_CO_UNCONNECTED [3],\q_sum_buf_reg[12]_i_1_n_1 ,\q_sum_buf_reg[12]_i_1_n_2 ,\q_sum_buf_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,s_tdata[14:12]}),
        .O({\q_sum_buf_reg[12]_i_1_n_4 ,\q_sum_buf_reg[12]_i_1_n_5 ,\q_sum_buf_reg[12]_i_1_n_6 ,\q_sum_buf_reg[12]_i_1_n_7 }),
        .S({\q_sum_buf[12]_i_2_n_0 ,\q_sum_buf[12]_i_3_n_0 ,\q_sum_buf[12]_i_4_n_0 ,\q_sum_buf[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[13] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_sum_buf_reg[12]_i_1_n_6 ),
        .Q(q_sum_buf_reg[13]),
        .R(\block[0].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[14] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_sum_buf_reg[12]_i_1_n_5 ),
        .Q(q_sum_buf_reg[14]),
        .R(\block[0].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[15] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_sum_buf_reg[12]_i_1_n_4 ),
        .Q(q_sum_buf_reg[15]),
        .R(\block[0].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[1] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_sum_buf_reg[0]_i_1_n_6 ),
        .Q(q_sum_buf_reg[1]),
        .R(\block[0].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[2] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_sum_buf_reg[0]_i_1_n_5 ),
        .Q(q_sum_buf_reg[2]),
        .R(\block[0].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[3] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_sum_buf_reg[0]_i_1_n_4 ),
        .Q(q_sum_buf_reg[3]),
        .R(\block[0].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[4] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_sum_buf_reg[4]_i_1_n_7 ),
        .Q(q_sum_buf_reg[4]),
        .R(\block[0].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_sum_buf_reg[4]_i_1 
       (.CI(\q_sum_buf_reg[0]_i_1_n_0 ),
        .CO({\q_sum_buf_reg[4]_i_1_n_0 ,\q_sum_buf_reg[4]_i_1_n_1 ,\q_sum_buf_reg[4]_i_1_n_2 ,\q_sum_buf_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(s_tdata[7:4]),
        .O({\q_sum_buf_reg[4]_i_1_n_4 ,\q_sum_buf_reg[4]_i_1_n_5 ,\q_sum_buf_reg[4]_i_1_n_6 ,\q_sum_buf_reg[4]_i_1_n_7 }),
        .S({\q_sum_buf[4]_i_2_n_0 ,\q_sum_buf[4]_i_3_n_0 ,\q_sum_buf[4]_i_4_n_0 ,\q_sum_buf[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[5] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_sum_buf_reg[4]_i_1_n_6 ),
        .Q(q_sum_buf_reg[5]),
        .R(\block[0].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[6] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_sum_buf_reg[4]_i_1_n_5 ),
        .Q(q_sum_buf_reg[6]),
        .R(\block[0].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[7] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_sum_buf_reg[4]_i_1_n_4 ),
        .Q(q_sum_buf_reg[7]),
        .R(\block[0].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[8] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_sum_buf_reg[8]_i_1_n_7 ),
        .Q(q_sum_buf_reg[8]),
        .R(\block[0].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_sum_buf_reg[8]_i_1 
       (.CI(\q_sum_buf_reg[4]_i_1_n_0 ),
        .CO({\q_sum_buf_reg[8]_i_1_n_0 ,\q_sum_buf_reg[8]_i_1_n_1 ,\q_sum_buf_reg[8]_i_1_n_2 ,\q_sum_buf_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(s_tdata[11:8]),
        .O({\q_sum_buf_reg[8]_i_1_n_4 ,\q_sum_buf_reg[8]_i_1_n_5 ,\q_sum_buf_reg[8]_i_1_n_6 ,\q_sum_buf_reg[8]_i_1_n_7 }),
        .S({\q_sum_buf[8]_i_2_n_0 ,\q_sum_buf[8]_i_3_n_0 ,\q_sum_buf[8]_i_4_n_0 ,\q_sum_buf[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[9] 
       (.C(i_clk),
        .CE(i_valid),
        .D(\q_sum_buf_reg[8]_i_1_n_6 ),
        .Q(q_sum_buf_reg[9]),
        .R(\block[0].w_avg_valid ));
endmodule

(* ORIG_REF_NAME = "avg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_avg_0
   (\block[1].w_avg_valid ,
    sel,
    s_tvalid_0,
    Q,
    i_div_s_rst_p,
    i_clk,
    s_tdata,
    \q_data_cnt_reg[0]_0 ,
    \q_data_cnt_reg[0]_1 ,
    \q_data_cnt_reg[0]_2 ,
    \q_data_cnt_reg[0]_3 ,
    \q_data_cnt_reg[0]_4 ,
    s_tvalid,
    \q_data_cnt_reg[0]_5 ,
    q_div_vld_reg_0);
  output \block[1].w_avg_valid ;
  output sel;
  output s_tvalid_0;
  output [15:0]Q;
  input i_div_s_rst_p;
  input i_clk;
  input [15:0]s_tdata;
  input \q_data_cnt_reg[0]_0 ;
  input \q_data_cnt_reg[0]_1 ;
  input \q_data_cnt_reg[0]_2 ;
  input \q_data_cnt_reg[0]_3 ;
  input \q_data_cnt_reg[0]_4 ;
  input s_tvalid;
  input \q_data_cnt_reg[0]_5 ;
  input q_div_vld_reg_0;

  wire [15:0]Q;
  wire \block[1].w_avg_valid ;
  wire i_clk;
  wire i_div_s_rst_p;
  wire o_valid_i_1__0_n_0;
  wire \q_data_cnt[0]_i_2__0_n_0 ;
  wire [15:0]q_data_cnt_reg;
  wire \q_data_cnt_reg[0]_0 ;
  wire \q_data_cnt_reg[0]_1 ;
  wire \q_data_cnt_reg[0]_2 ;
  wire \q_data_cnt_reg[0]_3 ;
  wire \q_data_cnt_reg[0]_4 ;
  wire \q_data_cnt_reg[0]_5 ;
  wire \q_data_cnt_reg[0]_i_1__0_n_0 ;
  wire \q_data_cnt_reg[0]_i_1__0_n_1 ;
  wire \q_data_cnt_reg[0]_i_1__0_n_2 ;
  wire \q_data_cnt_reg[0]_i_1__0_n_3 ;
  wire \q_data_cnt_reg[0]_i_1__0_n_4 ;
  wire \q_data_cnt_reg[0]_i_1__0_n_5 ;
  wire \q_data_cnt_reg[0]_i_1__0_n_6 ;
  wire \q_data_cnt_reg[0]_i_1__0_n_7 ;
  wire \q_data_cnt_reg[12]_i_1__0_n_1 ;
  wire \q_data_cnt_reg[12]_i_1__0_n_2 ;
  wire \q_data_cnt_reg[12]_i_1__0_n_3 ;
  wire \q_data_cnt_reg[12]_i_1__0_n_4 ;
  wire \q_data_cnt_reg[12]_i_1__0_n_5 ;
  wire \q_data_cnt_reg[12]_i_1__0_n_6 ;
  wire \q_data_cnt_reg[12]_i_1__0_n_7 ;
  wire \q_data_cnt_reg[4]_i_1__0_n_0 ;
  wire \q_data_cnt_reg[4]_i_1__0_n_1 ;
  wire \q_data_cnt_reg[4]_i_1__0_n_2 ;
  wire \q_data_cnt_reg[4]_i_1__0_n_3 ;
  wire \q_data_cnt_reg[4]_i_1__0_n_4 ;
  wire \q_data_cnt_reg[4]_i_1__0_n_5 ;
  wire \q_data_cnt_reg[4]_i_1__0_n_6 ;
  wire \q_data_cnt_reg[4]_i_1__0_n_7 ;
  wire \q_data_cnt_reg[8]_i_1__0_n_0 ;
  wire \q_data_cnt_reg[8]_i_1__0_n_1 ;
  wire \q_data_cnt_reg[8]_i_1__0_n_2 ;
  wire \q_data_cnt_reg[8]_i_1__0_n_3 ;
  wire \q_data_cnt_reg[8]_i_1__0_n_4 ;
  wire \q_data_cnt_reg[8]_i_1__0_n_5 ;
  wire \q_data_cnt_reg[8]_i_1__0_n_6 ;
  wire \q_data_cnt_reg[8]_i_1__0_n_7 ;
  wire q_div_rdy;
  wire [15:0]q_div_res_dat;
  wire q_div_res_vld;
  wire q_div_vld;
  wire q_div_vld_i_1__0_n_0;
  wire q_div_vld_reg_0;
  wire \q_sum_buf[0]_i_2__0_n_0 ;
  wire \q_sum_buf[0]_i_3__0_n_0 ;
  wire \q_sum_buf[0]_i_4__0_n_0 ;
  wire \q_sum_buf[0]_i_5__0_n_0 ;
  wire \q_sum_buf[12]_i_2__0_n_0 ;
  wire \q_sum_buf[12]_i_3__0_n_0 ;
  wire \q_sum_buf[12]_i_4__0_n_0 ;
  wire \q_sum_buf[12]_i_5__0_n_0 ;
  wire \q_sum_buf[4]_i_2__0_n_0 ;
  wire \q_sum_buf[4]_i_3__0_n_0 ;
  wire \q_sum_buf[4]_i_4__0_n_0 ;
  wire \q_sum_buf[4]_i_5__0_n_0 ;
  wire \q_sum_buf[8]_i_2__0_n_0 ;
  wire \q_sum_buf[8]_i_3__0_n_0 ;
  wire \q_sum_buf[8]_i_4__0_n_0 ;
  wire \q_sum_buf[8]_i_5__0_n_0 ;
  wire [15:0]q_sum_buf_reg;
  wire \q_sum_buf_reg[0]_i_1__0_n_0 ;
  wire \q_sum_buf_reg[0]_i_1__0_n_1 ;
  wire \q_sum_buf_reg[0]_i_1__0_n_2 ;
  wire \q_sum_buf_reg[0]_i_1__0_n_3 ;
  wire \q_sum_buf_reg[0]_i_1__0_n_4 ;
  wire \q_sum_buf_reg[0]_i_1__0_n_5 ;
  wire \q_sum_buf_reg[0]_i_1__0_n_6 ;
  wire \q_sum_buf_reg[0]_i_1__0_n_7 ;
  wire \q_sum_buf_reg[12]_i_1__0_n_1 ;
  wire \q_sum_buf_reg[12]_i_1__0_n_2 ;
  wire \q_sum_buf_reg[12]_i_1__0_n_3 ;
  wire \q_sum_buf_reg[12]_i_1__0_n_4 ;
  wire \q_sum_buf_reg[12]_i_1__0_n_5 ;
  wire \q_sum_buf_reg[12]_i_1__0_n_6 ;
  wire \q_sum_buf_reg[12]_i_1__0_n_7 ;
  wire \q_sum_buf_reg[4]_i_1__0_n_0 ;
  wire \q_sum_buf_reg[4]_i_1__0_n_1 ;
  wire \q_sum_buf_reg[4]_i_1__0_n_2 ;
  wire \q_sum_buf_reg[4]_i_1__0_n_3 ;
  wire \q_sum_buf_reg[4]_i_1__0_n_4 ;
  wire \q_sum_buf_reg[4]_i_1__0_n_5 ;
  wire \q_sum_buf_reg[4]_i_1__0_n_6 ;
  wire \q_sum_buf_reg[4]_i_1__0_n_7 ;
  wire \q_sum_buf_reg[8]_i_1__0_n_0 ;
  wire \q_sum_buf_reg[8]_i_1__0_n_1 ;
  wire \q_sum_buf_reg[8]_i_1__0_n_2 ;
  wire \q_sum_buf_reg[8]_i_1__0_n_3 ;
  wire \q_sum_buf_reg[8]_i_1__0_n_4 ;
  wire \q_sum_buf_reg[8]_i_1__0_n_5 ;
  wire \q_sum_buf_reg[8]_i_1__0_n_6 ;
  wire \q_sum_buf_reg[8]_i_1__0_n_7 ;
  wire [15:0]s_tdata;
  wire s_tvalid;
  wire s_tvalid_0;
  wire sel;
  wire [3:3]\NLW_q_data_cnt_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_q_sum_buf_reg[12]_i_1__0_CO_UNCONNECTED ;

  (* DVD_W = "16" *) 
  (* DVR_W = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* L = "32" *) 
  (* M = "17" *) 
  (* N = "2" *) 
  (* R = "2" *) 
  (* RES_W = "16" *) 
  (* ROUNDING = "1'b1" *) 
  (* SIGNED = "1'b0" *) 
  (* THROUGHPUT = "16" *) 
  (* USE_RESET = "1'b1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider__2 DIVIDER
       (.i_div_a_clk_p(i_clk),
        .i_div_dat_vld(q_div_vld),
        .i_div_dvd_dat(q_sum_buf_reg),
        .i_div_dvr_dat(q_data_cnt_reg),
        .i_div_s_rst_p(i_div_s_rst_p),
        .o_div_dat_rdy(q_div_rdy),
        .o_div_res_dat(q_div_res_dat),
        .o_div_res_vld(q_div_res_vld));
  FDRE \o_avg_data_reg[0] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \o_avg_data_reg[10] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \o_avg_data_reg[11] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \o_avg_data_reg[12] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \o_avg_data_reg[13] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \o_avg_data_reg[14] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \o_avg_data_reg[15] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \o_avg_data_reg[1] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \o_avg_data_reg[2] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \o_avg_data_reg[3] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \o_avg_data_reg[4] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \o_avg_data_reg[5] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \o_avg_data_reg[6] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \o_avg_data_reg[7] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \o_avg_data_reg[8] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \o_avg_data_reg[9] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h4)) 
    o_valid_i_1__0
       (.I0(\block[1].w_avg_valid ),
        .I1(q_div_res_vld),
        .O(o_valid_i_1__0_n_0));
  FDRE o_valid_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_valid_i_1__0_n_0),
        .Q(\block[1].w_avg_valid ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \q_data[15]_i_1__1 
       (.I0(\q_data_cnt_reg[0]_0 ),
        .I1(\q_data_cnt_reg[0]_1 ),
        .I2(\q_data_cnt_reg[0]_2 ),
        .I3(\q_data_cnt_reg[0]_3 ),
        .I4(s_tvalid_0),
        .I5(\q_data_cnt_reg[0]_4 ),
        .O(sel));
  LUT2 #(
    .INIT(4'h2)) 
    \q_data[15]_i_4 
       (.I0(s_tvalid),
        .I1(\q_data_cnt_reg[0]_5 ),
        .O(s_tvalid_0));
  LUT1 #(
    .INIT(2'h1)) 
    \q_data_cnt[0]_i_2__0 
       (.I0(q_data_cnt_reg[0]),
        .O(\q_data_cnt[0]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[0] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_data_cnt_reg[0]_i_1__0_n_7 ),
        .Q(q_data_cnt_reg[0]),
        .R(\block[1].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_data_cnt_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\q_data_cnt_reg[0]_i_1__0_n_0 ,\q_data_cnt_reg[0]_i_1__0_n_1 ,\q_data_cnt_reg[0]_i_1__0_n_2 ,\q_data_cnt_reg[0]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\q_data_cnt_reg[0]_i_1__0_n_4 ,\q_data_cnt_reg[0]_i_1__0_n_5 ,\q_data_cnt_reg[0]_i_1__0_n_6 ,\q_data_cnt_reg[0]_i_1__0_n_7 }),
        .S({q_data_cnt_reg[3:1],\q_data_cnt[0]_i_2__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[10] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_data_cnt_reg[8]_i_1__0_n_5 ),
        .Q(q_data_cnt_reg[10]),
        .R(\block[1].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[11] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_data_cnt_reg[8]_i_1__0_n_4 ),
        .Q(q_data_cnt_reg[11]),
        .R(\block[1].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[12] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_data_cnt_reg[12]_i_1__0_n_7 ),
        .Q(q_data_cnt_reg[12]),
        .R(\block[1].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_data_cnt_reg[12]_i_1__0 
       (.CI(\q_data_cnt_reg[8]_i_1__0_n_0 ),
        .CO({\NLW_q_data_cnt_reg[12]_i_1__0_CO_UNCONNECTED [3],\q_data_cnt_reg[12]_i_1__0_n_1 ,\q_data_cnt_reg[12]_i_1__0_n_2 ,\q_data_cnt_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_data_cnt_reg[12]_i_1__0_n_4 ,\q_data_cnt_reg[12]_i_1__0_n_5 ,\q_data_cnt_reg[12]_i_1__0_n_6 ,\q_data_cnt_reg[12]_i_1__0_n_7 }),
        .S(q_data_cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[13] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_data_cnt_reg[12]_i_1__0_n_6 ),
        .Q(q_data_cnt_reg[13]),
        .R(\block[1].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[14] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_data_cnt_reg[12]_i_1__0_n_5 ),
        .Q(q_data_cnt_reg[14]),
        .R(\block[1].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[15] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_data_cnt_reg[12]_i_1__0_n_4 ),
        .Q(q_data_cnt_reg[15]),
        .R(\block[1].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[1] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_data_cnt_reg[0]_i_1__0_n_6 ),
        .Q(q_data_cnt_reg[1]),
        .R(\block[1].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[2] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_data_cnt_reg[0]_i_1__0_n_5 ),
        .Q(q_data_cnt_reg[2]),
        .R(\block[1].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[3] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_data_cnt_reg[0]_i_1__0_n_4 ),
        .Q(q_data_cnt_reg[3]),
        .R(\block[1].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[4] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_data_cnt_reg[4]_i_1__0_n_7 ),
        .Q(q_data_cnt_reg[4]),
        .R(\block[1].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_data_cnt_reg[4]_i_1__0 
       (.CI(\q_data_cnt_reg[0]_i_1__0_n_0 ),
        .CO({\q_data_cnt_reg[4]_i_1__0_n_0 ,\q_data_cnt_reg[4]_i_1__0_n_1 ,\q_data_cnt_reg[4]_i_1__0_n_2 ,\q_data_cnt_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_data_cnt_reg[4]_i_1__0_n_4 ,\q_data_cnt_reg[4]_i_1__0_n_5 ,\q_data_cnt_reg[4]_i_1__0_n_6 ,\q_data_cnt_reg[4]_i_1__0_n_7 }),
        .S(q_data_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[5] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_data_cnt_reg[4]_i_1__0_n_6 ),
        .Q(q_data_cnt_reg[5]),
        .R(\block[1].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[6] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_data_cnt_reg[4]_i_1__0_n_5 ),
        .Q(q_data_cnt_reg[6]),
        .R(\block[1].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[7] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_data_cnt_reg[4]_i_1__0_n_4 ),
        .Q(q_data_cnt_reg[7]),
        .R(\block[1].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[8] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_data_cnt_reg[8]_i_1__0_n_7 ),
        .Q(q_data_cnt_reg[8]),
        .R(\block[1].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_data_cnt_reg[8]_i_1__0 
       (.CI(\q_data_cnt_reg[4]_i_1__0_n_0 ),
        .CO({\q_data_cnt_reg[8]_i_1__0_n_0 ,\q_data_cnt_reg[8]_i_1__0_n_1 ,\q_data_cnt_reg[8]_i_1__0_n_2 ,\q_data_cnt_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_data_cnt_reg[8]_i_1__0_n_4 ,\q_data_cnt_reg[8]_i_1__0_n_5 ,\q_data_cnt_reg[8]_i_1__0_n_6 ,\q_data_cnt_reg[8]_i_1__0_n_7 }),
        .S(q_data_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[9] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_data_cnt_reg[8]_i_1__0_n_6 ),
        .Q(q_data_cnt_reg[9]),
        .R(\block[1].w_avg_valid ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    q_div_vld_i_1__0
       (.I0(q_div_vld),
        .I1(q_div_vld_reg_0),
        .I2(q_div_rdy),
        .I3(q_div_res_vld),
        .O(q_div_vld_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_div_vld_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(q_div_vld_i_1__0_n_0),
        .Q(q_div_vld),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[0]_i_2__0 
       (.I0(s_tdata[3]),
        .I1(q_sum_buf_reg[3]),
        .O(\q_sum_buf[0]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[0]_i_3__0 
       (.I0(s_tdata[2]),
        .I1(q_sum_buf_reg[2]),
        .O(\q_sum_buf[0]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[0]_i_4__0 
       (.I0(s_tdata[1]),
        .I1(q_sum_buf_reg[1]),
        .O(\q_sum_buf[0]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[0]_i_5__0 
       (.I0(s_tdata[0]),
        .I1(q_sum_buf_reg[0]),
        .O(\q_sum_buf[0]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[12]_i_2__0 
       (.I0(s_tdata[15]),
        .I1(q_sum_buf_reg[15]),
        .O(\q_sum_buf[12]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[12]_i_3__0 
       (.I0(s_tdata[14]),
        .I1(q_sum_buf_reg[14]),
        .O(\q_sum_buf[12]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[12]_i_4__0 
       (.I0(s_tdata[13]),
        .I1(q_sum_buf_reg[13]),
        .O(\q_sum_buf[12]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[12]_i_5__0 
       (.I0(s_tdata[12]),
        .I1(q_sum_buf_reg[12]),
        .O(\q_sum_buf[12]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[4]_i_2__0 
       (.I0(s_tdata[7]),
        .I1(q_sum_buf_reg[7]),
        .O(\q_sum_buf[4]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[4]_i_3__0 
       (.I0(s_tdata[6]),
        .I1(q_sum_buf_reg[6]),
        .O(\q_sum_buf[4]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[4]_i_4__0 
       (.I0(s_tdata[5]),
        .I1(q_sum_buf_reg[5]),
        .O(\q_sum_buf[4]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[4]_i_5__0 
       (.I0(s_tdata[4]),
        .I1(q_sum_buf_reg[4]),
        .O(\q_sum_buf[4]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[8]_i_2__0 
       (.I0(s_tdata[11]),
        .I1(q_sum_buf_reg[11]),
        .O(\q_sum_buf[8]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[8]_i_3__0 
       (.I0(s_tdata[10]),
        .I1(q_sum_buf_reg[10]),
        .O(\q_sum_buf[8]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[8]_i_4__0 
       (.I0(s_tdata[9]),
        .I1(q_sum_buf_reg[9]),
        .O(\q_sum_buf[8]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[8]_i_5__0 
       (.I0(s_tdata[8]),
        .I1(q_sum_buf_reg[8]),
        .O(\q_sum_buf[8]_i_5__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[0] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_sum_buf_reg[0]_i_1__0_n_7 ),
        .Q(q_sum_buf_reg[0]),
        .R(\block[1].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_sum_buf_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\q_sum_buf_reg[0]_i_1__0_n_0 ,\q_sum_buf_reg[0]_i_1__0_n_1 ,\q_sum_buf_reg[0]_i_1__0_n_2 ,\q_sum_buf_reg[0]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI(s_tdata[3:0]),
        .O({\q_sum_buf_reg[0]_i_1__0_n_4 ,\q_sum_buf_reg[0]_i_1__0_n_5 ,\q_sum_buf_reg[0]_i_1__0_n_6 ,\q_sum_buf_reg[0]_i_1__0_n_7 }),
        .S({\q_sum_buf[0]_i_2__0_n_0 ,\q_sum_buf[0]_i_3__0_n_0 ,\q_sum_buf[0]_i_4__0_n_0 ,\q_sum_buf[0]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[10] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_sum_buf_reg[8]_i_1__0_n_5 ),
        .Q(q_sum_buf_reg[10]),
        .R(\block[1].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[11] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_sum_buf_reg[8]_i_1__0_n_4 ),
        .Q(q_sum_buf_reg[11]),
        .R(\block[1].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[12] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_sum_buf_reg[12]_i_1__0_n_7 ),
        .Q(q_sum_buf_reg[12]),
        .R(\block[1].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_sum_buf_reg[12]_i_1__0 
       (.CI(\q_sum_buf_reg[8]_i_1__0_n_0 ),
        .CO({\NLW_q_sum_buf_reg[12]_i_1__0_CO_UNCONNECTED [3],\q_sum_buf_reg[12]_i_1__0_n_1 ,\q_sum_buf_reg[12]_i_1__0_n_2 ,\q_sum_buf_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,s_tdata[14:12]}),
        .O({\q_sum_buf_reg[12]_i_1__0_n_4 ,\q_sum_buf_reg[12]_i_1__0_n_5 ,\q_sum_buf_reg[12]_i_1__0_n_6 ,\q_sum_buf_reg[12]_i_1__0_n_7 }),
        .S({\q_sum_buf[12]_i_2__0_n_0 ,\q_sum_buf[12]_i_3__0_n_0 ,\q_sum_buf[12]_i_4__0_n_0 ,\q_sum_buf[12]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[13] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_sum_buf_reg[12]_i_1__0_n_6 ),
        .Q(q_sum_buf_reg[13]),
        .R(\block[1].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[14] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_sum_buf_reg[12]_i_1__0_n_5 ),
        .Q(q_sum_buf_reg[14]),
        .R(\block[1].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[15] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_sum_buf_reg[12]_i_1__0_n_4 ),
        .Q(q_sum_buf_reg[15]),
        .R(\block[1].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[1] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_sum_buf_reg[0]_i_1__0_n_6 ),
        .Q(q_sum_buf_reg[1]),
        .R(\block[1].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[2] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_sum_buf_reg[0]_i_1__0_n_5 ),
        .Q(q_sum_buf_reg[2]),
        .R(\block[1].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[3] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_sum_buf_reg[0]_i_1__0_n_4 ),
        .Q(q_sum_buf_reg[3]),
        .R(\block[1].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[4] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_sum_buf_reg[4]_i_1__0_n_7 ),
        .Q(q_sum_buf_reg[4]),
        .R(\block[1].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_sum_buf_reg[4]_i_1__0 
       (.CI(\q_sum_buf_reg[0]_i_1__0_n_0 ),
        .CO({\q_sum_buf_reg[4]_i_1__0_n_0 ,\q_sum_buf_reg[4]_i_1__0_n_1 ,\q_sum_buf_reg[4]_i_1__0_n_2 ,\q_sum_buf_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI(s_tdata[7:4]),
        .O({\q_sum_buf_reg[4]_i_1__0_n_4 ,\q_sum_buf_reg[4]_i_1__0_n_5 ,\q_sum_buf_reg[4]_i_1__0_n_6 ,\q_sum_buf_reg[4]_i_1__0_n_7 }),
        .S({\q_sum_buf[4]_i_2__0_n_0 ,\q_sum_buf[4]_i_3__0_n_0 ,\q_sum_buf[4]_i_4__0_n_0 ,\q_sum_buf[4]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[5] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_sum_buf_reg[4]_i_1__0_n_6 ),
        .Q(q_sum_buf_reg[5]),
        .R(\block[1].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[6] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_sum_buf_reg[4]_i_1__0_n_5 ),
        .Q(q_sum_buf_reg[6]),
        .R(\block[1].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[7] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_sum_buf_reg[4]_i_1__0_n_4 ),
        .Q(q_sum_buf_reg[7]),
        .R(\block[1].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[8] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_sum_buf_reg[8]_i_1__0_n_7 ),
        .Q(q_sum_buf_reg[8]),
        .R(\block[1].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_sum_buf_reg[8]_i_1__0 
       (.CI(\q_sum_buf_reg[4]_i_1__0_n_0 ),
        .CO({\q_sum_buf_reg[8]_i_1__0_n_0 ,\q_sum_buf_reg[8]_i_1__0_n_1 ,\q_sum_buf_reg[8]_i_1__0_n_2 ,\q_sum_buf_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI(s_tdata[11:8]),
        .O({\q_sum_buf_reg[8]_i_1__0_n_4 ,\q_sum_buf_reg[8]_i_1__0_n_5 ,\q_sum_buf_reg[8]_i_1__0_n_6 ,\q_sum_buf_reg[8]_i_1__0_n_7 }),
        .S({\q_sum_buf[8]_i_2__0_n_0 ,\q_sum_buf[8]_i_3__0_n_0 ,\q_sum_buf[8]_i_4__0_n_0 ,\q_sum_buf[8]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[9] 
       (.C(i_clk),
        .CE(sel),
        .D(\q_sum_buf_reg[8]_i_1__0_n_6 ),
        .Q(q_sum_buf_reg[9]),
        .R(\block[1].w_avg_valid ));
endmodule

(* ORIG_REF_NAME = "avg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_avg_4
   (\block[2].w_avg_valid ,
    E,
    Q,
    i_div_s_rst_p,
    i_clk,
    s_tdata,
    \q_sum_buf_reg[0]_0 ,
    \q_sum_buf_reg[0]_1 ,
    \q_sum_buf_reg[0]_2 ,
    \q_sum_buf_reg[0]_3 ,
    \q_sum_buf_reg[0]_4 ,
    s_tvalid,
    \q_sum_buf_reg[0]_5 ,
    \q_sum_buf_reg[0]_6 ,
    \q_sum_buf_reg[0]_7 ,
    \q_sum_buf_reg[0]_8 ,
    \q_sum_buf_reg[0]_9 ,
    q_last_2);
  output \block[2].w_avg_valid ;
  output [0:0]E;
  output [15:0]Q;
  input i_div_s_rst_p;
  input i_clk;
  input [15:0]s_tdata;
  input \q_sum_buf_reg[0]_0 ;
  input \q_sum_buf_reg[0]_1 ;
  input \q_sum_buf_reg[0]_2 ;
  input \q_sum_buf_reg[0]_3 ;
  input \q_sum_buf_reg[0]_4 ;
  input s_tvalid;
  input \q_sum_buf_reg[0]_5 ;
  input \q_sum_buf_reg[0]_6 ;
  input \q_sum_buf_reg[0]_7 ;
  input \q_sum_buf_reg[0]_8 ;
  input \q_sum_buf_reg[0]_9 ;
  input q_last_2;

  wire [0:0]E;
  wire [15:0]Q;
  wire \block[2].w_avg_valid ;
  wire i_clk;
  wire i_div_s_rst_p;
  wire o_valid_i_1__1_n_0;
  wire \q_data[15]_i_2_n_0 ;
  wire \q_data_cnt[0]_i_2__1_n_0 ;
  wire [15:0]q_data_cnt_reg;
  wire \q_data_cnt_reg[0]_i_1__1_n_0 ;
  wire \q_data_cnt_reg[0]_i_1__1_n_1 ;
  wire \q_data_cnt_reg[0]_i_1__1_n_2 ;
  wire \q_data_cnt_reg[0]_i_1__1_n_3 ;
  wire \q_data_cnt_reg[0]_i_1__1_n_4 ;
  wire \q_data_cnt_reg[0]_i_1__1_n_5 ;
  wire \q_data_cnt_reg[0]_i_1__1_n_6 ;
  wire \q_data_cnt_reg[0]_i_1__1_n_7 ;
  wire \q_data_cnt_reg[12]_i_1__1_n_1 ;
  wire \q_data_cnt_reg[12]_i_1__1_n_2 ;
  wire \q_data_cnt_reg[12]_i_1__1_n_3 ;
  wire \q_data_cnt_reg[12]_i_1__1_n_4 ;
  wire \q_data_cnt_reg[12]_i_1__1_n_5 ;
  wire \q_data_cnt_reg[12]_i_1__1_n_6 ;
  wire \q_data_cnt_reg[12]_i_1__1_n_7 ;
  wire \q_data_cnt_reg[4]_i_1__1_n_0 ;
  wire \q_data_cnt_reg[4]_i_1__1_n_1 ;
  wire \q_data_cnt_reg[4]_i_1__1_n_2 ;
  wire \q_data_cnt_reg[4]_i_1__1_n_3 ;
  wire \q_data_cnt_reg[4]_i_1__1_n_4 ;
  wire \q_data_cnt_reg[4]_i_1__1_n_5 ;
  wire \q_data_cnt_reg[4]_i_1__1_n_6 ;
  wire \q_data_cnt_reg[4]_i_1__1_n_7 ;
  wire \q_data_cnt_reg[8]_i_1__1_n_0 ;
  wire \q_data_cnt_reg[8]_i_1__1_n_1 ;
  wire \q_data_cnt_reg[8]_i_1__1_n_2 ;
  wire \q_data_cnt_reg[8]_i_1__1_n_3 ;
  wire \q_data_cnt_reg[8]_i_1__1_n_4 ;
  wire \q_data_cnt_reg[8]_i_1__1_n_5 ;
  wire \q_data_cnt_reg[8]_i_1__1_n_6 ;
  wire \q_data_cnt_reg[8]_i_1__1_n_7 ;
  wire q_div_rdy;
  wire [15:0]q_div_res_dat;
  wire q_div_res_vld;
  wire q_div_vld;
  wire q_div_vld_i_1__1_n_0;
  wire q_last_2;
  wire \q_sum_buf[0]_i_2__1_n_0 ;
  wire \q_sum_buf[0]_i_3__1_n_0 ;
  wire \q_sum_buf[0]_i_4__1_n_0 ;
  wire \q_sum_buf[0]_i_5__1_n_0 ;
  wire \q_sum_buf[12]_i_2__1_n_0 ;
  wire \q_sum_buf[12]_i_3__1_n_0 ;
  wire \q_sum_buf[12]_i_4__1_n_0 ;
  wire \q_sum_buf[12]_i_5__1_n_0 ;
  wire \q_sum_buf[4]_i_2__1_n_0 ;
  wire \q_sum_buf[4]_i_3__1_n_0 ;
  wire \q_sum_buf[4]_i_4__1_n_0 ;
  wire \q_sum_buf[4]_i_5__1_n_0 ;
  wire \q_sum_buf[8]_i_2__1_n_0 ;
  wire \q_sum_buf[8]_i_3__1_n_0 ;
  wire \q_sum_buf[8]_i_4__1_n_0 ;
  wire \q_sum_buf[8]_i_5__1_n_0 ;
  wire [15:0]q_sum_buf_reg;
  wire \q_sum_buf_reg[0]_0 ;
  wire \q_sum_buf_reg[0]_1 ;
  wire \q_sum_buf_reg[0]_2 ;
  wire \q_sum_buf_reg[0]_3 ;
  wire \q_sum_buf_reg[0]_4 ;
  wire \q_sum_buf_reg[0]_5 ;
  wire \q_sum_buf_reg[0]_6 ;
  wire \q_sum_buf_reg[0]_7 ;
  wire \q_sum_buf_reg[0]_8 ;
  wire \q_sum_buf_reg[0]_9 ;
  wire \q_sum_buf_reg[0]_i_1__1_n_0 ;
  wire \q_sum_buf_reg[0]_i_1__1_n_1 ;
  wire \q_sum_buf_reg[0]_i_1__1_n_2 ;
  wire \q_sum_buf_reg[0]_i_1__1_n_3 ;
  wire \q_sum_buf_reg[0]_i_1__1_n_4 ;
  wire \q_sum_buf_reg[0]_i_1__1_n_5 ;
  wire \q_sum_buf_reg[0]_i_1__1_n_6 ;
  wire \q_sum_buf_reg[0]_i_1__1_n_7 ;
  wire \q_sum_buf_reg[12]_i_1__1_n_1 ;
  wire \q_sum_buf_reg[12]_i_1__1_n_2 ;
  wire \q_sum_buf_reg[12]_i_1__1_n_3 ;
  wire \q_sum_buf_reg[12]_i_1__1_n_4 ;
  wire \q_sum_buf_reg[12]_i_1__1_n_5 ;
  wire \q_sum_buf_reg[12]_i_1__1_n_6 ;
  wire \q_sum_buf_reg[12]_i_1__1_n_7 ;
  wire \q_sum_buf_reg[4]_i_1__1_n_0 ;
  wire \q_sum_buf_reg[4]_i_1__1_n_1 ;
  wire \q_sum_buf_reg[4]_i_1__1_n_2 ;
  wire \q_sum_buf_reg[4]_i_1__1_n_3 ;
  wire \q_sum_buf_reg[4]_i_1__1_n_4 ;
  wire \q_sum_buf_reg[4]_i_1__1_n_5 ;
  wire \q_sum_buf_reg[4]_i_1__1_n_6 ;
  wire \q_sum_buf_reg[4]_i_1__1_n_7 ;
  wire \q_sum_buf_reg[8]_i_1__1_n_0 ;
  wire \q_sum_buf_reg[8]_i_1__1_n_1 ;
  wire \q_sum_buf_reg[8]_i_1__1_n_2 ;
  wire \q_sum_buf_reg[8]_i_1__1_n_3 ;
  wire \q_sum_buf_reg[8]_i_1__1_n_4 ;
  wire \q_sum_buf_reg[8]_i_1__1_n_5 ;
  wire \q_sum_buf_reg[8]_i_1__1_n_6 ;
  wire \q_sum_buf_reg[8]_i_1__1_n_7 ;
  wire [15:0]s_tdata;
  wire s_tvalid;
  wire [3:3]\NLW_q_data_cnt_reg[12]_i_1__1_CO_UNCONNECTED ;
  wire [3:3]\NLW_q_sum_buf_reg[12]_i_1__1_CO_UNCONNECTED ;

  (* DVD_W = "16" *) 
  (* DVR_W = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* L = "32" *) 
  (* M = "17" *) 
  (* N = "2" *) 
  (* R = "2" *) 
  (* RES_W = "16" *) 
  (* ROUNDING = "1'b1" *) 
  (* SIGNED = "1'b0" *) 
  (* THROUGHPUT = "16" *) 
  (* USE_RESET = "1'b1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider__3 DIVIDER
       (.i_div_a_clk_p(i_clk),
        .i_div_dat_vld(q_div_vld),
        .i_div_dvd_dat(q_sum_buf_reg),
        .i_div_dvr_dat(q_data_cnt_reg),
        .i_div_s_rst_p(i_div_s_rst_p),
        .o_div_dat_rdy(q_div_rdy),
        .o_div_res_dat(q_div_res_dat),
        .o_div_res_vld(q_div_res_vld));
  FDRE \o_avg_data_reg[0] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \o_avg_data_reg[10] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \o_avg_data_reg[11] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \o_avg_data_reg[12] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \o_avg_data_reg[13] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \o_avg_data_reg[14] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \o_avg_data_reg[15] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \o_avg_data_reg[1] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \o_avg_data_reg[2] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \o_avg_data_reg[3] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \o_avg_data_reg[4] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \o_avg_data_reg[5] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \o_avg_data_reg[6] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \o_avg_data_reg[7] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \o_avg_data_reg[8] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \o_avg_data_reg[9] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h4)) 
    o_valid_i_1__1
       (.I0(\block[2].w_avg_valid ),
        .I1(q_div_res_vld),
        .O(o_valid_i_1__1_n_0));
  FDRE o_valid_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_valid_i_1__1_n_0),
        .Q(\block[2].w_avg_valid ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \q_data[15]_i_1 
       (.I0(\q_sum_buf_reg[0]_0 ),
        .I1(\q_sum_buf_reg[0]_1 ),
        .I2(\q_sum_buf_reg[0]_2 ),
        .I3(\q_sum_buf_reg[0]_3 ),
        .I4(\q_data[15]_i_2_n_0 ),
        .I5(\q_sum_buf_reg[0]_4 ),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \q_data[15]_i_2 
       (.I0(s_tvalid),
        .I1(\q_sum_buf_reg[0]_5 ),
        .I2(\q_sum_buf_reg[0]_6 ),
        .I3(\q_sum_buf_reg[0]_7 ),
        .I4(\q_sum_buf_reg[0]_8 ),
        .I5(\q_sum_buf_reg[0]_9 ),
        .O(\q_data[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_data_cnt[0]_i_2__1 
       (.I0(q_data_cnt_reg[0]),
        .O(\q_data_cnt[0]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[0] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[0]_i_1__1_n_7 ),
        .Q(q_data_cnt_reg[0]),
        .R(\block[2].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_data_cnt_reg[0]_i_1__1 
       (.CI(1'b0),
        .CO({\q_data_cnt_reg[0]_i_1__1_n_0 ,\q_data_cnt_reg[0]_i_1__1_n_1 ,\q_data_cnt_reg[0]_i_1__1_n_2 ,\q_data_cnt_reg[0]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\q_data_cnt_reg[0]_i_1__1_n_4 ,\q_data_cnt_reg[0]_i_1__1_n_5 ,\q_data_cnt_reg[0]_i_1__1_n_6 ,\q_data_cnt_reg[0]_i_1__1_n_7 }),
        .S({q_data_cnt_reg[3:1],\q_data_cnt[0]_i_2__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[10] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[8]_i_1__1_n_5 ),
        .Q(q_data_cnt_reg[10]),
        .R(\block[2].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[11] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[8]_i_1__1_n_4 ),
        .Q(q_data_cnt_reg[11]),
        .R(\block[2].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[12] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[12]_i_1__1_n_7 ),
        .Q(q_data_cnt_reg[12]),
        .R(\block[2].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_data_cnt_reg[12]_i_1__1 
       (.CI(\q_data_cnt_reg[8]_i_1__1_n_0 ),
        .CO({\NLW_q_data_cnt_reg[12]_i_1__1_CO_UNCONNECTED [3],\q_data_cnt_reg[12]_i_1__1_n_1 ,\q_data_cnt_reg[12]_i_1__1_n_2 ,\q_data_cnt_reg[12]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_data_cnt_reg[12]_i_1__1_n_4 ,\q_data_cnt_reg[12]_i_1__1_n_5 ,\q_data_cnt_reg[12]_i_1__1_n_6 ,\q_data_cnt_reg[12]_i_1__1_n_7 }),
        .S(q_data_cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[13] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[12]_i_1__1_n_6 ),
        .Q(q_data_cnt_reg[13]),
        .R(\block[2].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[14] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[12]_i_1__1_n_5 ),
        .Q(q_data_cnt_reg[14]),
        .R(\block[2].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[15] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[12]_i_1__1_n_4 ),
        .Q(q_data_cnt_reg[15]),
        .R(\block[2].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[1] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[0]_i_1__1_n_6 ),
        .Q(q_data_cnt_reg[1]),
        .R(\block[2].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[2] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[0]_i_1__1_n_5 ),
        .Q(q_data_cnt_reg[2]),
        .R(\block[2].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[3] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[0]_i_1__1_n_4 ),
        .Q(q_data_cnt_reg[3]),
        .R(\block[2].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[4] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[4]_i_1__1_n_7 ),
        .Q(q_data_cnt_reg[4]),
        .R(\block[2].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_data_cnt_reg[4]_i_1__1 
       (.CI(\q_data_cnt_reg[0]_i_1__1_n_0 ),
        .CO({\q_data_cnt_reg[4]_i_1__1_n_0 ,\q_data_cnt_reg[4]_i_1__1_n_1 ,\q_data_cnt_reg[4]_i_1__1_n_2 ,\q_data_cnt_reg[4]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_data_cnt_reg[4]_i_1__1_n_4 ,\q_data_cnt_reg[4]_i_1__1_n_5 ,\q_data_cnt_reg[4]_i_1__1_n_6 ,\q_data_cnt_reg[4]_i_1__1_n_7 }),
        .S(q_data_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[5] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[4]_i_1__1_n_6 ),
        .Q(q_data_cnt_reg[5]),
        .R(\block[2].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[6] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[4]_i_1__1_n_5 ),
        .Q(q_data_cnt_reg[6]),
        .R(\block[2].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[7] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[4]_i_1__1_n_4 ),
        .Q(q_data_cnt_reg[7]),
        .R(\block[2].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[8] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[8]_i_1__1_n_7 ),
        .Q(q_data_cnt_reg[8]),
        .R(\block[2].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_data_cnt_reg[8]_i_1__1 
       (.CI(\q_data_cnt_reg[4]_i_1__1_n_0 ),
        .CO({\q_data_cnt_reg[8]_i_1__1_n_0 ,\q_data_cnt_reg[8]_i_1__1_n_1 ,\q_data_cnt_reg[8]_i_1__1_n_2 ,\q_data_cnt_reg[8]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_data_cnt_reg[8]_i_1__1_n_4 ,\q_data_cnt_reg[8]_i_1__1_n_5 ,\q_data_cnt_reg[8]_i_1__1_n_6 ,\q_data_cnt_reg[8]_i_1__1_n_7 }),
        .S(q_data_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[9] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[8]_i_1__1_n_6 ),
        .Q(q_data_cnt_reg[9]),
        .R(\block[2].w_avg_valid ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    q_div_vld_i_1__1
       (.I0(q_div_vld),
        .I1(q_last_2),
        .I2(q_div_rdy),
        .I3(q_div_res_vld),
        .O(q_div_vld_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_div_vld_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(q_div_vld_i_1__1_n_0),
        .Q(q_div_vld),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[0]_i_2__1 
       (.I0(s_tdata[3]),
        .I1(q_sum_buf_reg[3]),
        .O(\q_sum_buf[0]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[0]_i_3__1 
       (.I0(s_tdata[2]),
        .I1(q_sum_buf_reg[2]),
        .O(\q_sum_buf[0]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[0]_i_4__1 
       (.I0(s_tdata[1]),
        .I1(q_sum_buf_reg[1]),
        .O(\q_sum_buf[0]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[0]_i_5__1 
       (.I0(s_tdata[0]),
        .I1(q_sum_buf_reg[0]),
        .O(\q_sum_buf[0]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[12]_i_2__1 
       (.I0(s_tdata[15]),
        .I1(q_sum_buf_reg[15]),
        .O(\q_sum_buf[12]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[12]_i_3__1 
       (.I0(s_tdata[14]),
        .I1(q_sum_buf_reg[14]),
        .O(\q_sum_buf[12]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[12]_i_4__1 
       (.I0(s_tdata[13]),
        .I1(q_sum_buf_reg[13]),
        .O(\q_sum_buf[12]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[12]_i_5__1 
       (.I0(s_tdata[12]),
        .I1(q_sum_buf_reg[12]),
        .O(\q_sum_buf[12]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[4]_i_2__1 
       (.I0(s_tdata[7]),
        .I1(q_sum_buf_reg[7]),
        .O(\q_sum_buf[4]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[4]_i_3__1 
       (.I0(s_tdata[6]),
        .I1(q_sum_buf_reg[6]),
        .O(\q_sum_buf[4]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[4]_i_4__1 
       (.I0(s_tdata[5]),
        .I1(q_sum_buf_reg[5]),
        .O(\q_sum_buf[4]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[4]_i_5__1 
       (.I0(s_tdata[4]),
        .I1(q_sum_buf_reg[4]),
        .O(\q_sum_buf[4]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[8]_i_2__1 
       (.I0(s_tdata[11]),
        .I1(q_sum_buf_reg[11]),
        .O(\q_sum_buf[8]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[8]_i_3__1 
       (.I0(s_tdata[10]),
        .I1(q_sum_buf_reg[10]),
        .O(\q_sum_buf[8]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[8]_i_4__1 
       (.I0(s_tdata[9]),
        .I1(q_sum_buf_reg[9]),
        .O(\q_sum_buf[8]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[8]_i_5__1 
       (.I0(s_tdata[8]),
        .I1(q_sum_buf_reg[8]),
        .O(\q_sum_buf[8]_i_5__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[0] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[0]_i_1__1_n_7 ),
        .Q(q_sum_buf_reg[0]),
        .R(\block[2].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_sum_buf_reg[0]_i_1__1 
       (.CI(1'b0),
        .CO({\q_sum_buf_reg[0]_i_1__1_n_0 ,\q_sum_buf_reg[0]_i_1__1_n_1 ,\q_sum_buf_reg[0]_i_1__1_n_2 ,\q_sum_buf_reg[0]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI(s_tdata[3:0]),
        .O({\q_sum_buf_reg[0]_i_1__1_n_4 ,\q_sum_buf_reg[0]_i_1__1_n_5 ,\q_sum_buf_reg[0]_i_1__1_n_6 ,\q_sum_buf_reg[0]_i_1__1_n_7 }),
        .S({\q_sum_buf[0]_i_2__1_n_0 ,\q_sum_buf[0]_i_3__1_n_0 ,\q_sum_buf[0]_i_4__1_n_0 ,\q_sum_buf[0]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[10] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[8]_i_1__1_n_5 ),
        .Q(q_sum_buf_reg[10]),
        .R(\block[2].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[11] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[8]_i_1__1_n_4 ),
        .Q(q_sum_buf_reg[11]),
        .R(\block[2].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[12] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[12]_i_1__1_n_7 ),
        .Q(q_sum_buf_reg[12]),
        .R(\block[2].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_sum_buf_reg[12]_i_1__1 
       (.CI(\q_sum_buf_reg[8]_i_1__1_n_0 ),
        .CO({\NLW_q_sum_buf_reg[12]_i_1__1_CO_UNCONNECTED [3],\q_sum_buf_reg[12]_i_1__1_n_1 ,\q_sum_buf_reg[12]_i_1__1_n_2 ,\q_sum_buf_reg[12]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,s_tdata[14:12]}),
        .O({\q_sum_buf_reg[12]_i_1__1_n_4 ,\q_sum_buf_reg[12]_i_1__1_n_5 ,\q_sum_buf_reg[12]_i_1__1_n_6 ,\q_sum_buf_reg[12]_i_1__1_n_7 }),
        .S({\q_sum_buf[12]_i_2__1_n_0 ,\q_sum_buf[12]_i_3__1_n_0 ,\q_sum_buf[12]_i_4__1_n_0 ,\q_sum_buf[12]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[13] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[12]_i_1__1_n_6 ),
        .Q(q_sum_buf_reg[13]),
        .R(\block[2].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[14] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[12]_i_1__1_n_5 ),
        .Q(q_sum_buf_reg[14]),
        .R(\block[2].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[15] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[12]_i_1__1_n_4 ),
        .Q(q_sum_buf_reg[15]),
        .R(\block[2].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[1] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[0]_i_1__1_n_6 ),
        .Q(q_sum_buf_reg[1]),
        .R(\block[2].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[2] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[0]_i_1__1_n_5 ),
        .Q(q_sum_buf_reg[2]),
        .R(\block[2].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[3] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[0]_i_1__1_n_4 ),
        .Q(q_sum_buf_reg[3]),
        .R(\block[2].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[4] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[4]_i_1__1_n_7 ),
        .Q(q_sum_buf_reg[4]),
        .R(\block[2].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_sum_buf_reg[4]_i_1__1 
       (.CI(\q_sum_buf_reg[0]_i_1__1_n_0 ),
        .CO({\q_sum_buf_reg[4]_i_1__1_n_0 ,\q_sum_buf_reg[4]_i_1__1_n_1 ,\q_sum_buf_reg[4]_i_1__1_n_2 ,\q_sum_buf_reg[4]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI(s_tdata[7:4]),
        .O({\q_sum_buf_reg[4]_i_1__1_n_4 ,\q_sum_buf_reg[4]_i_1__1_n_5 ,\q_sum_buf_reg[4]_i_1__1_n_6 ,\q_sum_buf_reg[4]_i_1__1_n_7 }),
        .S({\q_sum_buf[4]_i_2__1_n_0 ,\q_sum_buf[4]_i_3__1_n_0 ,\q_sum_buf[4]_i_4__1_n_0 ,\q_sum_buf[4]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[5] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[4]_i_1__1_n_6 ),
        .Q(q_sum_buf_reg[5]),
        .R(\block[2].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[6] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[4]_i_1__1_n_5 ),
        .Q(q_sum_buf_reg[6]),
        .R(\block[2].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[7] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[4]_i_1__1_n_4 ),
        .Q(q_sum_buf_reg[7]),
        .R(\block[2].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[8] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[8]_i_1__1_n_7 ),
        .Q(q_sum_buf_reg[8]),
        .R(\block[2].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_sum_buf_reg[8]_i_1__1 
       (.CI(\q_sum_buf_reg[4]_i_1__1_n_0 ),
        .CO({\q_sum_buf_reg[8]_i_1__1_n_0 ,\q_sum_buf_reg[8]_i_1__1_n_1 ,\q_sum_buf_reg[8]_i_1__1_n_2 ,\q_sum_buf_reg[8]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI(s_tdata[11:8]),
        .O({\q_sum_buf_reg[8]_i_1__1_n_4 ,\q_sum_buf_reg[8]_i_1__1_n_5 ,\q_sum_buf_reg[8]_i_1__1_n_6 ,\q_sum_buf_reg[8]_i_1__1_n_7 }),
        .S({\q_sum_buf[8]_i_2__1_n_0 ,\q_sum_buf[8]_i_3__1_n_0 ,\q_sum_buf[8]_i_4__1_n_0 ,\q_sum_buf[8]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[9] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[8]_i_1__1_n_6 ),
        .Q(q_sum_buf_reg[9]),
        .R(\block[2].w_avg_valid ));
endmodule

(* ORIG_REF_NAME = "avg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_avg_8
   (i_div_s_rst_p,
    \block[3].w_avg_valid ,
    E,
    \cnt_reg[9] ,
    \cnt_reg[3] ,
    \cnt_reg[0] ,
    \cnt_reg[12] ,
    Q,
    i_clk,
    s_tdata,
    s_tvalid,
    \q_sum_buf_reg[0]_0 ,
    \q_sum_buf_reg[0]_1 ,
    \q_sum_buf_reg[0]_2 ,
    \q_sum_buf_reg[0]_3 ,
    \q_sum_buf_reg[0]_4 ,
    \q_sum_buf_reg[0]_5 ,
    \q_sum_buf_reg[0]_6 ,
    \q_sum_buf_reg[0]_7 ,
    \q_sum_buf_reg[0]_8 ,
    S,
    q_valid_reg,
    i_resetn,
    SR);
  output i_div_s_rst_p;
  output \block[3].w_avg_valid ;
  output [0:0]E;
  output \cnt_reg[9] ;
  output \cnt_reg[3] ;
  output \cnt_reg[0] ;
  output \cnt_reg[12] ;
  output [15:0]Q;
  input i_clk;
  input [15:0]s_tdata;
  input s_tvalid;
  input \q_sum_buf_reg[0]_0 ;
  input \q_sum_buf_reg[0]_1 ;
  input \q_sum_buf_reg[0]_2 ;
  input \q_sum_buf_reg[0]_3 ;
  input \q_sum_buf_reg[0]_4 ;
  input \q_sum_buf_reg[0]_5 ;
  input \q_sum_buf_reg[0]_6 ;
  input \q_sum_buf_reg[0]_7 ;
  input \q_sum_buf_reg[0]_8 ;
  input [0:0]S;
  input [2:0]q_valid_reg;
  input i_resetn;
  input [0:0]SR;

  wire [0:0]E;
  wire [15:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire \block[3].w_avg_valid ;
  wire \cnt_reg[0] ;
  wire \cnt_reg[12] ;
  wire \cnt_reg[3] ;
  wire \cnt_reg[9] ;
  wire i_clk;
  wire i_div_s_rst_p;
  wire i_resetn;
  wire o_valid_i_1__2_n_0;
  wire \q_data_cnt[0]_i_2__2_n_0 ;
  wire [15:0]q_data_cnt_reg;
  wire \q_data_cnt_reg[0]_i_1__2_n_0 ;
  wire \q_data_cnt_reg[0]_i_1__2_n_1 ;
  wire \q_data_cnt_reg[0]_i_1__2_n_2 ;
  wire \q_data_cnt_reg[0]_i_1__2_n_3 ;
  wire \q_data_cnt_reg[0]_i_1__2_n_4 ;
  wire \q_data_cnt_reg[0]_i_1__2_n_5 ;
  wire \q_data_cnt_reg[0]_i_1__2_n_6 ;
  wire \q_data_cnt_reg[0]_i_1__2_n_7 ;
  wire \q_data_cnt_reg[12]_i_1__2_n_1 ;
  wire \q_data_cnt_reg[12]_i_1__2_n_2 ;
  wire \q_data_cnt_reg[12]_i_1__2_n_3 ;
  wire \q_data_cnt_reg[12]_i_1__2_n_4 ;
  wire \q_data_cnt_reg[12]_i_1__2_n_5 ;
  wire \q_data_cnt_reg[12]_i_1__2_n_6 ;
  wire \q_data_cnt_reg[12]_i_1__2_n_7 ;
  wire \q_data_cnt_reg[4]_i_1__2_n_0 ;
  wire \q_data_cnt_reg[4]_i_1__2_n_1 ;
  wire \q_data_cnt_reg[4]_i_1__2_n_2 ;
  wire \q_data_cnt_reg[4]_i_1__2_n_3 ;
  wire \q_data_cnt_reg[4]_i_1__2_n_4 ;
  wire \q_data_cnt_reg[4]_i_1__2_n_5 ;
  wire \q_data_cnt_reg[4]_i_1__2_n_6 ;
  wire \q_data_cnt_reg[4]_i_1__2_n_7 ;
  wire \q_data_cnt_reg[8]_i_1__2_n_0 ;
  wire \q_data_cnt_reg[8]_i_1__2_n_1 ;
  wire \q_data_cnt_reg[8]_i_1__2_n_2 ;
  wire \q_data_cnt_reg[8]_i_1__2_n_3 ;
  wire \q_data_cnt_reg[8]_i_1__2_n_4 ;
  wire \q_data_cnt_reg[8]_i_1__2_n_5 ;
  wire \q_data_cnt_reg[8]_i_1__2_n_6 ;
  wire \q_data_cnt_reg[8]_i_1__2_n_7 ;
  wire q_div_rdy;
  wire [15:0]q_div_res_dat;
  wire q_div_res_vld;
  wire q_div_vld;
  wire q_div_vld_i_1__2_n_0;
  wire \q_sum_buf[0]_i_2__2_n_0 ;
  wire \q_sum_buf[0]_i_3__2_n_0 ;
  wire \q_sum_buf[0]_i_4__2_n_0 ;
  wire \q_sum_buf[0]_i_5__2_n_0 ;
  wire \q_sum_buf[12]_i_2__2_n_0 ;
  wire \q_sum_buf[12]_i_3__2_n_0 ;
  wire \q_sum_buf[12]_i_4__2_n_0 ;
  wire \q_sum_buf[12]_i_5__2_n_0 ;
  wire \q_sum_buf[4]_i_2__2_n_0 ;
  wire \q_sum_buf[4]_i_3__2_n_0 ;
  wire \q_sum_buf[4]_i_4__2_n_0 ;
  wire \q_sum_buf[4]_i_5__2_n_0 ;
  wire \q_sum_buf[8]_i_2__2_n_0 ;
  wire \q_sum_buf[8]_i_3__2_n_0 ;
  wire \q_sum_buf[8]_i_4__2_n_0 ;
  wire \q_sum_buf[8]_i_5__2_n_0 ;
  wire [15:0]q_sum_buf_reg;
  wire \q_sum_buf_reg[0]_0 ;
  wire \q_sum_buf_reg[0]_1 ;
  wire \q_sum_buf_reg[0]_2 ;
  wire \q_sum_buf_reg[0]_3 ;
  wire \q_sum_buf_reg[0]_4 ;
  wire \q_sum_buf_reg[0]_5 ;
  wire \q_sum_buf_reg[0]_6 ;
  wire \q_sum_buf_reg[0]_7 ;
  wire \q_sum_buf_reg[0]_8 ;
  wire \q_sum_buf_reg[0]_i_1__2_n_0 ;
  wire \q_sum_buf_reg[0]_i_1__2_n_1 ;
  wire \q_sum_buf_reg[0]_i_1__2_n_2 ;
  wire \q_sum_buf_reg[0]_i_1__2_n_3 ;
  wire \q_sum_buf_reg[0]_i_1__2_n_4 ;
  wire \q_sum_buf_reg[0]_i_1__2_n_5 ;
  wire \q_sum_buf_reg[0]_i_1__2_n_6 ;
  wire \q_sum_buf_reg[0]_i_1__2_n_7 ;
  wire \q_sum_buf_reg[12]_i_1__2_n_1 ;
  wire \q_sum_buf_reg[12]_i_1__2_n_2 ;
  wire \q_sum_buf_reg[12]_i_1__2_n_3 ;
  wire \q_sum_buf_reg[12]_i_1__2_n_4 ;
  wire \q_sum_buf_reg[12]_i_1__2_n_5 ;
  wire \q_sum_buf_reg[12]_i_1__2_n_6 ;
  wire \q_sum_buf_reg[12]_i_1__2_n_7 ;
  wire \q_sum_buf_reg[4]_i_1__2_n_0 ;
  wire \q_sum_buf_reg[4]_i_1__2_n_1 ;
  wire \q_sum_buf_reg[4]_i_1__2_n_2 ;
  wire \q_sum_buf_reg[4]_i_1__2_n_3 ;
  wire \q_sum_buf_reg[4]_i_1__2_n_4 ;
  wire \q_sum_buf_reg[4]_i_1__2_n_5 ;
  wire \q_sum_buf_reg[4]_i_1__2_n_6 ;
  wire \q_sum_buf_reg[4]_i_1__2_n_7 ;
  wire \q_sum_buf_reg[8]_i_1__2_n_0 ;
  wire \q_sum_buf_reg[8]_i_1__2_n_1 ;
  wire \q_sum_buf_reg[8]_i_1__2_n_2 ;
  wire \q_sum_buf_reg[8]_i_1__2_n_3 ;
  wire \q_sum_buf_reg[8]_i_1__2_n_4 ;
  wire \q_sum_buf_reg[8]_i_1__2_n_5 ;
  wire \q_sum_buf_reg[8]_i_1__2_n_6 ;
  wire \q_sum_buf_reg[8]_i_1__2_n_7 ;
  wire [2:0]q_valid_reg;
  wire [15:0]s_tdata;
  wire s_tvalid;
  wire [3:3]\NLW_q_data_cnt_reg[12]_i_1__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_q_sum_buf_reg[12]_i_1__2_CO_UNCONNECTED ;

  (* DVD_W = "16" *) 
  (* DVR_W = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* L = "32" *) 
  (* M = "17" *) 
  (* N = "2" *) 
  (* R = "2" *) 
  (* RES_W = "16" *) 
  (* ROUNDING = "1'b1" *) 
  (* SIGNED = "1'b0" *) 
  (* THROUGHPUT = "16" *) 
  (* USE_RESET = "1'b1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider DIVIDER
       (.i_div_a_clk_p(i_clk),
        .i_div_dat_vld(q_div_vld),
        .i_div_dvd_dat(q_sum_buf_reg),
        .i_div_dvr_dat(q_data_cnt_reg),
        .i_div_s_rst_p(i_div_s_rst_p),
        .o_div_dat_rdy(q_div_rdy),
        .o_div_res_dat(q_div_res_dat),
        .o_div_res_vld(q_div_res_vld));
  LUT1 #(
    .INIT(2'h1)) 
    DIVIDER_i_1
       (.I0(i_resetn),
        .O(i_div_s_rst_p));
  LUT2 #(
    .INIT(4'h7)) 
    \cnt[15]_i_5 
       (.I0(\q_sum_buf_reg[0]_4 ),
        .I1(\q_sum_buf_reg[0]_5 ),
        .O(\cnt_reg[0] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[15]_i_6 
       (.I0(S),
        .I1(q_valid_reg[0]),
        .I2(q_valid_reg[2]),
        .I3(q_valid_reg[1]),
        .O(\cnt_reg[12] ));
  FDRE \o_avg_data_reg[0] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \o_avg_data_reg[10] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \o_avg_data_reg[11] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \o_avg_data_reg[12] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \o_avg_data_reg[13] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \o_avg_data_reg[14] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \o_avg_data_reg[15] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \o_avg_data_reg[1] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \o_avg_data_reg[2] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \o_avg_data_reg[3] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \o_avg_data_reg[4] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \o_avg_data_reg[5] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \o_avg_data_reg[6] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \o_avg_data_reg[7] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \o_avg_data_reg[8] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \o_avg_data_reg[9] 
       (.C(i_clk),
        .CE(q_div_res_vld),
        .D(q_div_res_dat[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h4)) 
    o_valid_i_1__2
       (.I0(\block[3].w_avg_valid ),
        .I1(q_div_res_vld),
        .O(o_valid_i_1__2_n_0));
  FDRE o_valid_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_valid_i_1__2_n_0),
        .Q(\block[3].w_avg_valid ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \q_data[15]_i_1__2 
       (.I0(\cnt_reg[9] ),
        .I1(\cnt_reg[3] ),
        .I2(s_tvalid),
        .I3(\q_sum_buf_reg[0]_0 ),
        .I4(\q_sum_buf_reg[0]_1 ),
        .I5(\cnt_reg[0] ),
        .O(E));
  LUT4 #(
    .INIT(16'h0001)) 
    \q_data[15]_i_2__0 
       (.I0(\q_sum_buf_reg[0]_6 ),
        .I1(\q_sum_buf_reg[0]_7 ),
        .I2(\q_sum_buf_reg[0]_8 ),
        .I3(\cnt_reg[12] ),
        .O(\cnt_reg[9] ));
  LUT2 #(
    .INIT(4'hE)) 
    \q_data[15]_i_3 
       (.I0(\q_sum_buf_reg[0]_2 ),
        .I1(\q_sum_buf_reg[0]_3 ),
        .O(\cnt_reg[3] ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_data_cnt[0]_i_2__2 
       (.I0(q_data_cnt_reg[0]),
        .O(\q_data_cnt[0]_i_2__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[0] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[0]_i_1__2_n_7 ),
        .Q(q_data_cnt_reg[0]),
        .R(\block[3].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_data_cnt_reg[0]_i_1__2 
       (.CI(1'b0),
        .CO({\q_data_cnt_reg[0]_i_1__2_n_0 ,\q_data_cnt_reg[0]_i_1__2_n_1 ,\q_data_cnt_reg[0]_i_1__2_n_2 ,\q_data_cnt_reg[0]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\q_data_cnt_reg[0]_i_1__2_n_4 ,\q_data_cnt_reg[0]_i_1__2_n_5 ,\q_data_cnt_reg[0]_i_1__2_n_6 ,\q_data_cnt_reg[0]_i_1__2_n_7 }),
        .S({q_data_cnt_reg[3:1],\q_data_cnt[0]_i_2__2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[10] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[8]_i_1__2_n_5 ),
        .Q(q_data_cnt_reg[10]),
        .R(\block[3].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[11] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[8]_i_1__2_n_4 ),
        .Q(q_data_cnt_reg[11]),
        .R(\block[3].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[12] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[12]_i_1__2_n_7 ),
        .Q(q_data_cnt_reg[12]),
        .R(\block[3].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_data_cnt_reg[12]_i_1__2 
       (.CI(\q_data_cnt_reg[8]_i_1__2_n_0 ),
        .CO({\NLW_q_data_cnt_reg[12]_i_1__2_CO_UNCONNECTED [3],\q_data_cnt_reg[12]_i_1__2_n_1 ,\q_data_cnt_reg[12]_i_1__2_n_2 ,\q_data_cnt_reg[12]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_data_cnt_reg[12]_i_1__2_n_4 ,\q_data_cnt_reg[12]_i_1__2_n_5 ,\q_data_cnt_reg[12]_i_1__2_n_6 ,\q_data_cnt_reg[12]_i_1__2_n_7 }),
        .S(q_data_cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[13] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[12]_i_1__2_n_6 ),
        .Q(q_data_cnt_reg[13]),
        .R(\block[3].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[14] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[12]_i_1__2_n_5 ),
        .Q(q_data_cnt_reg[14]),
        .R(\block[3].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[15] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[12]_i_1__2_n_4 ),
        .Q(q_data_cnt_reg[15]),
        .R(\block[3].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[1] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[0]_i_1__2_n_6 ),
        .Q(q_data_cnt_reg[1]),
        .R(\block[3].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[2] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[0]_i_1__2_n_5 ),
        .Q(q_data_cnt_reg[2]),
        .R(\block[3].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[3] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[0]_i_1__2_n_4 ),
        .Q(q_data_cnt_reg[3]),
        .R(\block[3].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[4] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[4]_i_1__2_n_7 ),
        .Q(q_data_cnt_reg[4]),
        .R(\block[3].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_data_cnt_reg[4]_i_1__2 
       (.CI(\q_data_cnt_reg[0]_i_1__2_n_0 ),
        .CO({\q_data_cnt_reg[4]_i_1__2_n_0 ,\q_data_cnt_reg[4]_i_1__2_n_1 ,\q_data_cnt_reg[4]_i_1__2_n_2 ,\q_data_cnt_reg[4]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_data_cnt_reg[4]_i_1__2_n_4 ,\q_data_cnt_reg[4]_i_1__2_n_5 ,\q_data_cnt_reg[4]_i_1__2_n_6 ,\q_data_cnt_reg[4]_i_1__2_n_7 }),
        .S(q_data_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[5] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[4]_i_1__2_n_6 ),
        .Q(q_data_cnt_reg[5]),
        .R(\block[3].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[6] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[4]_i_1__2_n_5 ),
        .Q(q_data_cnt_reg[6]),
        .R(\block[3].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[7] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[4]_i_1__2_n_4 ),
        .Q(q_data_cnt_reg[7]),
        .R(\block[3].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[8] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[8]_i_1__2_n_7 ),
        .Q(q_data_cnt_reg[8]),
        .R(\block[3].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_data_cnt_reg[8]_i_1__2 
       (.CI(\q_data_cnt_reg[4]_i_1__2_n_0 ),
        .CO({\q_data_cnt_reg[8]_i_1__2_n_0 ,\q_data_cnt_reg[8]_i_1__2_n_1 ,\q_data_cnt_reg[8]_i_1__2_n_2 ,\q_data_cnt_reg[8]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_data_cnt_reg[8]_i_1__2_n_4 ,\q_data_cnt_reg[8]_i_1__2_n_5 ,\q_data_cnt_reg[8]_i_1__2_n_6 ,\q_data_cnt_reg[8]_i_1__2_n_7 }),
        .S(q_data_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[9] 
       (.C(i_clk),
        .CE(E),
        .D(\q_data_cnt_reg[8]_i_1__2_n_6 ),
        .Q(q_data_cnt_reg[9]),
        .R(\block[3].w_avg_valid ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    q_div_vld_i_1__2
       (.I0(q_div_vld),
        .I1(SR),
        .I2(q_div_rdy),
        .I3(q_div_res_vld),
        .O(q_div_vld_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_div_vld_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(q_div_vld_i_1__2_n_0),
        .Q(q_div_vld),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[0]_i_2__2 
       (.I0(s_tdata[3]),
        .I1(q_sum_buf_reg[3]),
        .O(\q_sum_buf[0]_i_2__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[0]_i_3__2 
       (.I0(s_tdata[2]),
        .I1(q_sum_buf_reg[2]),
        .O(\q_sum_buf[0]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[0]_i_4__2 
       (.I0(s_tdata[1]),
        .I1(q_sum_buf_reg[1]),
        .O(\q_sum_buf[0]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[0]_i_5__2 
       (.I0(s_tdata[0]),
        .I1(q_sum_buf_reg[0]),
        .O(\q_sum_buf[0]_i_5__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[12]_i_2__2 
       (.I0(s_tdata[15]),
        .I1(q_sum_buf_reg[15]),
        .O(\q_sum_buf[12]_i_2__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[12]_i_3__2 
       (.I0(s_tdata[14]),
        .I1(q_sum_buf_reg[14]),
        .O(\q_sum_buf[12]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[12]_i_4__2 
       (.I0(s_tdata[13]),
        .I1(q_sum_buf_reg[13]),
        .O(\q_sum_buf[12]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[12]_i_5__2 
       (.I0(s_tdata[12]),
        .I1(q_sum_buf_reg[12]),
        .O(\q_sum_buf[12]_i_5__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[4]_i_2__2 
       (.I0(s_tdata[7]),
        .I1(q_sum_buf_reg[7]),
        .O(\q_sum_buf[4]_i_2__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[4]_i_3__2 
       (.I0(s_tdata[6]),
        .I1(q_sum_buf_reg[6]),
        .O(\q_sum_buf[4]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[4]_i_4__2 
       (.I0(s_tdata[5]),
        .I1(q_sum_buf_reg[5]),
        .O(\q_sum_buf[4]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[4]_i_5__2 
       (.I0(s_tdata[4]),
        .I1(q_sum_buf_reg[4]),
        .O(\q_sum_buf[4]_i_5__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[8]_i_2__2 
       (.I0(s_tdata[11]),
        .I1(q_sum_buf_reg[11]),
        .O(\q_sum_buf[8]_i_2__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[8]_i_3__2 
       (.I0(s_tdata[10]),
        .I1(q_sum_buf_reg[10]),
        .O(\q_sum_buf[8]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[8]_i_4__2 
       (.I0(s_tdata[9]),
        .I1(q_sum_buf_reg[9]),
        .O(\q_sum_buf[8]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_sum_buf[8]_i_5__2 
       (.I0(s_tdata[8]),
        .I1(q_sum_buf_reg[8]),
        .O(\q_sum_buf[8]_i_5__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[0] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[0]_i_1__2_n_7 ),
        .Q(q_sum_buf_reg[0]),
        .R(\block[3].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_sum_buf_reg[0]_i_1__2 
       (.CI(1'b0),
        .CO({\q_sum_buf_reg[0]_i_1__2_n_0 ,\q_sum_buf_reg[0]_i_1__2_n_1 ,\q_sum_buf_reg[0]_i_1__2_n_2 ,\q_sum_buf_reg[0]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI(s_tdata[3:0]),
        .O({\q_sum_buf_reg[0]_i_1__2_n_4 ,\q_sum_buf_reg[0]_i_1__2_n_5 ,\q_sum_buf_reg[0]_i_1__2_n_6 ,\q_sum_buf_reg[0]_i_1__2_n_7 }),
        .S({\q_sum_buf[0]_i_2__2_n_0 ,\q_sum_buf[0]_i_3__2_n_0 ,\q_sum_buf[0]_i_4__2_n_0 ,\q_sum_buf[0]_i_5__2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[10] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[8]_i_1__2_n_5 ),
        .Q(q_sum_buf_reg[10]),
        .R(\block[3].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[11] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[8]_i_1__2_n_4 ),
        .Q(q_sum_buf_reg[11]),
        .R(\block[3].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[12] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[12]_i_1__2_n_7 ),
        .Q(q_sum_buf_reg[12]),
        .R(\block[3].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_sum_buf_reg[12]_i_1__2 
       (.CI(\q_sum_buf_reg[8]_i_1__2_n_0 ),
        .CO({\NLW_q_sum_buf_reg[12]_i_1__2_CO_UNCONNECTED [3],\q_sum_buf_reg[12]_i_1__2_n_1 ,\q_sum_buf_reg[12]_i_1__2_n_2 ,\q_sum_buf_reg[12]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,s_tdata[14:12]}),
        .O({\q_sum_buf_reg[12]_i_1__2_n_4 ,\q_sum_buf_reg[12]_i_1__2_n_5 ,\q_sum_buf_reg[12]_i_1__2_n_6 ,\q_sum_buf_reg[12]_i_1__2_n_7 }),
        .S({\q_sum_buf[12]_i_2__2_n_0 ,\q_sum_buf[12]_i_3__2_n_0 ,\q_sum_buf[12]_i_4__2_n_0 ,\q_sum_buf[12]_i_5__2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[13] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[12]_i_1__2_n_6 ),
        .Q(q_sum_buf_reg[13]),
        .R(\block[3].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[14] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[12]_i_1__2_n_5 ),
        .Q(q_sum_buf_reg[14]),
        .R(\block[3].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[15] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[12]_i_1__2_n_4 ),
        .Q(q_sum_buf_reg[15]),
        .R(\block[3].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[1] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[0]_i_1__2_n_6 ),
        .Q(q_sum_buf_reg[1]),
        .R(\block[3].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[2] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[0]_i_1__2_n_5 ),
        .Q(q_sum_buf_reg[2]),
        .R(\block[3].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[3] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[0]_i_1__2_n_4 ),
        .Q(q_sum_buf_reg[3]),
        .R(\block[3].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[4] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[4]_i_1__2_n_7 ),
        .Q(q_sum_buf_reg[4]),
        .R(\block[3].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_sum_buf_reg[4]_i_1__2 
       (.CI(\q_sum_buf_reg[0]_i_1__2_n_0 ),
        .CO({\q_sum_buf_reg[4]_i_1__2_n_0 ,\q_sum_buf_reg[4]_i_1__2_n_1 ,\q_sum_buf_reg[4]_i_1__2_n_2 ,\q_sum_buf_reg[4]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI(s_tdata[7:4]),
        .O({\q_sum_buf_reg[4]_i_1__2_n_4 ,\q_sum_buf_reg[4]_i_1__2_n_5 ,\q_sum_buf_reg[4]_i_1__2_n_6 ,\q_sum_buf_reg[4]_i_1__2_n_7 }),
        .S({\q_sum_buf[4]_i_2__2_n_0 ,\q_sum_buf[4]_i_3__2_n_0 ,\q_sum_buf[4]_i_4__2_n_0 ,\q_sum_buf[4]_i_5__2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[5] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[4]_i_1__2_n_6 ),
        .Q(q_sum_buf_reg[5]),
        .R(\block[3].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[6] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[4]_i_1__2_n_5 ),
        .Q(q_sum_buf_reg[6]),
        .R(\block[3].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[7] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[4]_i_1__2_n_4 ),
        .Q(q_sum_buf_reg[7]),
        .R(\block[3].w_avg_valid ));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[8] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[8]_i_1__2_n_7 ),
        .Q(q_sum_buf_reg[8]),
        .R(\block[3].w_avg_valid ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_sum_buf_reg[8]_i_1__2 
       (.CI(\q_sum_buf_reg[4]_i_1__2_n_0 ),
        .CO({\q_sum_buf_reg[8]_i_1__2_n_0 ,\q_sum_buf_reg[8]_i_1__2_n_1 ,\q_sum_buf_reg[8]_i_1__2_n_2 ,\q_sum_buf_reg[8]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI(s_tdata[11:8]),
        .O({\q_sum_buf_reg[8]_i_1__2_n_4 ,\q_sum_buf_reg[8]_i_1__2_n_5 ,\q_sum_buf_reg[8]_i_1__2_n_6 ,\q_sum_buf_reg[8]_i_1__2_n_7 }),
        .S({\q_sum_buf[8]_i_2__2_n_0 ,\q_sum_buf[8]_i_3__2_n_0 ,\q_sum_buf[8]_i_4__2_n_0 ,\q_sum_buf[8]_i_5__2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_sum_buf_reg[9] 
       (.C(i_clk),
        .CE(E),
        .D(\q_sum_buf_reg[8]_i_1__2_n_6 ),
        .Q(q_sum_buf_reg[9]),
        .R(\block[3].w_avg_valid ));
endmodule

(* DVD_W = "16" *) (* DVR_W = "16" *) (* L = "32" *) 
(* M = "17" *) (* N = "2" *) (* R = "2" *) 
(* RES_W = "16" *) (* ROUNDING = "1'b1" *) (* SIGNED = "1'b0" *) 
(* THROUGHPUT = "16" *) (* USE_RESET = "1'b1" *) (* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider
   (i_div_s_rst_p,
    i_div_a_clk_p,
    i_div_dat_vld,
    o_div_dat_rdy,
    i_div_dvd_dat,
    i_div_dvr_dat,
    o_div_res_vld,
    o_div_res_dat);
  input i_div_s_rst_p;
  input i_div_a_clk_p;
  input i_div_dat_vld;
  output o_div_dat_rdy;
  input [15:0]i_div_dvd_dat;
  input [15:0]i_div_dvr_dat;
  output o_div_res_vld;
  output [15:0]o_div_res_dat;

  wire data0;
  wire data18;
  wire data19;
  wire data20;
  wire data21;
  wire data22;
  wire data23;
  wire data24;
  wire data25;
  wire data26;
  wire data27;
  wire data28;
  wire data29;
  wire data30;
  wire data31;
  wire \delay_dividend[0].u_delay_dividend_i_1_n_0 ;
  wire \delay_dividend[0].u_delay_dividend_i_2_n_0 ;
  wire \delay_dividend[0].u_delay_dividend_i_3_n_0 ;
  wire \delay_dividend[0].u_delay_dividend_i_4_n_0 ;
  wire \delay_dividend[0].u_delay_dividend_i_5_n_0 ;
  wire \delay_dividend[0].u_delay_dividend_i_6_n_0 ;
  wire \delay_dividend[0].u_delay_dividend_i_7_n_0 ;
  wire [16:0]\div_loop[0].w_div_rem_dat ;
  wire \div_loop[1].throughput_on.q_dly_rem_ena ;
  wire \div_loop[1].throughput_on.q_dly_rem_ena_i_1_n_0 ;
  wire [16:0]\div_loop[1].w_div_rem_dat ;
  wire i_div_a_clk_p;
  wire i_div_dat_vld;
  wire [15:0]i_div_dvd_dat;
  wire [15:0]i_div_dvr_dat;
  wire i_div_s_rst_p;
  wire [16:0]\m_div_rem_dat[0] ;
  wire [16:0]\m_div_rem_dat[1] ;
  wire m_div_res_vld;
  wire o_div_dat_rdy;
  wire [15:0]o_div_res_dat;
  wire o_div_res_vld;
  wire [3:1]p_0_in__0;
  (* MAX_FANOUT = "35" *) (* RTL_MAX_FANOUT = "found" *) wire q_div_dat_vld;
  wire q_div_dat_vld_i_1_n_0;
  wire [16:0]q_div_dvd_dat;
  wire [16:0]q_div_dvd_dat0;
  wire \q_div_dvd_dat[11]_i_2_n_0 ;
  wire \q_div_dvd_dat[11]_i_3_n_0 ;
  wire \q_div_dvd_dat[11]_i_4_n_0 ;
  wire \q_div_dvd_dat[11]_i_5_n_0 ;
  wire \q_div_dvd_dat[15]_i_2_n_0 ;
  wire \q_div_dvd_dat[15]_i_3_n_0 ;
  wire \q_div_dvd_dat[15]_i_4_n_0 ;
  wire \q_div_dvd_dat[15]_i_5_n_0 ;
  wire \q_div_dvd_dat[3]_i_2_n_0 ;
  wire \q_div_dvd_dat[3]_i_3_n_0 ;
  wire \q_div_dvd_dat[3]_i_4_n_0 ;
  wire \q_div_dvd_dat[3]_i_5_n_0 ;
  wire \q_div_dvd_dat[3]_i_6_n_0 ;
  wire \q_div_dvd_dat[7]_i_2_n_0 ;
  wire \q_div_dvd_dat[7]_i_3_n_0 ;
  wire \q_div_dvd_dat[7]_i_4_n_0 ;
  wire \q_div_dvd_dat[7]_i_5_n_0 ;
  wire \q_div_dvd_dat_reg[11]_i_1_n_0 ;
  wire \q_div_dvd_dat_reg[11]_i_1_n_1 ;
  wire \q_div_dvd_dat_reg[11]_i_1_n_2 ;
  wire \q_div_dvd_dat_reg[11]_i_1_n_3 ;
  wire \q_div_dvd_dat_reg[15]_i_1_n_0 ;
  wire \q_div_dvd_dat_reg[15]_i_1_n_1 ;
  wire \q_div_dvd_dat_reg[15]_i_1_n_2 ;
  wire \q_div_dvd_dat_reg[15]_i_1_n_3 ;
  wire \q_div_dvd_dat_reg[3]_i_1_n_0 ;
  wire \q_div_dvd_dat_reg[3]_i_1_n_1 ;
  wire \q_div_dvd_dat_reg[3]_i_1_n_2 ;
  wire \q_div_dvd_dat_reg[3]_i_1_n_3 ;
  wire \q_div_dvd_dat_reg[7]_i_1_n_0 ;
  wire \q_div_dvd_dat_reg[7]_i_1_n_1 ;
  wire \q_div_dvd_dat_reg[7]_i_1_n_2 ;
  wire \q_div_dvd_dat_reg[7]_i_1_n_3 ;
  wire [15:0]\q_div_dvr_dat[1] ;
  wire \q_div_dvr_dat_reg_n_0_[0][0] ;
  wire \q_div_dvr_dat_reg_n_0_[0][10] ;
  wire \q_div_dvr_dat_reg_n_0_[0][11] ;
  wire \q_div_dvr_dat_reg_n_0_[0][12] ;
  wire \q_div_dvr_dat_reg_n_0_[0][13] ;
  wire \q_div_dvr_dat_reg_n_0_[0][14] ;
  wire \q_div_dvr_dat_reg_n_0_[0][15] ;
  wire \q_div_dvr_dat_reg_n_0_[0][1] ;
  wire \q_div_dvr_dat_reg_n_0_[0][2] ;
  wire \q_div_dvr_dat_reg_n_0_[0][3] ;
  wire \q_div_dvr_dat_reg_n_0_[0][4] ;
  wire \q_div_dvr_dat_reg_n_0_[0][5] ;
  wire \q_div_dvr_dat_reg_n_0_[0][6] ;
  wire \q_div_dvr_dat_reg_n_0_[0][7] ;
  wire \q_div_dvr_dat_reg_n_0_[0][8] ;
  wire \q_div_dvr_dat_reg_n_0_[0][9] ;
  wire \q_div_res_dat_reg[12]_i_1_n_0 ;
  wire \q_div_res_dat_reg[12]_i_1_n_1 ;
  wire \q_div_res_dat_reg[12]_i_1_n_2 ;
  wire \q_div_res_dat_reg[12]_i_1_n_3 ;
  wire \q_div_res_dat_reg[12]_i_1_n_4 ;
  wire \q_div_res_dat_reg[12]_i_1_n_5 ;
  wire \q_div_res_dat_reg[12]_i_1_n_6 ;
  wire \q_div_res_dat_reg[12]_i_1_n_7 ;
  wire \q_div_res_dat_reg[16]_i_1_n_1 ;
  wire \q_div_res_dat_reg[16]_i_1_n_2 ;
  wire \q_div_res_dat_reg[16]_i_1_n_3 ;
  wire \q_div_res_dat_reg[16]_i_1_n_4 ;
  wire \q_div_res_dat_reg[16]_i_1_n_5 ;
  wire \q_div_res_dat_reg[16]_i_1_n_6 ;
  wire \q_div_res_dat_reg[16]_i_1_n_7 ;
  wire \q_div_res_dat_reg[4]_i_1_n_0 ;
  wire \q_div_res_dat_reg[4]_i_1_n_1 ;
  wire \q_div_res_dat_reg[4]_i_1_n_2 ;
  wire \q_div_res_dat_reg[4]_i_1_n_3 ;
  wire \q_div_res_dat_reg[4]_i_1_n_4 ;
  wire \q_div_res_dat_reg[4]_i_1_n_5 ;
  wire \q_div_res_dat_reg[4]_i_1_n_6 ;
  wire \q_div_res_dat_reg[4]_i_1_n_7 ;
  wire \q_div_res_dat_reg[8]_i_1_n_0 ;
  wire \q_div_res_dat_reg[8]_i_1_n_1 ;
  wire \q_div_res_dat_reg[8]_i_1_n_2 ;
  wire \q_div_res_dat_reg[8]_i_1_n_3 ;
  wire \q_div_res_dat_reg[8]_i_1_n_4 ;
  wire \q_div_res_dat_reg[8]_i_1_n_5 ;
  wire \q_div_res_dat_reg[8]_i_1_n_6 ;
  wire \q_div_res_dat_reg[8]_i_1_n_7 ;
  wire q_div_s_rst_p;
  wire q_sgn_div_sgn;
  wire q_sgn_div_sgn_i_1_n_0;
  wire sel;
  wire [3:0]\throughput_on.q_div_rdy_cnt ;
  wire \throughput_on.q_div_rdy_cnt[0]_i_1_n_0 ;
  wire \throughput_on.q_div_rdy_cnt[1]_i_1_n_0 ;
  wire \throughput_on.q_div_rdy_cnt[2]_i_1_n_0 ;
  wire \throughput_on.q_div_rdy_cnt[3]_i_1_n_0 ;
  wire \throughput_on.q_div_rdy_cnt[3]_i_2_n_0 ;
  wire \throughput_on.q_div_rep_cnt[0]_i_1_n_0 ;
  wire [3:0]\throughput_on.q_div_rep_cnt_reg ;
  wire \w_div_quo_dat[0] ;
  wire \w_div_quo_dat[16] ;
  wire [16:0]w_div_res_dat;
  wire \w_dly_dvd_dat[0] ;
  wire \w_dly_dvd_dat[1] ;
  wire \w_dly_dvr_ena[0] ;
  wire \w_dly_dvr_ena[1] ;
  wire [3:0]\NLW_q_div_dvd_dat_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_q_div_dvd_dat_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_q_div_res_dat_reg[16]_i_1_CO_UNCONNECTED ;
  wire [0:0]NLW_u_delay_sign_o_dly_a_value_UNCONNECTED;

  (* DELAY = "0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL_REG" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized0 \delay_dividend[0].u_delay_dividend 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\delay_dividend[0].u_delay_dividend_i_1_n_0 ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(\w_dly_dvd_dat[0] ));
  MUXF8 \delay_dividend[0].u_delay_dividend_i_1 
       (.I0(\delay_dividend[0].u_delay_dividend_i_2_n_0 ),
        .I1(\delay_dividend[0].u_delay_dividend_i_3_n_0 ),
        .O(\delay_dividend[0].u_delay_dividend_i_1_n_0 ),
        .S(\throughput_on.q_div_rep_cnt_reg [3]));
  MUXF7 \delay_dividend[0].u_delay_dividend_i_2 
       (.I0(\delay_dividend[0].u_delay_dividend_i_4_n_0 ),
        .I1(\delay_dividend[0].u_delay_dividend_i_5_n_0 ),
        .O(\delay_dividend[0].u_delay_dividend_i_2_n_0 ),
        .S(\throughput_on.q_div_rep_cnt_reg [2]));
  MUXF7 \delay_dividend[0].u_delay_dividend_i_3 
       (.I0(\delay_dividend[0].u_delay_dividend_i_6_n_0 ),
        .I1(\delay_dividend[0].u_delay_dividend_i_7_n_0 ),
        .O(\delay_dividend[0].u_delay_dividend_i_3_n_0 ),
        .S(\throughput_on.q_div_rep_cnt_reg [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \delay_dividend[0].u_delay_dividend_i_4 
       (.I0(data29),
        .I1(data30),
        .I2(\throughput_on.q_div_rep_cnt_reg [1]),
        .I3(data31),
        .I4(\throughput_on.q_div_rep_cnt_reg [0]),
        .I5(data0),
        .O(\delay_dividend[0].u_delay_dividend_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \delay_dividend[0].u_delay_dividend_i_5 
       (.I0(data25),
        .I1(data26),
        .I2(\throughput_on.q_div_rep_cnt_reg [1]),
        .I3(data27),
        .I4(\throughput_on.q_div_rep_cnt_reg [0]),
        .I5(data28),
        .O(\delay_dividend[0].u_delay_dividend_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \delay_dividend[0].u_delay_dividend_i_6 
       (.I0(data21),
        .I1(data22),
        .I2(\throughput_on.q_div_rep_cnt_reg [1]),
        .I3(data23),
        .I4(\throughput_on.q_div_rep_cnt_reg [0]),
        .I5(data24),
        .O(\delay_dividend[0].u_delay_dividend_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \delay_dividend[0].u_delay_dividend_i_7 
       (.I0(data18),
        .I1(\throughput_on.q_div_rep_cnt_reg [1]),
        .I2(data19),
        .I3(\throughput_on.q_div_rep_cnt_reg [0]),
        .I4(data20),
        .O(\delay_dividend[0].u_delay_dividend_i_7_n_0 ));
  (* DELAY = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL_REG" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay \delay_dividend[1].u_delay_dividend 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(1'b0),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(\w_dly_dvd_dat[1] ));
  (* DELAY = "1" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "No" *) 
  (* STYLE = "Register" *) 
  (* WIDTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized1 \delay_divisor[1].u_delay_divisor 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value({\q_div_dvr_dat_reg_n_0_[0][15] ,\q_div_dvr_dat_reg_n_0_[0][14] ,\q_div_dvr_dat_reg_n_0_[0][13] ,\q_div_dvr_dat_reg_n_0_[0][12] ,\q_div_dvr_dat_reg_n_0_[0][11] ,\q_div_dvr_dat_reg_n_0_[0][10] ,\q_div_dvr_dat_reg_n_0_[0][9] ,\q_div_dvr_dat_reg_n_0_[0][8] ,\q_div_dvr_dat_reg_n_0_[0][7] ,\q_div_dvr_dat_reg_n_0_[0][6] ,\q_div_dvr_dat_reg_n_0_[0][5] ,\q_div_dvr_dat_reg_n_0_[0][4] ,\q_div_dvr_dat_reg_n_0_[0][3] ,\q_div_dvr_dat_reg_n_0_[0][2] ,\q_div_dvr_dat_reg_n_0_[0][1] ,\q_div_dvr_dat_reg_n_0_[0][0] }),
        .i_dly_s_ena_p(\w_dly_dvr_ena[1] ),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(\q_div_dvr_dat[1] ));
  (* DELAY = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized2 \delay_quotient[0].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[16]));
  (* DELAY = "6" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized12 \delay_quotient[10].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[6]));
  (* DELAY = "5" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized13 \delay_quotient[11].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[5]));
  (* DELAY = "4" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized14 \delay_quotient[12].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[4]));
  (* DELAY = "3" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized15 \delay_quotient[13].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[3]));
  (* DELAY = "2" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized16 \delay_quotient[14].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[2]));
  (* DELAY = "1" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "Register" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized17 \delay_quotient[15].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[1]));
  (* DELAY = "0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized18 \delay_quotient[16].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[16] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[0]));
  (* DELAY = "15" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized3 \delay_quotient[1].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[15]));
  (* DELAY = "14" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized4 \delay_quotient[2].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[14]));
  (* DELAY = "13" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized5 \delay_quotient[3].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[13]));
  (* DELAY = "12" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized6 \delay_quotient[4].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[12]));
  (* DELAY = "11" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized7 \delay_quotient[5].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[11]));
  (* DELAY = "10" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized8 \delay_quotient[6].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[10]));
  (* DELAY = "9" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized9 \delay_quotient[7].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[9]));
  (* DELAY = "8" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized10 \delay_quotient[8].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[8]));
  (* DELAY = "7" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized11 \delay_quotient[9].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[7]));
  (* DVR_W = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* QUOTIENT_ONLY = "1'b0" *) 
  (* REM_W = "17" *) 
  (* USE_REG = "1'b1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_div \div_loop[0].u_div 
       (.i_div_a_clk_p(i_div_a_clk_p),
        .i_div_dvd_dat(\w_dly_dvd_dat[0] ),
        .i_div_dvr_dat({\q_div_dvr_dat_reg_n_0_[0][15] ,\q_div_dvr_dat_reg_n_0_[0][14] ,\q_div_dvr_dat_reg_n_0_[0][13] ,\q_div_dvr_dat_reg_n_0_[0][12] ,\q_div_dvr_dat_reg_n_0_[0][11] ,\q_div_dvr_dat_reg_n_0_[0][10] ,\q_div_dvr_dat_reg_n_0_[0][9] ,\q_div_dvr_dat_reg_n_0_[0][8] ,\q_div_dvr_dat_reg_n_0_[0][7] ,\q_div_dvr_dat_reg_n_0_[0][6] ,\q_div_dvr_dat_reg_n_0_[0][5] ,\q_div_dvr_dat_reg_n_0_[0][4] ,\q_div_dvr_dat_reg_n_0_[0][3] ,\q_div_dvr_dat_reg_n_0_[0][2] ,\q_div_dvr_dat_reg_n_0_[0][1] ,\q_div_dvr_dat_reg_n_0_[0][0] }),
        .i_div_rem_dat(\div_loop[0].w_div_rem_dat ),
        .o_div_quo_dat(\w_div_quo_dat[0] ),
        .o_div_rem_dat(\m_div_rem_dat[0] ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_1 
       (.I0(q_div_dvd_dat[16]),
        .I1(\m_div_rem_dat[0] [16]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [16]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_10 
       (.I0(q_div_dvd_dat[7]),
        .I1(\m_div_rem_dat[0] [7]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_11 
       (.I0(q_div_dvd_dat[6]),
        .I1(\m_div_rem_dat[0] [6]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_12 
       (.I0(q_div_dvd_dat[5]),
        .I1(\m_div_rem_dat[0] [5]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_13 
       (.I0(q_div_dvd_dat[4]),
        .I1(\m_div_rem_dat[0] [4]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_14 
       (.I0(q_div_dvd_dat[3]),
        .I1(\m_div_rem_dat[0] [3]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_15 
       (.I0(q_div_dvd_dat[2]),
        .I1(\m_div_rem_dat[0] [2]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_16 
       (.I0(q_div_dvd_dat[1]),
        .I1(\m_div_rem_dat[0] [1]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_17 
       (.I0(q_div_dvd_dat[0]),
        .I1(\m_div_rem_dat[0] [0]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_2 
       (.I0(q_div_dvd_dat[15]),
        .I1(\m_div_rem_dat[0] [15]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_3 
       (.I0(q_div_dvd_dat[14]),
        .I1(\m_div_rem_dat[0] [14]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_4 
       (.I0(q_div_dvd_dat[13]),
        .I1(\m_div_rem_dat[0] [13]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_5 
       (.I0(q_div_dvd_dat[12]),
        .I1(\m_div_rem_dat[0] [12]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_6 
       (.I0(q_div_dvd_dat[11]),
        .I1(\m_div_rem_dat[0] [11]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_7 
       (.I0(q_div_dvd_dat[10]),
        .I1(\m_div_rem_dat[0] [10]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_8 
       (.I0(q_div_dvd_dat[9]),
        .I1(\m_div_rem_dat[0] [9]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [9]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_9 
       (.I0(q_div_dvd_dat[8]),
        .I1(\m_div_rem_dat[0] [8]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [8]));
  LUT2 #(
    .INIT(4'h2)) 
    \div_loop[1].throughput_on.q_dly_rem_ena_i_1 
       (.I0(\w_dly_dvr_ena[1] ),
        .I1(q_div_s_rst_p),
        .O(\div_loop[1].throughput_on.q_dly_rem_ena_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \div_loop[1].throughput_on.q_dly_rem_ena_reg 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(\div_loop[1].throughput_on.q_dly_rem_ena_i_1_n_0 ),
        .Q(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .R(1'b0));
  (* DVR_W = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* QUOTIENT_ONLY = "1'b1" *) 
  (* REM_W = "17" *) 
  (* USE_REG = "1'b1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_div__parameterized0 \div_loop[1].u_div 
       (.i_div_a_clk_p(i_div_a_clk_p),
        .i_div_dvd_dat(\w_dly_dvd_dat[1] ),
        .i_div_dvr_dat(\q_div_dvr_dat[1] ),
        .i_div_rem_dat(\div_loop[1].w_div_rem_dat ),
        .o_div_quo_dat(\w_div_quo_dat[16] ),
        .o_div_rem_dat(\m_div_rem_dat[1] ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_1 
       (.I0(\m_div_rem_dat[0] [16]),
        .I1(\m_div_rem_dat[1] [16]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [16]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_10 
       (.I0(\m_div_rem_dat[0] [7]),
        .I1(\m_div_rem_dat[1] [7]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [7]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_11 
       (.I0(\m_div_rem_dat[0] [6]),
        .I1(\m_div_rem_dat[1] [6]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [6]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_12 
       (.I0(\m_div_rem_dat[0] [5]),
        .I1(\m_div_rem_dat[1] [5]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [5]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_13 
       (.I0(\m_div_rem_dat[0] [4]),
        .I1(\m_div_rem_dat[1] [4]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [4]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_14 
       (.I0(\m_div_rem_dat[0] [3]),
        .I1(\m_div_rem_dat[1] [3]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [3]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_15 
       (.I0(\m_div_rem_dat[0] [2]),
        .I1(\m_div_rem_dat[1] [2]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [2]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_16 
       (.I0(\m_div_rem_dat[0] [1]),
        .I1(\m_div_rem_dat[1] [1]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [1]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_17 
       (.I0(\m_div_rem_dat[0] [0]),
        .I1(\m_div_rem_dat[1] [0]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [0]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_2 
       (.I0(\m_div_rem_dat[0] [15]),
        .I1(\m_div_rem_dat[1] [15]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [15]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_3 
       (.I0(\m_div_rem_dat[0] [14]),
        .I1(\m_div_rem_dat[1] [14]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [14]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_4 
       (.I0(\m_div_rem_dat[0] [13]),
        .I1(\m_div_rem_dat[1] [13]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [13]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_5 
       (.I0(\m_div_rem_dat[0] [12]),
        .I1(\m_div_rem_dat[1] [12]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [12]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_6 
       (.I0(\m_div_rem_dat[0] [11]),
        .I1(\m_div_rem_dat[1] [11]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [11]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_7 
       (.I0(\m_div_rem_dat[0] [10]),
        .I1(\m_div_rem_dat[1] [10]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [10]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_8 
       (.I0(\m_div_rem_dat[0] [9]),
        .I1(\m_div_rem_dat[1] [9]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [9]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_9 
       (.I0(\m_div_rem_dat[0] [8]),
        .I1(\m_div_rem_dat[1] [8]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [8]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    o_div_dat_rdy_INST_0
       (.I0(\throughput_on.q_div_rdy_cnt [3]),
        .I1(\throughput_on.q_div_rdy_cnt [1]),
        .I2(\throughput_on.q_div_rdy_cnt [0]),
        .I3(\throughput_on.q_div_rdy_cnt [2]),
        .I4(q_div_s_rst_p),
        .O(o_div_dat_rdy));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    q_div_dat_vld_i_1
       (.I0(i_div_dat_vld),
        .I1(\throughput_on.q_div_rdy_cnt [3]),
        .I2(\throughput_on.q_div_rdy_cnt [1]),
        .I3(\throughput_on.q_div_rdy_cnt [0]),
        .I4(\throughput_on.q_div_rdy_cnt [2]),
        .I5(q_div_s_rst_p),
        .O(q_div_dat_vld_i_1_n_0));
  (* RTL_MAX_FANOUT = "found" *) 
  FDRE #(
    .INIT(1'b0)) 
    q_div_dat_vld_reg
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(q_div_dat_vld_i_1_n_0),
        .Q(q_div_dat_vld),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[11]_i_2 
       (.I0(i_div_dvr_dat[11]),
        .O(\q_div_dvd_dat[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[11]_i_3 
       (.I0(i_div_dvr_dat[10]),
        .O(\q_div_dvd_dat[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[11]_i_4 
       (.I0(i_div_dvr_dat[9]),
        .O(\q_div_dvd_dat[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[11]_i_5 
       (.I0(i_div_dvr_dat[8]),
        .O(\q_div_dvd_dat[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[15]_i_2 
       (.I0(i_div_dvr_dat[15]),
        .O(\q_div_dvd_dat[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[15]_i_3 
       (.I0(i_div_dvr_dat[14]),
        .O(\q_div_dvd_dat[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[15]_i_4 
       (.I0(i_div_dvr_dat[13]),
        .O(\q_div_dvd_dat[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[15]_i_5 
       (.I0(i_div_dvr_dat[12]),
        .O(\q_div_dvd_dat[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \q_div_dvd_dat[3]_i_2 
       (.I0(i_div_dvd_dat[15]),
        .I1(i_div_dvr_dat[0]),
        .O(\q_div_dvd_dat[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[3]_i_3 
       (.I0(i_div_dvr_dat[3]),
        .O(\q_div_dvd_dat[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[3]_i_4 
       (.I0(i_div_dvr_dat[2]),
        .O(\q_div_dvd_dat[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \q_div_dvd_dat[3]_i_5 
       (.I0(i_div_dvr_dat[0]),
        .I1(i_div_dvd_dat[15]),
        .I2(i_div_dvr_dat[1]),
        .O(\q_div_dvd_dat[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_div_dvd_dat[3]_i_6 
       (.I0(i_div_dvd_dat[15]),
        .I1(i_div_dvr_dat[0]),
        .O(\q_div_dvd_dat[3]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[7]_i_2 
       (.I0(i_div_dvr_dat[7]),
        .O(\q_div_dvd_dat[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[7]_i_3 
       (.I0(i_div_dvr_dat[6]),
        .O(\q_div_dvd_dat[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[7]_i_4 
       (.I0(i_div_dvr_dat[5]),
        .O(\q_div_dvd_dat[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[7]_i_5 
       (.I0(i_div_dvr_dat[4]),
        .O(\q_div_dvd_dat[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[0] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[0]),
        .Q(q_div_dvd_dat[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[10] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[10]),
        .Q(q_div_dvd_dat[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[11] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[11]),
        .Q(q_div_dvd_dat[11]),
        .R(1'b0));
  CARRY4 \q_div_dvd_dat_reg[11]_i_1 
       (.CI(\q_div_dvd_dat_reg[7]_i_1_n_0 ),
        .CO({\q_div_dvd_dat_reg[11]_i_1_n_0 ,\q_div_dvd_dat_reg[11]_i_1_n_1 ,\q_div_dvd_dat_reg[11]_i_1_n_2 ,\q_div_dvd_dat_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_div_dvd_dat0[11:8]),
        .S({\q_div_dvd_dat[11]_i_2_n_0 ,\q_div_dvd_dat[11]_i_3_n_0 ,\q_div_dvd_dat[11]_i_4_n_0 ,\q_div_dvd_dat[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[12] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[12]),
        .Q(q_div_dvd_dat[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[13] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[13]),
        .Q(q_div_dvd_dat[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[14] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[14]),
        .Q(q_div_dvd_dat[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[15] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[15]),
        .Q(q_div_dvd_dat[15]),
        .R(1'b0));
  CARRY4 \q_div_dvd_dat_reg[15]_i_1 
       (.CI(\q_div_dvd_dat_reg[11]_i_1_n_0 ),
        .CO({\q_div_dvd_dat_reg[15]_i_1_n_0 ,\q_div_dvd_dat_reg[15]_i_1_n_1 ,\q_div_dvd_dat_reg[15]_i_1_n_2 ,\q_div_dvd_dat_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_div_dvd_dat0[15:12]),
        .S({\q_div_dvd_dat[15]_i_2_n_0 ,\q_div_dvd_dat[15]_i_3_n_0 ,\q_div_dvd_dat[15]_i_4_n_0 ,\q_div_dvd_dat[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[16] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[16]),
        .Q(q_div_dvd_dat[16]),
        .R(1'b0));
  CARRY4 \q_div_dvd_dat_reg[16]_i_1 
       (.CI(\q_div_dvd_dat_reg[15]_i_1_n_0 ),
        .CO(\NLW_q_div_dvd_dat_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_q_div_dvd_dat_reg[16]_i_1_O_UNCONNECTED [3:1],q_div_dvd_dat0[16]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[1] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[1]),
        .Q(q_div_dvd_dat[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[2] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[2]),
        .Q(q_div_dvd_dat[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[3] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[3]),
        .Q(q_div_dvd_dat[3]),
        .R(1'b0));
  CARRY4 \q_div_dvd_dat_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\q_div_dvd_dat_reg[3]_i_1_n_0 ,\q_div_dvd_dat_reg[3]_i_1_n_1 ,\q_div_dvd_dat_reg[3]_i_1_n_2 ,\q_div_dvd_dat_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\q_div_dvd_dat[3]_i_2_n_0 ,1'b0}),
        .O(q_div_dvd_dat0[3:0]),
        .S({\q_div_dvd_dat[3]_i_3_n_0 ,\q_div_dvd_dat[3]_i_4_n_0 ,\q_div_dvd_dat[3]_i_5_n_0 ,\q_div_dvd_dat[3]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[4] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[4]),
        .Q(q_div_dvd_dat[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[5] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[5]),
        .Q(q_div_dvd_dat[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[6] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[6]),
        .Q(q_div_dvd_dat[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[7] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[7]),
        .Q(q_div_dvd_dat[7]),
        .R(1'b0));
  CARRY4 \q_div_dvd_dat_reg[7]_i_1 
       (.CI(\q_div_dvd_dat_reg[3]_i_1_n_0 ),
        .CO({\q_div_dvd_dat_reg[7]_i_1_n_0 ,\q_div_dvd_dat_reg[7]_i_1_n_1 ,\q_div_dvd_dat_reg[7]_i_1_n_2 ,\q_div_dvd_dat_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_div_dvd_dat0[7:4]),
        .S({\q_div_dvd_dat[7]_i_2_n_0 ,\q_div_dvd_dat[7]_i_3_n_0 ,\q_div_dvd_dat[7]_i_4_n_0 ,\q_div_dvd_dat[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[8] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[8]),
        .Q(q_div_dvd_dat[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[9] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[9]),
        .Q(q_div_dvd_dat[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][0] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[0]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][10] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[10]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][11] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[11]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][12] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[12]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][13] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[13]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][14] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[14]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][15] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[15]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][1] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[1]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][2] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[2]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][3] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[3]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][4] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[4]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][5] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[5]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][6] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[6]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][7] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[7]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][8] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[8]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][9] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[9]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[10] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[12]_i_1_n_6 ),
        .Q(o_div_res_dat[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[11] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[12]_i_1_n_5 ),
        .Q(o_div_res_dat[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[12] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[12]_i_1_n_4 ),
        .Q(o_div_res_dat[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \q_div_res_dat_reg[12]_i_1 
       (.CI(\q_div_res_dat_reg[8]_i_1_n_0 ),
        .CO({\q_div_res_dat_reg[12]_i_1_n_0 ,\q_div_res_dat_reg[12]_i_1_n_1 ,\q_div_res_dat_reg[12]_i_1_n_2 ,\q_div_res_dat_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_div_res_dat_reg[12]_i_1_n_4 ,\q_div_res_dat_reg[12]_i_1_n_5 ,\q_div_res_dat_reg[12]_i_1_n_6 ,\q_div_res_dat_reg[12]_i_1_n_7 }),
        .S(w_div_res_dat[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[13] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[16]_i_1_n_7 ),
        .Q(o_div_res_dat[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[14] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[16]_i_1_n_6 ),
        .Q(o_div_res_dat[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[15] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[16]_i_1_n_5 ),
        .Q(o_div_res_dat[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[16] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[16]_i_1_n_4 ),
        .Q(o_div_res_dat[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \q_div_res_dat_reg[16]_i_1 
       (.CI(\q_div_res_dat_reg[12]_i_1_n_0 ),
        .CO({\NLW_q_div_res_dat_reg[16]_i_1_CO_UNCONNECTED [3],\q_div_res_dat_reg[16]_i_1_n_1 ,\q_div_res_dat_reg[16]_i_1_n_2 ,\q_div_res_dat_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_div_res_dat_reg[16]_i_1_n_4 ,\q_div_res_dat_reg[16]_i_1_n_5 ,\q_div_res_dat_reg[16]_i_1_n_6 ,\q_div_res_dat_reg[16]_i_1_n_7 }),
        .S(w_div_res_dat[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[1] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[4]_i_1_n_7 ),
        .Q(o_div_res_dat[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[2] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[4]_i_1_n_6 ),
        .Q(o_div_res_dat[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[3] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[4]_i_1_n_5 ),
        .Q(o_div_res_dat[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[4] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[4]_i_1_n_4 ),
        .Q(o_div_res_dat[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \q_div_res_dat_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\q_div_res_dat_reg[4]_i_1_n_0 ,\q_div_res_dat_reg[4]_i_1_n_1 ,\q_div_res_dat_reg[4]_i_1_n_2 ,\q_div_res_dat_reg[4]_i_1_n_3 }),
        .CYINIT(w_div_res_dat[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_div_res_dat_reg[4]_i_1_n_4 ,\q_div_res_dat_reg[4]_i_1_n_5 ,\q_div_res_dat_reg[4]_i_1_n_6 ,\q_div_res_dat_reg[4]_i_1_n_7 }),
        .S(w_div_res_dat[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[5] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[8]_i_1_n_7 ),
        .Q(o_div_res_dat[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[6] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[8]_i_1_n_6 ),
        .Q(o_div_res_dat[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[7] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[8]_i_1_n_5 ),
        .Q(o_div_res_dat[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[8] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[8]_i_1_n_4 ),
        .Q(o_div_res_dat[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \q_div_res_dat_reg[8]_i_1 
       (.CI(\q_div_res_dat_reg[4]_i_1_n_0 ),
        .CO({\q_div_res_dat_reg[8]_i_1_n_0 ,\q_div_res_dat_reg[8]_i_1_n_1 ,\q_div_res_dat_reg[8]_i_1_n_2 ,\q_div_res_dat_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_div_res_dat_reg[8]_i_1_n_4 ,\q_div_res_dat_reg[8]_i_1_n_5 ,\q_div_res_dat_reg[8]_i_1_n_6 ,\q_div_res_dat_reg[8]_i_1_n_7 }),
        .S(w_div_res_dat[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[9] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[12]_i_1_n_7 ),
        .Q(o_div_res_dat[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q_div_res_vld_reg
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(m_div_res_vld),
        .Q(o_div_res_vld),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q_div_s_rst_p_reg
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(i_div_s_rst_p),
        .Q(q_div_s_rst_p),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[17] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[0]),
        .Q(data18),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[18] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[1]),
        .Q(data19),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[19] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[2]),
        .Q(data20),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[20] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[3]),
        .Q(data21),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[21] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[4]),
        .Q(data22),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[22] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[5]),
        .Q(data23),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[23] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[6]),
        .Q(data24),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[24] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[7]),
        .Q(data25),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[25] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[8]),
        .Q(data26),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[26] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[9]),
        .Q(data27),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[27] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[10]),
        .Q(data28),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[28] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[11]),
        .Q(data29),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[29] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[12]),
        .Q(data30),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[30] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[13]),
        .Q(data31),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[31] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[14]),
        .Q(data0),
        .R(q_div_s_rst_p));
  LUT2 #(
    .INIT(4'h6)) 
    q_sgn_div_sgn_i_1
       (.I0(i_div_dvr_dat[15]),
        .I1(i_div_dvd_dat[15]),
        .O(q_sgn_div_sgn_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_sgn_div_sgn_reg
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(q_sgn_div_sgn_i_1_n_0),
        .Q(q_sgn_div_sgn),
        .R(1'b0));
  (* DELAY = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL_REG" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__4 \throughput_on.delay_enable[1].u_delay_valid 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_dly_dvr_ena[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(\w_dly_dvr_ena[1] ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \throughput_on.delay_enable[1].u_delay_valid_i_1 
       (.I0(q_div_s_rst_p),
        .I1(\throughput_on.q_div_rdy_cnt [2]),
        .I2(\throughput_on.q_div_rdy_cnt [0]),
        .I3(\throughput_on.q_div_rdy_cnt [1]),
        .I4(\throughput_on.q_div_rdy_cnt [3]),
        .I5(i_div_dat_vld),
        .O(\w_dly_dvr_ena[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \throughput_on.q_div_rdy_cnt[0]_i_1 
       (.I0(\throughput_on.q_div_rdy_cnt [0]),
        .O(\throughput_on.q_div_rdy_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \throughput_on.q_div_rdy_cnt[1]_i_1 
       (.I0(\throughput_on.q_div_rdy_cnt [1]),
        .I1(\throughput_on.q_div_rdy_cnt [0]),
        .O(\throughput_on.q_div_rdy_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \throughput_on.q_div_rdy_cnt[2]_i_1 
       (.I0(\throughput_on.q_div_rdy_cnt [1]),
        .I1(\throughput_on.q_div_rdy_cnt [0]),
        .I2(\throughput_on.q_div_rdy_cnt [2]),
        .O(\throughput_on.q_div_rdy_cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \throughput_on.q_div_rdy_cnt[3]_i_1 
       (.I0(i_div_dat_vld),
        .I1(\throughput_on.q_div_rdy_cnt [3]),
        .I2(\throughput_on.q_div_rdy_cnt [1]),
        .I3(\throughput_on.q_div_rdy_cnt [0]),
        .I4(\throughput_on.q_div_rdy_cnt [2]),
        .O(\throughput_on.q_div_rdy_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \throughput_on.q_div_rdy_cnt[3]_i_2 
       (.I0(\throughput_on.q_div_rdy_cnt [3]),
        .I1(\throughput_on.q_div_rdy_cnt [1]),
        .I2(\throughput_on.q_div_rdy_cnt [0]),
        .I3(\throughput_on.q_div_rdy_cnt [2]),
        .O(\throughput_on.q_div_rdy_cnt[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rdy_cnt_reg[0] 
       (.C(i_div_a_clk_p),
        .CE(\throughput_on.q_div_rdy_cnt[3]_i_1_n_0 ),
        .D(\throughput_on.q_div_rdy_cnt[0]_i_1_n_0 ),
        .Q(\throughput_on.q_div_rdy_cnt [0]),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rdy_cnt_reg[1] 
       (.C(i_div_a_clk_p),
        .CE(\throughput_on.q_div_rdy_cnt[3]_i_1_n_0 ),
        .D(\throughput_on.q_div_rdy_cnt[1]_i_1_n_0 ),
        .Q(\throughput_on.q_div_rdy_cnt [1]),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rdy_cnt_reg[2] 
       (.C(i_div_a_clk_p),
        .CE(\throughput_on.q_div_rdy_cnt[3]_i_1_n_0 ),
        .D(\throughput_on.q_div_rdy_cnt[2]_i_1_n_0 ),
        .Q(\throughput_on.q_div_rdy_cnt [2]),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rdy_cnt_reg[3] 
       (.C(i_div_a_clk_p),
        .CE(\throughput_on.q_div_rdy_cnt[3]_i_1_n_0 ),
        .D(\throughput_on.q_div_rdy_cnt[3]_i_2_n_0 ),
        .Q(\throughput_on.q_div_rdy_cnt [3]),
        .R(q_div_s_rst_p));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \throughput_on.q_div_rep_cnt[0]_i_1 
       (.I0(\throughput_on.q_div_rep_cnt_reg [0]),
        .O(\throughput_on.q_div_rep_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \throughput_on.q_div_rep_cnt[1]_i_1 
       (.I0(\throughput_on.q_div_rep_cnt_reg [1]),
        .I1(\throughput_on.q_div_rep_cnt_reg [0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \throughput_on.q_div_rep_cnt[2]_i_1 
       (.I0(\throughput_on.q_div_rep_cnt_reg [2]),
        .I1(\throughput_on.q_div_rep_cnt_reg [0]),
        .I2(\throughput_on.q_div_rep_cnt_reg [1]),
        .O(p_0_in__0[2]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \throughput_on.q_div_rep_cnt[3]_i_1 
       (.I0(\throughput_on.q_div_rep_cnt_reg [2]),
        .I1(\throughput_on.q_div_rep_cnt_reg [0]),
        .I2(\throughput_on.q_div_rep_cnt_reg [1]),
        .I3(\throughput_on.q_div_rep_cnt_reg [3]),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \throughput_on.q_div_rep_cnt[3]_i_2 
       (.I0(\throughput_on.q_div_rep_cnt_reg [3]),
        .I1(\throughput_on.q_div_rep_cnt_reg [0]),
        .I2(\throughput_on.q_div_rep_cnt_reg [1]),
        .I3(\throughput_on.q_div_rep_cnt_reg [2]),
        .O(p_0_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rep_cnt_reg[0] 
       (.C(i_div_a_clk_p),
        .CE(sel),
        .D(\throughput_on.q_div_rep_cnt[0]_i_1_n_0 ),
        .Q(\throughput_on.q_div_rep_cnt_reg [0]),
        .R(\w_dly_dvr_ena[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rep_cnt_reg[1] 
       (.C(i_div_a_clk_p),
        .CE(sel),
        .D(p_0_in__0[1]),
        .Q(\throughput_on.q_div_rep_cnt_reg [1]),
        .R(\w_dly_dvr_ena[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rep_cnt_reg[2] 
       (.C(i_div_a_clk_p),
        .CE(sel),
        .D(p_0_in__0[2]),
        .Q(\throughput_on.q_div_rep_cnt_reg [2]),
        .R(\w_dly_dvr_ena[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rep_cnt_reg[3] 
       (.C(i_div_a_clk_p),
        .CE(sel),
        .D(p_0_in__0[3]),
        .Q(\throughput_on.q_div_rep_cnt_reg [3]),
        .R(\w_dly_dvr_ena[0] ));
  (* DELAY = "18" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b1" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL_REG" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized20 u_delay_sign
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(q_sgn_div_sgn),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(NLW_u_delay_sign_o_dly_a_value_UNCONNECTED[0]));
  (* DELAY = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b1" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized19 u_delay_valid
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(q_div_dat_vld),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(q_div_s_rst_p),
        .o_dly_a_value(m_div_res_vld));
endmodule

(* DVD_W = "16" *) (* DVR_W = "16" *) (* L = "32" *) 
(* M = "17" *) (* N = "2" *) (* ORIG_REF_NAME = "divider" *) 
(* R = "2" *) (* RES_W = "16" *) (* ROUNDING = "1'b1" *) 
(* SIGNED = "1'b0" *) (* THROUGHPUT = "16" *) (* USE_RESET = "1'b1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider__1
   (i_div_s_rst_p,
    i_div_a_clk_p,
    i_div_dat_vld,
    o_div_dat_rdy,
    i_div_dvd_dat,
    i_div_dvr_dat,
    o_div_res_vld,
    o_div_res_dat);
  input i_div_s_rst_p;
  input i_div_a_clk_p;
  input i_div_dat_vld;
  output o_div_dat_rdy;
  input [15:0]i_div_dvd_dat;
  input [15:0]i_div_dvr_dat;
  output o_div_res_vld;
  output [15:0]o_div_res_dat;

  wire data0;
  wire data18;
  wire data19;
  wire data20;
  wire data21;
  wire data22;
  wire data23;
  wire data24;
  wire data25;
  wire data26;
  wire data27;
  wire data28;
  wire data29;
  wire data30;
  wire data31;
  wire \delay_dividend[0].u_delay_dividend_i_1_n_0 ;
  wire \delay_dividend[0].u_delay_dividend_i_2_n_0 ;
  wire \delay_dividend[0].u_delay_dividend_i_3_n_0 ;
  wire \delay_dividend[0].u_delay_dividend_i_4_n_0 ;
  wire \delay_dividend[0].u_delay_dividend_i_5_n_0 ;
  wire \delay_dividend[0].u_delay_dividend_i_6_n_0 ;
  wire \delay_dividend[0].u_delay_dividend_i_7_n_0 ;
  wire [16:0]\div_loop[0].w_div_rem_dat ;
  wire \div_loop[1].throughput_on.q_dly_rem_ena ;
  wire \div_loop[1].throughput_on.q_dly_rem_ena_i_1_n_0 ;
  wire [16:0]\div_loop[1].w_div_rem_dat ;
  wire i_div_a_clk_p;
  wire i_div_dat_vld;
  wire [15:0]i_div_dvd_dat;
  wire [15:0]i_div_dvr_dat;
  wire i_div_s_rst_p;
  wire [16:0]\m_div_rem_dat[0] ;
  wire [16:0]\m_div_rem_dat[1] ;
  wire m_div_res_vld;
  wire o_div_dat_rdy;
  wire [15:0]o_div_res_dat;
  wire o_div_res_vld;
  wire [3:1]p_0_in__0;
  (* MAX_FANOUT = "35" *) (* RTL_MAX_FANOUT = "found" *) wire q_div_dat_vld;
  wire q_div_dat_vld_i_1_n_0;
  wire [16:0]q_div_dvd_dat;
  wire [16:0]q_div_dvd_dat0;
  wire \q_div_dvd_dat[11]_i_2_n_0 ;
  wire \q_div_dvd_dat[11]_i_3_n_0 ;
  wire \q_div_dvd_dat[11]_i_4_n_0 ;
  wire \q_div_dvd_dat[11]_i_5_n_0 ;
  wire \q_div_dvd_dat[15]_i_2_n_0 ;
  wire \q_div_dvd_dat[15]_i_3_n_0 ;
  wire \q_div_dvd_dat[15]_i_4_n_0 ;
  wire \q_div_dvd_dat[15]_i_5_n_0 ;
  wire \q_div_dvd_dat[3]_i_2_n_0 ;
  wire \q_div_dvd_dat[3]_i_3_n_0 ;
  wire \q_div_dvd_dat[3]_i_4_n_0 ;
  wire \q_div_dvd_dat[3]_i_5_n_0 ;
  wire \q_div_dvd_dat[3]_i_6_n_0 ;
  wire \q_div_dvd_dat[7]_i_2_n_0 ;
  wire \q_div_dvd_dat[7]_i_3_n_0 ;
  wire \q_div_dvd_dat[7]_i_4_n_0 ;
  wire \q_div_dvd_dat[7]_i_5_n_0 ;
  wire \q_div_dvd_dat_reg[11]_i_1_n_0 ;
  wire \q_div_dvd_dat_reg[11]_i_1_n_1 ;
  wire \q_div_dvd_dat_reg[11]_i_1_n_2 ;
  wire \q_div_dvd_dat_reg[11]_i_1_n_3 ;
  wire \q_div_dvd_dat_reg[15]_i_1_n_0 ;
  wire \q_div_dvd_dat_reg[15]_i_1_n_1 ;
  wire \q_div_dvd_dat_reg[15]_i_1_n_2 ;
  wire \q_div_dvd_dat_reg[15]_i_1_n_3 ;
  wire \q_div_dvd_dat_reg[3]_i_1_n_0 ;
  wire \q_div_dvd_dat_reg[3]_i_1_n_1 ;
  wire \q_div_dvd_dat_reg[3]_i_1_n_2 ;
  wire \q_div_dvd_dat_reg[3]_i_1_n_3 ;
  wire \q_div_dvd_dat_reg[7]_i_1_n_0 ;
  wire \q_div_dvd_dat_reg[7]_i_1_n_1 ;
  wire \q_div_dvd_dat_reg[7]_i_1_n_2 ;
  wire \q_div_dvd_dat_reg[7]_i_1_n_3 ;
  wire [15:0]\q_div_dvr_dat[1] ;
  wire \q_div_dvr_dat_reg_n_0_[0][0] ;
  wire \q_div_dvr_dat_reg_n_0_[0][10] ;
  wire \q_div_dvr_dat_reg_n_0_[0][11] ;
  wire \q_div_dvr_dat_reg_n_0_[0][12] ;
  wire \q_div_dvr_dat_reg_n_0_[0][13] ;
  wire \q_div_dvr_dat_reg_n_0_[0][14] ;
  wire \q_div_dvr_dat_reg_n_0_[0][15] ;
  wire \q_div_dvr_dat_reg_n_0_[0][1] ;
  wire \q_div_dvr_dat_reg_n_0_[0][2] ;
  wire \q_div_dvr_dat_reg_n_0_[0][3] ;
  wire \q_div_dvr_dat_reg_n_0_[0][4] ;
  wire \q_div_dvr_dat_reg_n_0_[0][5] ;
  wire \q_div_dvr_dat_reg_n_0_[0][6] ;
  wire \q_div_dvr_dat_reg_n_0_[0][7] ;
  wire \q_div_dvr_dat_reg_n_0_[0][8] ;
  wire \q_div_dvr_dat_reg_n_0_[0][9] ;
  wire \q_div_res_dat_reg[12]_i_1_n_0 ;
  wire \q_div_res_dat_reg[12]_i_1_n_1 ;
  wire \q_div_res_dat_reg[12]_i_1_n_2 ;
  wire \q_div_res_dat_reg[12]_i_1_n_3 ;
  wire \q_div_res_dat_reg[12]_i_1_n_4 ;
  wire \q_div_res_dat_reg[12]_i_1_n_5 ;
  wire \q_div_res_dat_reg[12]_i_1_n_6 ;
  wire \q_div_res_dat_reg[12]_i_1_n_7 ;
  wire \q_div_res_dat_reg[16]_i_1_n_1 ;
  wire \q_div_res_dat_reg[16]_i_1_n_2 ;
  wire \q_div_res_dat_reg[16]_i_1_n_3 ;
  wire \q_div_res_dat_reg[16]_i_1_n_4 ;
  wire \q_div_res_dat_reg[16]_i_1_n_5 ;
  wire \q_div_res_dat_reg[16]_i_1_n_6 ;
  wire \q_div_res_dat_reg[16]_i_1_n_7 ;
  wire \q_div_res_dat_reg[4]_i_1_n_0 ;
  wire \q_div_res_dat_reg[4]_i_1_n_1 ;
  wire \q_div_res_dat_reg[4]_i_1_n_2 ;
  wire \q_div_res_dat_reg[4]_i_1_n_3 ;
  wire \q_div_res_dat_reg[4]_i_1_n_4 ;
  wire \q_div_res_dat_reg[4]_i_1_n_5 ;
  wire \q_div_res_dat_reg[4]_i_1_n_6 ;
  wire \q_div_res_dat_reg[4]_i_1_n_7 ;
  wire \q_div_res_dat_reg[8]_i_1_n_0 ;
  wire \q_div_res_dat_reg[8]_i_1_n_1 ;
  wire \q_div_res_dat_reg[8]_i_1_n_2 ;
  wire \q_div_res_dat_reg[8]_i_1_n_3 ;
  wire \q_div_res_dat_reg[8]_i_1_n_4 ;
  wire \q_div_res_dat_reg[8]_i_1_n_5 ;
  wire \q_div_res_dat_reg[8]_i_1_n_6 ;
  wire \q_div_res_dat_reg[8]_i_1_n_7 ;
  wire q_div_s_rst_p;
  wire q_sgn_div_sgn;
  wire q_sgn_div_sgn_i_1_n_0;
  wire sel;
  wire [3:0]\throughput_on.q_div_rdy_cnt ;
  wire \throughput_on.q_div_rdy_cnt[0]_i_1_n_0 ;
  wire \throughput_on.q_div_rdy_cnt[1]_i_1_n_0 ;
  wire \throughput_on.q_div_rdy_cnt[2]_i_1_n_0 ;
  wire \throughput_on.q_div_rdy_cnt[3]_i_1_n_0 ;
  wire \throughput_on.q_div_rdy_cnt[3]_i_2_n_0 ;
  wire \throughput_on.q_div_rep_cnt[0]_i_1_n_0 ;
  wire [3:0]\throughput_on.q_div_rep_cnt_reg ;
  wire \w_div_quo_dat[0] ;
  wire \w_div_quo_dat[16] ;
  wire [16:0]w_div_res_dat;
  wire \w_dly_dvd_dat[0] ;
  wire \w_dly_dvd_dat[1] ;
  wire \w_dly_dvr_ena[0] ;
  wire \w_dly_dvr_ena[1] ;
  wire [3:0]\NLW_q_div_dvd_dat_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_q_div_dvd_dat_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_q_div_res_dat_reg[16]_i_1_CO_UNCONNECTED ;
  wire [0:0]NLW_u_delay_sign_o_dly_a_value_UNCONNECTED;

  (* DELAY = "0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL_REG" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized0__1 \delay_dividend[0].u_delay_dividend 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\delay_dividend[0].u_delay_dividend_i_1_n_0 ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(\w_dly_dvd_dat[0] ));
  MUXF8 \delay_dividend[0].u_delay_dividend_i_1 
       (.I0(\delay_dividend[0].u_delay_dividend_i_2_n_0 ),
        .I1(\delay_dividend[0].u_delay_dividend_i_3_n_0 ),
        .O(\delay_dividend[0].u_delay_dividend_i_1_n_0 ),
        .S(\throughput_on.q_div_rep_cnt_reg [3]));
  MUXF7 \delay_dividend[0].u_delay_dividend_i_2 
       (.I0(\delay_dividend[0].u_delay_dividend_i_4_n_0 ),
        .I1(\delay_dividend[0].u_delay_dividend_i_5_n_0 ),
        .O(\delay_dividend[0].u_delay_dividend_i_2_n_0 ),
        .S(\throughput_on.q_div_rep_cnt_reg [2]));
  MUXF7 \delay_dividend[0].u_delay_dividend_i_3 
       (.I0(\delay_dividend[0].u_delay_dividend_i_6_n_0 ),
        .I1(\delay_dividend[0].u_delay_dividend_i_7_n_0 ),
        .O(\delay_dividend[0].u_delay_dividend_i_3_n_0 ),
        .S(\throughput_on.q_div_rep_cnt_reg [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \delay_dividend[0].u_delay_dividend_i_4 
       (.I0(data29),
        .I1(data30),
        .I2(\throughput_on.q_div_rep_cnt_reg [1]),
        .I3(data31),
        .I4(\throughput_on.q_div_rep_cnt_reg [0]),
        .I5(data0),
        .O(\delay_dividend[0].u_delay_dividend_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \delay_dividend[0].u_delay_dividend_i_5 
       (.I0(data25),
        .I1(data26),
        .I2(\throughput_on.q_div_rep_cnt_reg [1]),
        .I3(data27),
        .I4(\throughput_on.q_div_rep_cnt_reg [0]),
        .I5(data28),
        .O(\delay_dividend[0].u_delay_dividend_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \delay_dividend[0].u_delay_dividend_i_6 
       (.I0(data21),
        .I1(data22),
        .I2(\throughput_on.q_div_rep_cnt_reg [1]),
        .I3(data23),
        .I4(\throughput_on.q_div_rep_cnt_reg [0]),
        .I5(data24),
        .O(\delay_dividend[0].u_delay_dividend_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \delay_dividend[0].u_delay_dividend_i_7 
       (.I0(data18),
        .I1(\throughput_on.q_div_rep_cnt_reg [1]),
        .I2(data19),
        .I3(\throughput_on.q_div_rep_cnt_reg [0]),
        .I4(data20),
        .O(\delay_dividend[0].u_delay_dividend_i_7_n_0 ));
  (* DELAY = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL_REG" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__1 \delay_dividend[1].u_delay_dividend 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(1'b0),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(\w_dly_dvd_dat[1] ));
  (* DELAY = "1" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "No" *) 
  (* STYLE = "Register" *) 
  (* WIDTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized1__1 \delay_divisor[1].u_delay_divisor 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value({\q_div_dvr_dat_reg_n_0_[0][15] ,\q_div_dvr_dat_reg_n_0_[0][14] ,\q_div_dvr_dat_reg_n_0_[0][13] ,\q_div_dvr_dat_reg_n_0_[0][12] ,\q_div_dvr_dat_reg_n_0_[0][11] ,\q_div_dvr_dat_reg_n_0_[0][10] ,\q_div_dvr_dat_reg_n_0_[0][9] ,\q_div_dvr_dat_reg_n_0_[0][8] ,\q_div_dvr_dat_reg_n_0_[0][7] ,\q_div_dvr_dat_reg_n_0_[0][6] ,\q_div_dvr_dat_reg_n_0_[0][5] ,\q_div_dvr_dat_reg_n_0_[0][4] ,\q_div_dvr_dat_reg_n_0_[0][3] ,\q_div_dvr_dat_reg_n_0_[0][2] ,\q_div_dvr_dat_reg_n_0_[0][1] ,\q_div_dvr_dat_reg_n_0_[0][0] }),
        .i_dly_s_ena_p(\w_dly_dvr_ena[1] ),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(\q_div_dvr_dat[1] ));
  (* DELAY = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized2__1 \delay_quotient[0].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[16]));
  (* DELAY = "6" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized12__1 \delay_quotient[10].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[6]));
  (* DELAY = "5" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized13__1 \delay_quotient[11].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[5]));
  (* DELAY = "4" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized14__1 \delay_quotient[12].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[4]));
  (* DELAY = "3" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized15__1 \delay_quotient[13].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[3]));
  (* DELAY = "2" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized16__1 \delay_quotient[14].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[2]));
  (* DELAY = "1" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "Register" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized17__1 \delay_quotient[15].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[1]));
  (* DELAY = "0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized18__1 \delay_quotient[16].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[16] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[0]));
  (* DELAY = "15" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized3__1 \delay_quotient[1].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[15]));
  (* DELAY = "14" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized4__1 \delay_quotient[2].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[14]));
  (* DELAY = "13" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized5__1 \delay_quotient[3].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[13]));
  (* DELAY = "12" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized6__1 \delay_quotient[4].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[12]));
  (* DELAY = "11" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized7__1 \delay_quotient[5].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[11]));
  (* DELAY = "10" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized8__1 \delay_quotient[6].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[10]));
  (* DELAY = "9" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized9__1 \delay_quotient[7].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[9]));
  (* DELAY = "8" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized10__1 \delay_quotient[8].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[8]));
  (* DELAY = "7" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized11__1 \delay_quotient[9].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[7]));
  (* DVR_W = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* QUOTIENT_ONLY = "1'b0" *) 
  (* REM_W = "17" *) 
  (* USE_REG = "1'b1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_div__1 \div_loop[0].u_div 
       (.i_div_a_clk_p(i_div_a_clk_p),
        .i_div_dvd_dat(\w_dly_dvd_dat[0] ),
        .i_div_dvr_dat({\q_div_dvr_dat_reg_n_0_[0][15] ,\q_div_dvr_dat_reg_n_0_[0][14] ,\q_div_dvr_dat_reg_n_0_[0][13] ,\q_div_dvr_dat_reg_n_0_[0][12] ,\q_div_dvr_dat_reg_n_0_[0][11] ,\q_div_dvr_dat_reg_n_0_[0][10] ,\q_div_dvr_dat_reg_n_0_[0][9] ,\q_div_dvr_dat_reg_n_0_[0][8] ,\q_div_dvr_dat_reg_n_0_[0][7] ,\q_div_dvr_dat_reg_n_0_[0][6] ,\q_div_dvr_dat_reg_n_0_[0][5] ,\q_div_dvr_dat_reg_n_0_[0][4] ,\q_div_dvr_dat_reg_n_0_[0][3] ,\q_div_dvr_dat_reg_n_0_[0][2] ,\q_div_dvr_dat_reg_n_0_[0][1] ,\q_div_dvr_dat_reg_n_0_[0][0] }),
        .i_div_rem_dat(\div_loop[0].w_div_rem_dat ),
        .o_div_quo_dat(\w_div_quo_dat[0] ),
        .o_div_rem_dat(\m_div_rem_dat[0] ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_1 
       (.I0(q_div_dvd_dat[16]),
        .I1(\m_div_rem_dat[0] [16]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [16]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_10 
       (.I0(q_div_dvd_dat[7]),
        .I1(\m_div_rem_dat[0] [7]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_11 
       (.I0(q_div_dvd_dat[6]),
        .I1(\m_div_rem_dat[0] [6]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_12 
       (.I0(q_div_dvd_dat[5]),
        .I1(\m_div_rem_dat[0] [5]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_13 
       (.I0(q_div_dvd_dat[4]),
        .I1(\m_div_rem_dat[0] [4]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_14 
       (.I0(q_div_dvd_dat[3]),
        .I1(\m_div_rem_dat[0] [3]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_15 
       (.I0(q_div_dvd_dat[2]),
        .I1(\m_div_rem_dat[0] [2]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_16 
       (.I0(q_div_dvd_dat[1]),
        .I1(\m_div_rem_dat[0] [1]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_17 
       (.I0(q_div_dvd_dat[0]),
        .I1(\m_div_rem_dat[0] [0]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_2 
       (.I0(q_div_dvd_dat[15]),
        .I1(\m_div_rem_dat[0] [15]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_3 
       (.I0(q_div_dvd_dat[14]),
        .I1(\m_div_rem_dat[0] [14]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_4 
       (.I0(q_div_dvd_dat[13]),
        .I1(\m_div_rem_dat[0] [13]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_5 
       (.I0(q_div_dvd_dat[12]),
        .I1(\m_div_rem_dat[0] [12]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_6 
       (.I0(q_div_dvd_dat[11]),
        .I1(\m_div_rem_dat[0] [11]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_7 
       (.I0(q_div_dvd_dat[10]),
        .I1(\m_div_rem_dat[0] [10]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_8 
       (.I0(q_div_dvd_dat[9]),
        .I1(\m_div_rem_dat[0] [9]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [9]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_9 
       (.I0(q_div_dvd_dat[8]),
        .I1(\m_div_rem_dat[0] [8]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [8]));
  LUT2 #(
    .INIT(4'h2)) 
    \div_loop[1].throughput_on.q_dly_rem_ena_i_1 
       (.I0(\w_dly_dvr_ena[1] ),
        .I1(q_div_s_rst_p),
        .O(\div_loop[1].throughput_on.q_dly_rem_ena_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \div_loop[1].throughput_on.q_dly_rem_ena_reg 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(\div_loop[1].throughput_on.q_dly_rem_ena_i_1_n_0 ),
        .Q(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .R(1'b0));
  (* DVR_W = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* QUOTIENT_ONLY = "1'b1" *) 
  (* REM_W = "17" *) 
  (* USE_REG = "1'b1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_div__parameterized0__1 \div_loop[1].u_div 
       (.i_div_a_clk_p(i_div_a_clk_p),
        .i_div_dvd_dat(\w_dly_dvd_dat[1] ),
        .i_div_dvr_dat(\q_div_dvr_dat[1] ),
        .i_div_rem_dat(\div_loop[1].w_div_rem_dat ),
        .o_div_quo_dat(\w_div_quo_dat[16] ),
        .o_div_rem_dat(\m_div_rem_dat[1] ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_1 
       (.I0(\m_div_rem_dat[0] [16]),
        .I1(\m_div_rem_dat[1] [16]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [16]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_10 
       (.I0(\m_div_rem_dat[0] [7]),
        .I1(\m_div_rem_dat[1] [7]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_11 
       (.I0(\m_div_rem_dat[0] [6]),
        .I1(\m_div_rem_dat[1] [6]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_12 
       (.I0(\m_div_rem_dat[0] [5]),
        .I1(\m_div_rem_dat[1] [5]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_13 
       (.I0(\m_div_rem_dat[0] [4]),
        .I1(\m_div_rem_dat[1] [4]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_14 
       (.I0(\m_div_rem_dat[0] [3]),
        .I1(\m_div_rem_dat[1] [3]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_15 
       (.I0(\m_div_rem_dat[0] [2]),
        .I1(\m_div_rem_dat[1] [2]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_16 
       (.I0(\m_div_rem_dat[0] [1]),
        .I1(\m_div_rem_dat[1] [1]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_17 
       (.I0(\m_div_rem_dat[0] [0]),
        .I1(\m_div_rem_dat[1] [0]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_2 
       (.I0(\m_div_rem_dat[0] [15]),
        .I1(\m_div_rem_dat[1] [15]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [15]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_3 
       (.I0(\m_div_rem_dat[0] [14]),
        .I1(\m_div_rem_dat[1] [14]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [14]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_4 
       (.I0(\m_div_rem_dat[0] [13]),
        .I1(\m_div_rem_dat[1] [13]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [13]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_5 
       (.I0(\m_div_rem_dat[0] [12]),
        .I1(\m_div_rem_dat[1] [12]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [12]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_6 
       (.I0(\m_div_rem_dat[0] [11]),
        .I1(\m_div_rem_dat[1] [11]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [11]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_7 
       (.I0(\m_div_rem_dat[0] [10]),
        .I1(\m_div_rem_dat[1] [10]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [10]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_8 
       (.I0(\m_div_rem_dat[0] [9]),
        .I1(\m_div_rem_dat[1] [9]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [9]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_9 
       (.I0(\m_div_rem_dat[0] [8]),
        .I1(\m_div_rem_dat[1] [8]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    o_div_dat_rdy_INST_0
       (.I0(\throughput_on.q_div_rdy_cnt [3]),
        .I1(\throughput_on.q_div_rdy_cnt [1]),
        .I2(\throughput_on.q_div_rdy_cnt [0]),
        .I3(\throughput_on.q_div_rdy_cnt [2]),
        .I4(q_div_s_rst_p),
        .O(o_div_dat_rdy));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    q_div_dat_vld_i_1
       (.I0(i_div_dat_vld),
        .I1(\throughput_on.q_div_rdy_cnt [3]),
        .I2(\throughput_on.q_div_rdy_cnt [1]),
        .I3(\throughput_on.q_div_rdy_cnt [0]),
        .I4(\throughput_on.q_div_rdy_cnt [2]),
        .I5(q_div_s_rst_p),
        .O(q_div_dat_vld_i_1_n_0));
  (* RTL_MAX_FANOUT = "found" *) 
  FDRE #(
    .INIT(1'b0)) 
    q_div_dat_vld_reg
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(q_div_dat_vld_i_1_n_0),
        .Q(q_div_dat_vld),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[11]_i_2 
       (.I0(i_div_dvr_dat[11]),
        .O(\q_div_dvd_dat[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[11]_i_3 
       (.I0(i_div_dvr_dat[10]),
        .O(\q_div_dvd_dat[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[11]_i_4 
       (.I0(i_div_dvr_dat[9]),
        .O(\q_div_dvd_dat[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[11]_i_5 
       (.I0(i_div_dvr_dat[8]),
        .O(\q_div_dvd_dat[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[15]_i_2 
       (.I0(i_div_dvr_dat[15]),
        .O(\q_div_dvd_dat[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[15]_i_3 
       (.I0(i_div_dvr_dat[14]),
        .O(\q_div_dvd_dat[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[15]_i_4 
       (.I0(i_div_dvr_dat[13]),
        .O(\q_div_dvd_dat[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[15]_i_5 
       (.I0(i_div_dvr_dat[12]),
        .O(\q_div_dvd_dat[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \q_div_dvd_dat[3]_i_2 
       (.I0(i_div_dvd_dat[15]),
        .I1(i_div_dvr_dat[0]),
        .O(\q_div_dvd_dat[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[3]_i_3 
       (.I0(i_div_dvr_dat[3]),
        .O(\q_div_dvd_dat[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[3]_i_4 
       (.I0(i_div_dvr_dat[2]),
        .O(\q_div_dvd_dat[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \q_div_dvd_dat[3]_i_5 
       (.I0(i_div_dvr_dat[0]),
        .I1(i_div_dvd_dat[15]),
        .I2(i_div_dvr_dat[1]),
        .O(\q_div_dvd_dat[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_div_dvd_dat[3]_i_6 
       (.I0(i_div_dvd_dat[15]),
        .I1(i_div_dvr_dat[0]),
        .O(\q_div_dvd_dat[3]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[7]_i_2 
       (.I0(i_div_dvr_dat[7]),
        .O(\q_div_dvd_dat[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[7]_i_3 
       (.I0(i_div_dvr_dat[6]),
        .O(\q_div_dvd_dat[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[7]_i_4 
       (.I0(i_div_dvr_dat[5]),
        .O(\q_div_dvd_dat[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[7]_i_5 
       (.I0(i_div_dvr_dat[4]),
        .O(\q_div_dvd_dat[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[0] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[0]),
        .Q(q_div_dvd_dat[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[10] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[10]),
        .Q(q_div_dvd_dat[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[11] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[11]),
        .Q(q_div_dvd_dat[11]),
        .R(1'b0));
  CARRY4 \q_div_dvd_dat_reg[11]_i_1 
       (.CI(\q_div_dvd_dat_reg[7]_i_1_n_0 ),
        .CO({\q_div_dvd_dat_reg[11]_i_1_n_0 ,\q_div_dvd_dat_reg[11]_i_1_n_1 ,\q_div_dvd_dat_reg[11]_i_1_n_2 ,\q_div_dvd_dat_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_div_dvd_dat0[11:8]),
        .S({\q_div_dvd_dat[11]_i_2_n_0 ,\q_div_dvd_dat[11]_i_3_n_0 ,\q_div_dvd_dat[11]_i_4_n_0 ,\q_div_dvd_dat[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[12] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[12]),
        .Q(q_div_dvd_dat[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[13] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[13]),
        .Q(q_div_dvd_dat[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[14] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[14]),
        .Q(q_div_dvd_dat[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[15] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[15]),
        .Q(q_div_dvd_dat[15]),
        .R(1'b0));
  CARRY4 \q_div_dvd_dat_reg[15]_i_1 
       (.CI(\q_div_dvd_dat_reg[11]_i_1_n_0 ),
        .CO({\q_div_dvd_dat_reg[15]_i_1_n_0 ,\q_div_dvd_dat_reg[15]_i_1_n_1 ,\q_div_dvd_dat_reg[15]_i_1_n_2 ,\q_div_dvd_dat_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_div_dvd_dat0[15:12]),
        .S({\q_div_dvd_dat[15]_i_2_n_0 ,\q_div_dvd_dat[15]_i_3_n_0 ,\q_div_dvd_dat[15]_i_4_n_0 ,\q_div_dvd_dat[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[16] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[16]),
        .Q(q_div_dvd_dat[16]),
        .R(1'b0));
  CARRY4 \q_div_dvd_dat_reg[16]_i_1 
       (.CI(\q_div_dvd_dat_reg[15]_i_1_n_0 ),
        .CO(\NLW_q_div_dvd_dat_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_q_div_dvd_dat_reg[16]_i_1_O_UNCONNECTED [3:1],q_div_dvd_dat0[16]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[1] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[1]),
        .Q(q_div_dvd_dat[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[2] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[2]),
        .Q(q_div_dvd_dat[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[3] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[3]),
        .Q(q_div_dvd_dat[3]),
        .R(1'b0));
  CARRY4 \q_div_dvd_dat_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\q_div_dvd_dat_reg[3]_i_1_n_0 ,\q_div_dvd_dat_reg[3]_i_1_n_1 ,\q_div_dvd_dat_reg[3]_i_1_n_2 ,\q_div_dvd_dat_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\q_div_dvd_dat[3]_i_2_n_0 ,1'b0}),
        .O(q_div_dvd_dat0[3:0]),
        .S({\q_div_dvd_dat[3]_i_3_n_0 ,\q_div_dvd_dat[3]_i_4_n_0 ,\q_div_dvd_dat[3]_i_5_n_0 ,\q_div_dvd_dat[3]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[4] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[4]),
        .Q(q_div_dvd_dat[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[5] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[5]),
        .Q(q_div_dvd_dat[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[6] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[6]),
        .Q(q_div_dvd_dat[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[7] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[7]),
        .Q(q_div_dvd_dat[7]),
        .R(1'b0));
  CARRY4 \q_div_dvd_dat_reg[7]_i_1 
       (.CI(\q_div_dvd_dat_reg[3]_i_1_n_0 ),
        .CO({\q_div_dvd_dat_reg[7]_i_1_n_0 ,\q_div_dvd_dat_reg[7]_i_1_n_1 ,\q_div_dvd_dat_reg[7]_i_1_n_2 ,\q_div_dvd_dat_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_div_dvd_dat0[7:4]),
        .S({\q_div_dvd_dat[7]_i_2_n_0 ,\q_div_dvd_dat[7]_i_3_n_0 ,\q_div_dvd_dat[7]_i_4_n_0 ,\q_div_dvd_dat[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[8] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[8]),
        .Q(q_div_dvd_dat[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[9] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[9]),
        .Q(q_div_dvd_dat[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][0] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[0]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][10] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[10]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][11] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[11]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][12] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[12]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][13] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[13]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][14] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[14]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][15] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[15]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][1] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[1]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][2] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[2]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][3] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[3]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][4] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[4]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][5] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[5]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][6] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[6]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][7] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[7]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][8] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[8]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][9] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[9]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[10] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[12]_i_1_n_6 ),
        .Q(o_div_res_dat[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[11] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[12]_i_1_n_5 ),
        .Q(o_div_res_dat[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[12] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[12]_i_1_n_4 ),
        .Q(o_div_res_dat[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \q_div_res_dat_reg[12]_i_1 
       (.CI(\q_div_res_dat_reg[8]_i_1_n_0 ),
        .CO({\q_div_res_dat_reg[12]_i_1_n_0 ,\q_div_res_dat_reg[12]_i_1_n_1 ,\q_div_res_dat_reg[12]_i_1_n_2 ,\q_div_res_dat_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_div_res_dat_reg[12]_i_1_n_4 ,\q_div_res_dat_reg[12]_i_1_n_5 ,\q_div_res_dat_reg[12]_i_1_n_6 ,\q_div_res_dat_reg[12]_i_1_n_7 }),
        .S(w_div_res_dat[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[13] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[16]_i_1_n_7 ),
        .Q(o_div_res_dat[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[14] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[16]_i_1_n_6 ),
        .Q(o_div_res_dat[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[15] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[16]_i_1_n_5 ),
        .Q(o_div_res_dat[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[16] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[16]_i_1_n_4 ),
        .Q(o_div_res_dat[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \q_div_res_dat_reg[16]_i_1 
       (.CI(\q_div_res_dat_reg[12]_i_1_n_0 ),
        .CO({\NLW_q_div_res_dat_reg[16]_i_1_CO_UNCONNECTED [3],\q_div_res_dat_reg[16]_i_1_n_1 ,\q_div_res_dat_reg[16]_i_1_n_2 ,\q_div_res_dat_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_div_res_dat_reg[16]_i_1_n_4 ,\q_div_res_dat_reg[16]_i_1_n_5 ,\q_div_res_dat_reg[16]_i_1_n_6 ,\q_div_res_dat_reg[16]_i_1_n_7 }),
        .S(w_div_res_dat[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[1] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[4]_i_1_n_7 ),
        .Q(o_div_res_dat[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[2] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[4]_i_1_n_6 ),
        .Q(o_div_res_dat[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[3] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[4]_i_1_n_5 ),
        .Q(o_div_res_dat[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[4] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[4]_i_1_n_4 ),
        .Q(o_div_res_dat[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \q_div_res_dat_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\q_div_res_dat_reg[4]_i_1_n_0 ,\q_div_res_dat_reg[4]_i_1_n_1 ,\q_div_res_dat_reg[4]_i_1_n_2 ,\q_div_res_dat_reg[4]_i_1_n_3 }),
        .CYINIT(w_div_res_dat[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_div_res_dat_reg[4]_i_1_n_4 ,\q_div_res_dat_reg[4]_i_1_n_5 ,\q_div_res_dat_reg[4]_i_1_n_6 ,\q_div_res_dat_reg[4]_i_1_n_7 }),
        .S(w_div_res_dat[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[5] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[8]_i_1_n_7 ),
        .Q(o_div_res_dat[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[6] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[8]_i_1_n_6 ),
        .Q(o_div_res_dat[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[7] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[8]_i_1_n_5 ),
        .Q(o_div_res_dat[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[8] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[8]_i_1_n_4 ),
        .Q(o_div_res_dat[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \q_div_res_dat_reg[8]_i_1 
       (.CI(\q_div_res_dat_reg[4]_i_1_n_0 ),
        .CO({\q_div_res_dat_reg[8]_i_1_n_0 ,\q_div_res_dat_reg[8]_i_1_n_1 ,\q_div_res_dat_reg[8]_i_1_n_2 ,\q_div_res_dat_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_div_res_dat_reg[8]_i_1_n_4 ,\q_div_res_dat_reg[8]_i_1_n_5 ,\q_div_res_dat_reg[8]_i_1_n_6 ,\q_div_res_dat_reg[8]_i_1_n_7 }),
        .S(w_div_res_dat[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[9] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[12]_i_1_n_7 ),
        .Q(o_div_res_dat[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q_div_res_vld_reg
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(m_div_res_vld),
        .Q(o_div_res_vld),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q_div_s_rst_p_reg
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(i_div_s_rst_p),
        .Q(q_div_s_rst_p),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[17] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[0]),
        .Q(data18),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[18] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[1]),
        .Q(data19),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[19] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[2]),
        .Q(data20),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[20] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[3]),
        .Q(data21),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[21] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[4]),
        .Q(data22),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[22] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[5]),
        .Q(data23),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[23] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[6]),
        .Q(data24),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[24] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[7]),
        .Q(data25),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[25] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[8]),
        .Q(data26),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[26] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[9]),
        .Q(data27),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[27] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[10]),
        .Q(data28),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[28] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[11]),
        .Q(data29),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[29] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[12]),
        .Q(data30),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[30] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[13]),
        .Q(data31),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[31] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[14]),
        .Q(data0),
        .R(q_div_s_rst_p));
  LUT2 #(
    .INIT(4'h6)) 
    q_sgn_div_sgn_i_1
       (.I0(i_div_dvr_dat[15]),
        .I1(i_div_dvd_dat[15]),
        .O(q_sgn_div_sgn_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_sgn_div_sgn_reg
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(q_sgn_div_sgn_i_1_n_0),
        .Q(q_sgn_div_sgn),
        .R(1'b0));
  (* DELAY = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL_REG" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__7 \throughput_on.delay_enable[1].u_delay_valid 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_dly_dvr_ena[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(\w_dly_dvr_ena[1] ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \throughput_on.delay_enable[1].u_delay_valid_i_1 
       (.I0(q_div_s_rst_p),
        .I1(\throughput_on.q_div_rdy_cnt [2]),
        .I2(\throughput_on.q_div_rdy_cnt [0]),
        .I3(\throughput_on.q_div_rdy_cnt [1]),
        .I4(\throughput_on.q_div_rdy_cnt [3]),
        .I5(i_div_dat_vld),
        .O(\w_dly_dvr_ena[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \throughput_on.q_div_rdy_cnt[0]_i_1 
       (.I0(\throughput_on.q_div_rdy_cnt [0]),
        .O(\throughput_on.q_div_rdy_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \throughput_on.q_div_rdy_cnt[1]_i_1 
       (.I0(\throughput_on.q_div_rdy_cnt [1]),
        .I1(\throughput_on.q_div_rdy_cnt [0]),
        .O(\throughput_on.q_div_rdy_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \throughput_on.q_div_rdy_cnt[2]_i_1 
       (.I0(\throughput_on.q_div_rdy_cnt [1]),
        .I1(\throughput_on.q_div_rdy_cnt [0]),
        .I2(\throughput_on.q_div_rdy_cnt [2]),
        .O(\throughput_on.q_div_rdy_cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \throughput_on.q_div_rdy_cnt[3]_i_1 
       (.I0(i_div_dat_vld),
        .I1(\throughput_on.q_div_rdy_cnt [3]),
        .I2(\throughput_on.q_div_rdy_cnt [1]),
        .I3(\throughput_on.q_div_rdy_cnt [0]),
        .I4(\throughput_on.q_div_rdy_cnt [2]),
        .O(\throughput_on.q_div_rdy_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \throughput_on.q_div_rdy_cnt[3]_i_2 
       (.I0(\throughput_on.q_div_rdy_cnt [3]),
        .I1(\throughput_on.q_div_rdy_cnt [1]),
        .I2(\throughput_on.q_div_rdy_cnt [0]),
        .I3(\throughput_on.q_div_rdy_cnt [2]),
        .O(\throughput_on.q_div_rdy_cnt[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rdy_cnt_reg[0] 
       (.C(i_div_a_clk_p),
        .CE(\throughput_on.q_div_rdy_cnt[3]_i_1_n_0 ),
        .D(\throughput_on.q_div_rdy_cnt[0]_i_1_n_0 ),
        .Q(\throughput_on.q_div_rdy_cnt [0]),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rdy_cnt_reg[1] 
       (.C(i_div_a_clk_p),
        .CE(\throughput_on.q_div_rdy_cnt[3]_i_1_n_0 ),
        .D(\throughput_on.q_div_rdy_cnt[1]_i_1_n_0 ),
        .Q(\throughput_on.q_div_rdy_cnt [1]),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rdy_cnt_reg[2] 
       (.C(i_div_a_clk_p),
        .CE(\throughput_on.q_div_rdy_cnt[3]_i_1_n_0 ),
        .D(\throughput_on.q_div_rdy_cnt[2]_i_1_n_0 ),
        .Q(\throughput_on.q_div_rdy_cnt [2]),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rdy_cnt_reg[3] 
       (.C(i_div_a_clk_p),
        .CE(\throughput_on.q_div_rdy_cnt[3]_i_1_n_0 ),
        .D(\throughput_on.q_div_rdy_cnt[3]_i_2_n_0 ),
        .Q(\throughput_on.q_div_rdy_cnt [3]),
        .R(q_div_s_rst_p));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \throughput_on.q_div_rep_cnt[0]_i_1 
       (.I0(\throughput_on.q_div_rep_cnt_reg [0]),
        .O(\throughput_on.q_div_rep_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \throughput_on.q_div_rep_cnt[1]_i_1 
       (.I0(\throughput_on.q_div_rep_cnt_reg [1]),
        .I1(\throughput_on.q_div_rep_cnt_reg [0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \throughput_on.q_div_rep_cnt[2]_i_1 
       (.I0(\throughput_on.q_div_rep_cnt_reg [2]),
        .I1(\throughput_on.q_div_rep_cnt_reg [0]),
        .I2(\throughput_on.q_div_rep_cnt_reg [1]),
        .O(p_0_in__0[2]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \throughput_on.q_div_rep_cnt[3]_i_1 
       (.I0(\throughput_on.q_div_rep_cnt_reg [2]),
        .I1(\throughput_on.q_div_rep_cnt_reg [0]),
        .I2(\throughput_on.q_div_rep_cnt_reg [1]),
        .I3(\throughput_on.q_div_rep_cnt_reg [3]),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \throughput_on.q_div_rep_cnt[3]_i_2 
       (.I0(\throughput_on.q_div_rep_cnt_reg [3]),
        .I1(\throughput_on.q_div_rep_cnt_reg [0]),
        .I2(\throughput_on.q_div_rep_cnt_reg [1]),
        .I3(\throughput_on.q_div_rep_cnt_reg [2]),
        .O(p_0_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rep_cnt_reg[0] 
       (.C(i_div_a_clk_p),
        .CE(sel),
        .D(\throughput_on.q_div_rep_cnt[0]_i_1_n_0 ),
        .Q(\throughput_on.q_div_rep_cnt_reg [0]),
        .R(\w_dly_dvr_ena[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rep_cnt_reg[1] 
       (.C(i_div_a_clk_p),
        .CE(sel),
        .D(p_0_in__0[1]),
        .Q(\throughput_on.q_div_rep_cnt_reg [1]),
        .R(\w_dly_dvr_ena[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rep_cnt_reg[2] 
       (.C(i_div_a_clk_p),
        .CE(sel),
        .D(p_0_in__0[2]),
        .Q(\throughput_on.q_div_rep_cnt_reg [2]),
        .R(\w_dly_dvr_ena[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rep_cnt_reg[3] 
       (.C(i_div_a_clk_p),
        .CE(sel),
        .D(p_0_in__0[3]),
        .Q(\throughput_on.q_div_rep_cnt_reg [3]),
        .R(\w_dly_dvr_ena[0] ));
  (* DELAY = "18" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b1" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL_REG" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized20__1 u_delay_sign
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(q_sgn_div_sgn),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(NLW_u_delay_sign_o_dly_a_value_UNCONNECTED[0]));
  (* DELAY = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b1" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized19__1 u_delay_valid
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(q_div_dat_vld),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(q_div_s_rst_p),
        .o_dly_a_value(m_div_res_vld));
endmodule

(* DVD_W = "16" *) (* DVR_W = "16" *) (* L = "32" *) 
(* M = "17" *) (* N = "2" *) (* ORIG_REF_NAME = "divider" *) 
(* R = "2" *) (* RES_W = "16" *) (* ROUNDING = "1'b1" *) 
(* SIGNED = "1'b0" *) (* THROUGHPUT = "16" *) (* USE_RESET = "1'b1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider__2
   (i_div_s_rst_p,
    i_div_a_clk_p,
    i_div_dat_vld,
    o_div_dat_rdy,
    i_div_dvd_dat,
    i_div_dvr_dat,
    o_div_res_vld,
    o_div_res_dat);
  input i_div_s_rst_p;
  input i_div_a_clk_p;
  input i_div_dat_vld;
  output o_div_dat_rdy;
  input [15:0]i_div_dvd_dat;
  input [15:0]i_div_dvr_dat;
  output o_div_res_vld;
  output [15:0]o_div_res_dat;

  wire data0;
  wire data18;
  wire data19;
  wire data20;
  wire data21;
  wire data22;
  wire data23;
  wire data24;
  wire data25;
  wire data26;
  wire data27;
  wire data28;
  wire data29;
  wire data30;
  wire data31;
  wire \delay_dividend[0].u_delay_dividend_i_1_n_0 ;
  wire \delay_dividend[0].u_delay_dividend_i_2_n_0 ;
  wire \delay_dividend[0].u_delay_dividend_i_3_n_0 ;
  wire \delay_dividend[0].u_delay_dividend_i_4_n_0 ;
  wire \delay_dividend[0].u_delay_dividend_i_5_n_0 ;
  wire \delay_dividend[0].u_delay_dividend_i_6_n_0 ;
  wire \delay_dividend[0].u_delay_dividend_i_7_n_0 ;
  wire [16:0]\div_loop[0].w_div_rem_dat ;
  wire \div_loop[1].throughput_on.q_dly_rem_ena ;
  wire \div_loop[1].throughput_on.q_dly_rem_ena_i_1_n_0 ;
  wire [16:0]\div_loop[1].w_div_rem_dat ;
  wire i_div_a_clk_p;
  wire i_div_dat_vld;
  wire [15:0]i_div_dvd_dat;
  wire [15:0]i_div_dvr_dat;
  wire i_div_s_rst_p;
  wire [16:0]\m_div_rem_dat[0] ;
  wire [16:0]\m_div_rem_dat[1] ;
  wire m_div_res_vld;
  wire o_div_dat_rdy;
  wire [15:0]o_div_res_dat;
  wire o_div_res_vld;
  wire [3:1]p_0_in__0;
  (* MAX_FANOUT = "35" *) (* RTL_MAX_FANOUT = "found" *) wire q_div_dat_vld;
  wire q_div_dat_vld_i_1_n_0;
  wire [16:0]q_div_dvd_dat;
  wire [16:0]q_div_dvd_dat0;
  wire \q_div_dvd_dat[11]_i_2_n_0 ;
  wire \q_div_dvd_dat[11]_i_3_n_0 ;
  wire \q_div_dvd_dat[11]_i_4_n_0 ;
  wire \q_div_dvd_dat[11]_i_5_n_0 ;
  wire \q_div_dvd_dat[15]_i_2_n_0 ;
  wire \q_div_dvd_dat[15]_i_3_n_0 ;
  wire \q_div_dvd_dat[15]_i_4_n_0 ;
  wire \q_div_dvd_dat[15]_i_5_n_0 ;
  wire \q_div_dvd_dat[3]_i_2_n_0 ;
  wire \q_div_dvd_dat[3]_i_3_n_0 ;
  wire \q_div_dvd_dat[3]_i_4_n_0 ;
  wire \q_div_dvd_dat[3]_i_5_n_0 ;
  wire \q_div_dvd_dat[3]_i_6_n_0 ;
  wire \q_div_dvd_dat[7]_i_2_n_0 ;
  wire \q_div_dvd_dat[7]_i_3_n_0 ;
  wire \q_div_dvd_dat[7]_i_4_n_0 ;
  wire \q_div_dvd_dat[7]_i_5_n_0 ;
  wire \q_div_dvd_dat_reg[11]_i_1_n_0 ;
  wire \q_div_dvd_dat_reg[11]_i_1_n_1 ;
  wire \q_div_dvd_dat_reg[11]_i_1_n_2 ;
  wire \q_div_dvd_dat_reg[11]_i_1_n_3 ;
  wire \q_div_dvd_dat_reg[15]_i_1_n_0 ;
  wire \q_div_dvd_dat_reg[15]_i_1_n_1 ;
  wire \q_div_dvd_dat_reg[15]_i_1_n_2 ;
  wire \q_div_dvd_dat_reg[15]_i_1_n_3 ;
  wire \q_div_dvd_dat_reg[3]_i_1_n_0 ;
  wire \q_div_dvd_dat_reg[3]_i_1_n_1 ;
  wire \q_div_dvd_dat_reg[3]_i_1_n_2 ;
  wire \q_div_dvd_dat_reg[3]_i_1_n_3 ;
  wire \q_div_dvd_dat_reg[7]_i_1_n_0 ;
  wire \q_div_dvd_dat_reg[7]_i_1_n_1 ;
  wire \q_div_dvd_dat_reg[7]_i_1_n_2 ;
  wire \q_div_dvd_dat_reg[7]_i_1_n_3 ;
  wire [15:0]\q_div_dvr_dat[1] ;
  wire \q_div_dvr_dat_reg_n_0_[0][0] ;
  wire \q_div_dvr_dat_reg_n_0_[0][10] ;
  wire \q_div_dvr_dat_reg_n_0_[0][11] ;
  wire \q_div_dvr_dat_reg_n_0_[0][12] ;
  wire \q_div_dvr_dat_reg_n_0_[0][13] ;
  wire \q_div_dvr_dat_reg_n_0_[0][14] ;
  wire \q_div_dvr_dat_reg_n_0_[0][15] ;
  wire \q_div_dvr_dat_reg_n_0_[0][1] ;
  wire \q_div_dvr_dat_reg_n_0_[0][2] ;
  wire \q_div_dvr_dat_reg_n_0_[0][3] ;
  wire \q_div_dvr_dat_reg_n_0_[0][4] ;
  wire \q_div_dvr_dat_reg_n_0_[0][5] ;
  wire \q_div_dvr_dat_reg_n_0_[0][6] ;
  wire \q_div_dvr_dat_reg_n_0_[0][7] ;
  wire \q_div_dvr_dat_reg_n_0_[0][8] ;
  wire \q_div_dvr_dat_reg_n_0_[0][9] ;
  wire \q_div_res_dat_reg[12]_i_1_n_0 ;
  wire \q_div_res_dat_reg[12]_i_1_n_1 ;
  wire \q_div_res_dat_reg[12]_i_1_n_2 ;
  wire \q_div_res_dat_reg[12]_i_1_n_3 ;
  wire \q_div_res_dat_reg[12]_i_1_n_4 ;
  wire \q_div_res_dat_reg[12]_i_1_n_5 ;
  wire \q_div_res_dat_reg[12]_i_1_n_6 ;
  wire \q_div_res_dat_reg[12]_i_1_n_7 ;
  wire \q_div_res_dat_reg[16]_i_1_n_1 ;
  wire \q_div_res_dat_reg[16]_i_1_n_2 ;
  wire \q_div_res_dat_reg[16]_i_1_n_3 ;
  wire \q_div_res_dat_reg[16]_i_1_n_4 ;
  wire \q_div_res_dat_reg[16]_i_1_n_5 ;
  wire \q_div_res_dat_reg[16]_i_1_n_6 ;
  wire \q_div_res_dat_reg[16]_i_1_n_7 ;
  wire \q_div_res_dat_reg[4]_i_1_n_0 ;
  wire \q_div_res_dat_reg[4]_i_1_n_1 ;
  wire \q_div_res_dat_reg[4]_i_1_n_2 ;
  wire \q_div_res_dat_reg[4]_i_1_n_3 ;
  wire \q_div_res_dat_reg[4]_i_1_n_4 ;
  wire \q_div_res_dat_reg[4]_i_1_n_5 ;
  wire \q_div_res_dat_reg[4]_i_1_n_6 ;
  wire \q_div_res_dat_reg[4]_i_1_n_7 ;
  wire \q_div_res_dat_reg[8]_i_1_n_0 ;
  wire \q_div_res_dat_reg[8]_i_1_n_1 ;
  wire \q_div_res_dat_reg[8]_i_1_n_2 ;
  wire \q_div_res_dat_reg[8]_i_1_n_3 ;
  wire \q_div_res_dat_reg[8]_i_1_n_4 ;
  wire \q_div_res_dat_reg[8]_i_1_n_5 ;
  wire \q_div_res_dat_reg[8]_i_1_n_6 ;
  wire \q_div_res_dat_reg[8]_i_1_n_7 ;
  wire q_div_s_rst_p;
  wire q_sgn_div_sgn;
  wire q_sgn_div_sgn_i_1_n_0;
  wire sel;
  wire [3:0]\throughput_on.q_div_rdy_cnt ;
  wire \throughput_on.q_div_rdy_cnt[0]_i_1_n_0 ;
  wire \throughput_on.q_div_rdy_cnt[1]_i_1_n_0 ;
  wire \throughput_on.q_div_rdy_cnt[2]_i_1_n_0 ;
  wire \throughput_on.q_div_rdy_cnt[3]_i_1_n_0 ;
  wire \throughput_on.q_div_rdy_cnt[3]_i_2_n_0 ;
  wire \throughput_on.q_div_rep_cnt[0]_i_1_n_0 ;
  wire [3:0]\throughput_on.q_div_rep_cnt_reg ;
  wire \w_div_quo_dat[0] ;
  wire \w_div_quo_dat[16] ;
  wire [16:0]w_div_res_dat;
  wire \w_dly_dvd_dat[0] ;
  wire \w_dly_dvd_dat[1] ;
  wire \w_dly_dvr_ena[0] ;
  wire \w_dly_dvr_ena[1] ;
  wire [3:0]\NLW_q_div_dvd_dat_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_q_div_dvd_dat_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_q_div_res_dat_reg[16]_i_1_CO_UNCONNECTED ;
  wire [0:0]NLW_u_delay_sign_o_dly_a_value_UNCONNECTED;

  (* DELAY = "0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL_REG" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized0__2 \delay_dividend[0].u_delay_dividend 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\delay_dividend[0].u_delay_dividend_i_1_n_0 ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(\w_dly_dvd_dat[0] ));
  MUXF8 \delay_dividend[0].u_delay_dividend_i_1 
       (.I0(\delay_dividend[0].u_delay_dividend_i_2_n_0 ),
        .I1(\delay_dividend[0].u_delay_dividend_i_3_n_0 ),
        .O(\delay_dividend[0].u_delay_dividend_i_1_n_0 ),
        .S(\throughput_on.q_div_rep_cnt_reg [3]));
  MUXF7 \delay_dividend[0].u_delay_dividend_i_2 
       (.I0(\delay_dividend[0].u_delay_dividend_i_4_n_0 ),
        .I1(\delay_dividend[0].u_delay_dividend_i_5_n_0 ),
        .O(\delay_dividend[0].u_delay_dividend_i_2_n_0 ),
        .S(\throughput_on.q_div_rep_cnt_reg [2]));
  MUXF7 \delay_dividend[0].u_delay_dividend_i_3 
       (.I0(\delay_dividend[0].u_delay_dividend_i_6_n_0 ),
        .I1(\delay_dividend[0].u_delay_dividend_i_7_n_0 ),
        .O(\delay_dividend[0].u_delay_dividend_i_3_n_0 ),
        .S(\throughput_on.q_div_rep_cnt_reg [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \delay_dividend[0].u_delay_dividend_i_4 
       (.I0(data29),
        .I1(data30),
        .I2(\throughput_on.q_div_rep_cnt_reg [1]),
        .I3(data31),
        .I4(\throughput_on.q_div_rep_cnt_reg [0]),
        .I5(data0),
        .O(\delay_dividend[0].u_delay_dividend_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \delay_dividend[0].u_delay_dividend_i_5 
       (.I0(data25),
        .I1(data26),
        .I2(\throughput_on.q_div_rep_cnt_reg [1]),
        .I3(data27),
        .I4(\throughput_on.q_div_rep_cnt_reg [0]),
        .I5(data28),
        .O(\delay_dividend[0].u_delay_dividend_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \delay_dividend[0].u_delay_dividend_i_6 
       (.I0(data21),
        .I1(data22),
        .I2(\throughput_on.q_div_rep_cnt_reg [1]),
        .I3(data23),
        .I4(\throughput_on.q_div_rep_cnt_reg [0]),
        .I5(data24),
        .O(\delay_dividend[0].u_delay_dividend_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \delay_dividend[0].u_delay_dividend_i_7 
       (.I0(data18),
        .I1(\throughput_on.q_div_rep_cnt_reg [1]),
        .I2(data19),
        .I3(\throughput_on.q_div_rep_cnt_reg [0]),
        .I4(data20),
        .O(\delay_dividend[0].u_delay_dividend_i_7_n_0 ));
  (* DELAY = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL_REG" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__2 \delay_dividend[1].u_delay_dividend 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(1'b0),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(\w_dly_dvd_dat[1] ));
  (* DELAY = "1" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "No" *) 
  (* STYLE = "Register" *) 
  (* WIDTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized1__2 \delay_divisor[1].u_delay_divisor 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value({\q_div_dvr_dat_reg_n_0_[0][15] ,\q_div_dvr_dat_reg_n_0_[0][14] ,\q_div_dvr_dat_reg_n_0_[0][13] ,\q_div_dvr_dat_reg_n_0_[0][12] ,\q_div_dvr_dat_reg_n_0_[0][11] ,\q_div_dvr_dat_reg_n_0_[0][10] ,\q_div_dvr_dat_reg_n_0_[0][9] ,\q_div_dvr_dat_reg_n_0_[0][8] ,\q_div_dvr_dat_reg_n_0_[0][7] ,\q_div_dvr_dat_reg_n_0_[0][6] ,\q_div_dvr_dat_reg_n_0_[0][5] ,\q_div_dvr_dat_reg_n_0_[0][4] ,\q_div_dvr_dat_reg_n_0_[0][3] ,\q_div_dvr_dat_reg_n_0_[0][2] ,\q_div_dvr_dat_reg_n_0_[0][1] ,\q_div_dvr_dat_reg_n_0_[0][0] }),
        .i_dly_s_ena_p(\w_dly_dvr_ena[1] ),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(\q_div_dvr_dat[1] ));
  (* DELAY = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized2__2 \delay_quotient[0].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[16]));
  (* DELAY = "6" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized12__2 \delay_quotient[10].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[6]));
  (* DELAY = "5" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized13__2 \delay_quotient[11].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[5]));
  (* DELAY = "4" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized14__2 \delay_quotient[12].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[4]));
  (* DELAY = "3" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized15__2 \delay_quotient[13].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[3]));
  (* DELAY = "2" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized16__2 \delay_quotient[14].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[2]));
  (* DELAY = "1" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "Register" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized17__2 \delay_quotient[15].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[1]));
  (* DELAY = "0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized18__2 \delay_quotient[16].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[16] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[0]));
  (* DELAY = "15" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized3__2 \delay_quotient[1].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[15]));
  (* DELAY = "14" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized4__2 \delay_quotient[2].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[14]));
  (* DELAY = "13" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized5__2 \delay_quotient[3].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[13]));
  (* DELAY = "12" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized6__2 \delay_quotient[4].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[12]));
  (* DELAY = "11" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized7__2 \delay_quotient[5].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[11]));
  (* DELAY = "10" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized8__2 \delay_quotient[6].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[10]));
  (* DELAY = "9" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized9__2 \delay_quotient[7].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[9]));
  (* DELAY = "8" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized10__2 \delay_quotient[8].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[8]));
  (* DELAY = "7" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized11__2 \delay_quotient[9].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[7]));
  (* DVR_W = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* QUOTIENT_ONLY = "1'b0" *) 
  (* REM_W = "17" *) 
  (* USE_REG = "1'b1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_div__2 \div_loop[0].u_div 
       (.i_div_a_clk_p(i_div_a_clk_p),
        .i_div_dvd_dat(\w_dly_dvd_dat[0] ),
        .i_div_dvr_dat({\q_div_dvr_dat_reg_n_0_[0][15] ,\q_div_dvr_dat_reg_n_0_[0][14] ,\q_div_dvr_dat_reg_n_0_[0][13] ,\q_div_dvr_dat_reg_n_0_[0][12] ,\q_div_dvr_dat_reg_n_0_[0][11] ,\q_div_dvr_dat_reg_n_0_[0][10] ,\q_div_dvr_dat_reg_n_0_[0][9] ,\q_div_dvr_dat_reg_n_0_[0][8] ,\q_div_dvr_dat_reg_n_0_[0][7] ,\q_div_dvr_dat_reg_n_0_[0][6] ,\q_div_dvr_dat_reg_n_0_[0][5] ,\q_div_dvr_dat_reg_n_0_[0][4] ,\q_div_dvr_dat_reg_n_0_[0][3] ,\q_div_dvr_dat_reg_n_0_[0][2] ,\q_div_dvr_dat_reg_n_0_[0][1] ,\q_div_dvr_dat_reg_n_0_[0][0] }),
        .i_div_rem_dat(\div_loop[0].w_div_rem_dat ),
        .o_div_quo_dat(\w_div_quo_dat[0] ),
        .o_div_rem_dat(\m_div_rem_dat[0] ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_1 
       (.I0(q_div_dvd_dat[16]),
        .I1(\m_div_rem_dat[0] [16]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [16]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_10 
       (.I0(q_div_dvd_dat[7]),
        .I1(\m_div_rem_dat[0] [7]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_11 
       (.I0(q_div_dvd_dat[6]),
        .I1(\m_div_rem_dat[0] [6]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_12 
       (.I0(q_div_dvd_dat[5]),
        .I1(\m_div_rem_dat[0] [5]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_13 
       (.I0(q_div_dvd_dat[4]),
        .I1(\m_div_rem_dat[0] [4]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_14 
       (.I0(q_div_dvd_dat[3]),
        .I1(\m_div_rem_dat[0] [3]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_15 
       (.I0(q_div_dvd_dat[2]),
        .I1(\m_div_rem_dat[0] [2]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_16 
       (.I0(q_div_dvd_dat[1]),
        .I1(\m_div_rem_dat[0] [1]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_17 
       (.I0(q_div_dvd_dat[0]),
        .I1(\m_div_rem_dat[0] [0]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_2 
       (.I0(q_div_dvd_dat[15]),
        .I1(\m_div_rem_dat[0] [15]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_3 
       (.I0(q_div_dvd_dat[14]),
        .I1(\m_div_rem_dat[0] [14]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_4 
       (.I0(q_div_dvd_dat[13]),
        .I1(\m_div_rem_dat[0] [13]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_5 
       (.I0(q_div_dvd_dat[12]),
        .I1(\m_div_rem_dat[0] [12]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_6 
       (.I0(q_div_dvd_dat[11]),
        .I1(\m_div_rem_dat[0] [11]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_7 
       (.I0(q_div_dvd_dat[10]),
        .I1(\m_div_rem_dat[0] [10]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_8 
       (.I0(q_div_dvd_dat[9]),
        .I1(\m_div_rem_dat[0] [9]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [9]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_9 
       (.I0(q_div_dvd_dat[8]),
        .I1(\m_div_rem_dat[0] [8]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [8]));
  LUT2 #(
    .INIT(4'h2)) 
    \div_loop[1].throughput_on.q_dly_rem_ena_i_1 
       (.I0(\w_dly_dvr_ena[1] ),
        .I1(q_div_s_rst_p),
        .O(\div_loop[1].throughput_on.q_dly_rem_ena_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \div_loop[1].throughput_on.q_dly_rem_ena_reg 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(\div_loop[1].throughput_on.q_dly_rem_ena_i_1_n_0 ),
        .Q(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .R(1'b0));
  (* DVR_W = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* QUOTIENT_ONLY = "1'b1" *) 
  (* REM_W = "17" *) 
  (* USE_REG = "1'b1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_div__parameterized0__2 \div_loop[1].u_div 
       (.i_div_a_clk_p(i_div_a_clk_p),
        .i_div_dvd_dat(\w_dly_dvd_dat[1] ),
        .i_div_dvr_dat(\q_div_dvr_dat[1] ),
        .i_div_rem_dat(\div_loop[1].w_div_rem_dat ),
        .o_div_quo_dat(\w_div_quo_dat[16] ),
        .o_div_rem_dat(\m_div_rem_dat[1] ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_1 
       (.I0(\m_div_rem_dat[0] [16]),
        .I1(\m_div_rem_dat[1] [16]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [16]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_10 
       (.I0(\m_div_rem_dat[0] [7]),
        .I1(\m_div_rem_dat[1] [7]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [7]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_11 
       (.I0(\m_div_rem_dat[0] [6]),
        .I1(\m_div_rem_dat[1] [6]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [6]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_12 
       (.I0(\m_div_rem_dat[0] [5]),
        .I1(\m_div_rem_dat[1] [5]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [5]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_13 
       (.I0(\m_div_rem_dat[0] [4]),
        .I1(\m_div_rem_dat[1] [4]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [4]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_14 
       (.I0(\m_div_rem_dat[0] [3]),
        .I1(\m_div_rem_dat[1] [3]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [3]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_15 
       (.I0(\m_div_rem_dat[0] [2]),
        .I1(\m_div_rem_dat[1] [2]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [2]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_16 
       (.I0(\m_div_rem_dat[0] [1]),
        .I1(\m_div_rem_dat[1] [1]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_17 
       (.I0(\m_div_rem_dat[0] [0]),
        .I1(\m_div_rem_dat[1] [0]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_2 
       (.I0(\m_div_rem_dat[0] [15]),
        .I1(\m_div_rem_dat[1] [15]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [15]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_3 
       (.I0(\m_div_rem_dat[0] [14]),
        .I1(\m_div_rem_dat[1] [14]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [14]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_4 
       (.I0(\m_div_rem_dat[0] [13]),
        .I1(\m_div_rem_dat[1] [13]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [13]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_5 
       (.I0(\m_div_rem_dat[0] [12]),
        .I1(\m_div_rem_dat[1] [12]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [12]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_6 
       (.I0(\m_div_rem_dat[0] [11]),
        .I1(\m_div_rem_dat[1] [11]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [11]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_7 
       (.I0(\m_div_rem_dat[0] [10]),
        .I1(\m_div_rem_dat[1] [10]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [10]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_8 
       (.I0(\m_div_rem_dat[0] [9]),
        .I1(\m_div_rem_dat[1] [9]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [9]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_9 
       (.I0(\m_div_rem_dat[0] [8]),
        .I1(\m_div_rem_dat[1] [8]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [8]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    o_div_dat_rdy_INST_0
       (.I0(\throughput_on.q_div_rdy_cnt [3]),
        .I1(\throughput_on.q_div_rdy_cnt [1]),
        .I2(\throughput_on.q_div_rdy_cnt [0]),
        .I3(\throughput_on.q_div_rdy_cnt [2]),
        .I4(q_div_s_rst_p),
        .O(o_div_dat_rdy));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    q_div_dat_vld_i_1
       (.I0(i_div_dat_vld),
        .I1(\throughput_on.q_div_rdy_cnt [3]),
        .I2(\throughput_on.q_div_rdy_cnt [1]),
        .I3(\throughput_on.q_div_rdy_cnt [0]),
        .I4(\throughput_on.q_div_rdy_cnt [2]),
        .I5(q_div_s_rst_p),
        .O(q_div_dat_vld_i_1_n_0));
  (* RTL_MAX_FANOUT = "found" *) 
  FDRE #(
    .INIT(1'b0)) 
    q_div_dat_vld_reg
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(q_div_dat_vld_i_1_n_0),
        .Q(q_div_dat_vld),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[11]_i_2 
       (.I0(i_div_dvr_dat[11]),
        .O(\q_div_dvd_dat[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[11]_i_3 
       (.I0(i_div_dvr_dat[10]),
        .O(\q_div_dvd_dat[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[11]_i_4 
       (.I0(i_div_dvr_dat[9]),
        .O(\q_div_dvd_dat[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[11]_i_5 
       (.I0(i_div_dvr_dat[8]),
        .O(\q_div_dvd_dat[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[15]_i_2 
       (.I0(i_div_dvr_dat[15]),
        .O(\q_div_dvd_dat[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[15]_i_3 
       (.I0(i_div_dvr_dat[14]),
        .O(\q_div_dvd_dat[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[15]_i_4 
       (.I0(i_div_dvr_dat[13]),
        .O(\q_div_dvd_dat[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[15]_i_5 
       (.I0(i_div_dvr_dat[12]),
        .O(\q_div_dvd_dat[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \q_div_dvd_dat[3]_i_2 
       (.I0(i_div_dvd_dat[15]),
        .I1(i_div_dvr_dat[0]),
        .O(\q_div_dvd_dat[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[3]_i_3 
       (.I0(i_div_dvr_dat[3]),
        .O(\q_div_dvd_dat[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[3]_i_4 
       (.I0(i_div_dvr_dat[2]),
        .O(\q_div_dvd_dat[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \q_div_dvd_dat[3]_i_5 
       (.I0(i_div_dvr_dat[0]),
        .I1(i_div_dvd_dat[15]),
        .I2(i_div_dvr_dat[1]),
        .O(\q_div_dvd_dat[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_div_dvd_dat[3]_i_6 
       (.I0(i_div_dvd_dat[15]),
        .I1(i_div_dvr_dat[0]),
        .O(\q_div_dvd_dat[3]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[7]_i_2 
       (.I0(i_div_dvr_dat[7]),
        .O(\q_div_dvd_dat[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[7]_i_3 
       (.I0(i_div_dvr_dat[6]),
        .O(\q_div_dvd_dat[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[7]_i_4 
       (.I0(i_div_dvr_dat[5]),
        .O(\q_div_dvd_dat[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[7]_i_5 
       (.I0(i_div_dvr_dat[4]),
        .O(\q_div_dvd_dat[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[0] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[0]),
        .Q(q_div_dvd_dat[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[10] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[10]),
        .Q(q_div_dvd_dat[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[11] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[11]),
        .Q(q_div_dvd_dat[11]),
        .R(1'b0));
  CARRY4 \q_div_dvd_dat_reg[11]_i_1 
       (.CI(\q_div_dvd_dat_reg[7]_i_1_n_0 ),
        .CO({\q_div_dvd_dat_reg[11]_i_1_n_0 ,\q_div_dvd_dat_reg[11]_i_1_n_1 ,\q_div_dvd_dat_reg[11]_i_1_n_2 ,\q_div_dvd_dat_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_div_dvd_dat0[11:8]),
        .S({\q_div_dvd_dat[11]_i_2_n_0 ,\q_div_dvd_dat[11]_i_3_n_0 ,\q_div_dvd_dat[11]_i_4_n_0 ,\q_div_dvd_dat[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[12] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[12]),
        .Q(q_div_dvd_dat[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[13] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[13]),
        .Q(q_div_dvd_dat[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[14] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[14]),
        .Q(q_div_dvd_dat[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[15] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[15]),
        .Q(q_div_dvd_dat[15]),
        .R(1'b0));
  CARRY4 \q_div_dvd_dat_reg[15]_i_1 
       (.CI(\q_div_dvd_dat_reg[11]_i_1_n_0 ),
        .CO({\q_div_dvd_dat_reg[15]_i_1_n_0 ,\q_div_dvd_dat_reg[15]_i_1_n_1 ,\q_div_dvd_dat_reg[15]_i_1_n_2 ,\q_div_dvd_dat_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_div_dvd_dat0[15:12]),
        .S({\q_div_dvd_dat[15]_i_2_n_0 ,\q_div_dvd_dat[15]_i_3_n_0 ,\q_div_dvd_dat[15]_i_4_n_0 ,\q_div_dvd_dat[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[16] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[16]),
        .Q(q_div_dvd_dat[16]),
        .R(1'b0));
  CARRY4 \q_div_dvd_dat_reg[16]_i_1 
       (.CI(\q_div_dvd_dat_reg[15]_i_1_n_0 ),
        .CO(\NLW_q_div_dvd_dat_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_q_div_dvd_dat_reg[16]_i_1_O_UNCONNECTED [3:1],q_div_dvd_dat0[16]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[1] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[1]),
        .Q(q_div_dvd_dat[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[2] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[2]),
        .Q(q_div_dvd_dat[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[3] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[3]),
        .Q(q_div_dvd_dat[3]),
        .R(1'b0));
  CARRY4 \q_div_dvd_dat_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\q_div_dvd_dat_reg[3]_i_1_n_0 ,\q_div_dvd_dat_reg[3]_i_1_n_1 ,\q_div_dvd_dat_reg[3]_i_1_n_2 ,\q_div_dvd_dat_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\q_div_dvd_dat[3]_i_2_n_0 ,1'b0}),
        .O(q_div_dvd_dat0[3:0]),
        .S({\q_div_dvd_dat[3]_i_3_n_0 ,\q_div_dvd_dat[3]_i_4_n_0 ,\q_div_dvd_dat[3]_i_5_n_0 ,\q_div_dvd_dat[3]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[4] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[4]),
        .Q(q_div_dvd_dat[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[5] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[5]),
        .Q(q_div_dvd_dat[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[6] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[6]),
        .Q(q_div_dvd_dat[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[7] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[7]),
        .Q(q_div_dvd_dat[7]),
        .R(1'b0));
  CARRY4 \q_div_dvd_dat_reg[7]_i_1 
       (.CI(\q_div_dvd_dat_reg[3]_i_1_n_0 ),
        .CO({\q_div_dvd_dat_reg[7]_i_1_n_0 ,\q_div_dvd_dat_reg[7]_i_1_n_1 ,\q_div_dvd_dat_reg[7]_i_1_n_2 ,\q_div_dvd_dat_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_div_dvd_dat0[7:4]),
        .S({\q_div_dvd_dat[7]_i_2_n_0 ,\q_div_dvd_dat[7]_i_3_n_0 ,\q_div_dvd_dat[7]_i_4_n_0 ,\q_div_dvd_dat[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[8] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[8]),
        .Q(q_div_dvd_dat[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[9] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[9]),
        .Q(q_div_dvd_dat[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][0] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[0]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][10] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[10]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][11] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[11]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][12] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[12]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][13] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[13]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][14] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[14]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][15] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[15]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][1] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[1]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][2] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[2]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][3] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[3]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][4] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[4]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][5] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[5]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][6] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[6]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][7] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[7]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][8] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[8]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][9] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[9]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[10] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[12]_i_1_n_6 ),
        .Q(o_div_res_dat[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[11] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[12]_i_1_n_5 ),
        .Q(o_div_res_dat[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[12] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[12]_i_1_n_4 ),
        .Q(o_div_res_dat[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \q_div_res_dat_reg[12]_i_1 
       (.CI(\q_div_res_dat_reg[8]_i_1_n_0 ),
        .CO({\q_div_res_dat_reg[12]_i_1_n_0 ,\q_div_res_dat_reg[12]_i_1_n_1 ,\q_div_res_dat_reg[12]_i_1_n_2 ,\q_div_res_dat_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_div_res_dat_reg[12]_i_1_n_4 ,\q_div_res_dat_reg[12]_i_1_n_5 ,\q_div_res_dat_reg[12]_i_1_n_6 ,\q_div_res_dat_reg[12]_i_1_n_7 }),
        .S(w_div_res_dat[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[13] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[16]_i_1_n_7 ),
        .Q(o_div_res_dat[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[14] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[16]_i_1_n_6 ),
        .Q(o_div_res_dat[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[15] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[16]_i_1_n_5 ),
        .Q(o_div_res_dat[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[16] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[16]_i_1_n_4 ),
        .Q(o_div_res_dat[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \q_div_res_dat_reg[16]_i_1 
       (.CI(\q_div_res_dat_reg[12]_i_1_n_0 ),
        .CO({\NLW_q_div_res_dat_reg[16]_i_1_CO_UNCONNECTED [3],\q_div_res_dat_reg[16]_i_1_n_1 ,\q_div_res_dat_reg[16]_i_1_n_2 ,\q_div_res_dat_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_div_res_dat_reg[16]_i_1_n_4 ,\q_div_res_dat_reg[16]_i_1_n_5 ,\q_div_res_dat_reg[16]_i_1_n_6 ,\q_div_res_dat_reg[16]_i_1_n_7 }),
        .S(w_div_res_dat[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[1] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[4]_i_1_n_7 ),
        .Q(o_div_res_dat[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[2] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[4]_i_1_n_6 ),
        .Q(o_div_res_dat[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[3] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[4]_i_1_n_5 ),
        .Q(o_div_res_dat[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[4] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[4]_i_1_n_4 ),
        .Q(o_div_res_dat[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \q_div_res_dat_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\q_div_res_dat_reg[4]_i_1_n_0 ,\q_div_res_dat_reg[4]_i_1_n_1 ,\q_div_res_dat_reg[4]_i_1_n_2 ,\q_div_res_dat_reg[4]_i_1_n_3 }),
        .CYINIT(w_div_res_dat[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_div_res_dat_reg[4]_i_1_n_4 ,\q_div_res_dat_reg[4]_i_1_n_5 ,\q_div_res_dat_reg[4]_i_1_n_6 ,\q_div_res_dat_reg[4]_i_1_n_7 }),
        .S(w_div_res_dat[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[5] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[8]_i_1_n_7 ),
        .Q(o_div_res_dat[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[6] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[8]_i_1_n_6 ),
        .Q(o_div_res_dat[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[7] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[8]_i_1_n_5 ),
        .Q(o_div_res_dat[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[8] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[8]_i_1_n_4 ),
        .Q(o_div_res_dat[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \q_div_res_dat_reg[8]_i_1 
       (.CI(\q_div_res_dat_reg[4]_i_1_n_0 ),
        .CO({\q_div_res_dat_reg[8]_i_1_n_0 ,\q_div_res_dat_reg[8]_i_1_n_1 ,\q_div_res_dat_reg[8]_i_1_n_2 ,\q_div_res_dat_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_div_res_dat_reg[8]_i_1_n_4 ,\q_div_res_dat_reg[8]_i_1_n_5 ,\q_div_res_dat_reg[8]_i_1_n_6 ,\q_div_res_dat_reg[8]_i_1_n_7 }),
        .S(w_div_res_dat[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[9] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[12]_i_1_n_7 ),
        .Q(o_div_res_dat[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q_div_res_vld_reg
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(m_div_res_vld),
        .Q(o_div_res_vld),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q_div_s_rst_p_reg
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(i_div_s_rst_p),
        .Q(q_div_s_rst_p),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[17] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[0]),
        .Q(data18),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[18] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[1]),
        .Q(data19),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[19] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[2]),
        .Q(data20),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[20] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[3]),
        .Q(data21),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[21] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[4]),
        .Q(data22),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[22] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[5]),
        .Q(data23),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[23] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[6]),
        .Q(data24),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[24] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[7]),
        .Q(data25),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[25] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[8]),
        .Q(data26),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[26] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[9]),
        .Q(data27),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[27] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[10]),
        .Q(data28),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[28] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[11]),
        .Q(data29),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[29] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[12]),
        .Q(data30),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[30] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[13]),
        .Q(data31),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[31] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[14]),
        .Q(data0),
        .R(q_div_s_rst_p));
  LUT2 #(
    .INIT(4'h6)) 
    q_sgn_div_sgn_i_1
       (.I0(i_div_dvr_dat[15]),
        .I1(i_div_dvd_dat[15]),
        .O(q_sgn_div_sgn_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_sgn_div_sgn_reg
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(q_sgn_div_sgn_i_1_n_0),
        .Q(q_sgn_div_sgn),
        .R(1'b0));
  (* DELAY = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL_REG" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__6 \throughput_on.delay_enable[1].u_delay_valid 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_dly_dvr_ena[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(\w_dly_dvr_ena[1] ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \throughput_on.delay_enable[1].u_delay_valid_i_1 
       (.I0(q_div_s_rst_p),
        .I1(\throughput_on.q_div_rdy_cnt [2]),
        .I2(\throughput_on.q_div_rdy_cnt [0]),
        .I3(\throughput_on.q_div_rdy_cnt [1]),
        .I4(\throughput_on.q_div_rdy_cnt [3]),
        .I5(i_div_dat_vld),
        .O(\w_dly_dvr_ena[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \throughput_on.q_div_rdy_cnt[0]_i_1 
       (.I0(\throughput_on.q_div_rdy_cnt [0]),
        .O(\throughput_on.q_div_rdy_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \throughput_on.q_div_rdy_cnt[1]_i_1 
       (.I0(\throughput_on.q_div_rdy_cnt [1]),
        .I1(\throughput_on.q_div_rdy_cnt [0]),
        .O(\throughput_on.q_div_rdy_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \throughput_on.q_div_rdy_cnt[2]_i_1 
       (.I0(\throughput_on.q_div_rdy_cnt [1]),
        .I1(\throughput_on.q_div_rdy_cnt [0]),
        .I2(\throughput_on.q_div_rdy_cnt [2]),
        .O(\throughput_on.q_div_rdy_cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \throughput_on.q_div_rdy_cnt[3]_i_1 
       (.I0(i_div_dat_vld),
        .I1(\throughput_on.q_div_rdy_cnt [3]),
        .I2(\throughput_on.q_div_rdy_cnt [1]),
        .I3(\throughput_on.q_div_rdy_cnt [0]),
        .I4(\throughput_on.q_div_rdy_cnt [2]),
        .O(\throughput_on.q_div_rdy_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \throughput_on.q_div_rdy_cnt[3]_i_2 
       (.I0(\throughput_on.q_div_rdy_cnt [3]),
        .I1(\throughput_on.q_div_rdy_cnt [1]),
        .I2(\throughput_on.q_div_rdy_cnt [0]),
        .I3(\throughput_on.q_div_rdy_cnt [2]),
        .O(\throughput_on.q_div_rdy_cnt[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rdy_cnt_reg[0] 
       (.C(i_div_a_clk_p),
        .CE(\throughput_on.q_div_rdy_cnt[3]_i_1_n_0 ),
        .D(\throughput_on.q_div_rdy_cnt[0]_i_1_n_0 ),
        .Q(\throughput_on.q_div_rdy_cnt [0]),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rdy_cnt_reg[1] 
       (.C(i_div_a_clk_p),
        .CE(\throughput_on.q_div_rdy_cnt[3]_i_1_n_0 ),
        .D(\throughput_on.q_div_rdy_cnt[1]_i_1_n_0 ),
        .Q(\throughput_on.q_div_rdy_cnt [1]),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rdy_cnt_reg[2] 
       (.C(i_div_a_clk_p),
        .CE(\throughput_on.q_div_rdy_cnt[3]_i_1_n_0 ),
        .D(\throughput_on.q_div_rdy_cnt[2]_i_1_n_0 ),
        .Q(\throughput_on.q_div_rdy_cnt [2]),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rdy_cnt_reg[3] 
       (.C(i_div_a_clk_p),
        .CE(\throughput_on.q_div_rdy_cnt[3]_i_1_n_0 ),
        .D(\throughput_on.q_div_rdy_cnt[3]_i_2_n_0 ),
        .Q(\throughput_on.q_div_rdy_cnt [3]),
        .R(q_div_s_rst_p));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \throughput_on.q_div_rep_cnt[0]_i_1 
       (.I0(\throughput_on.q_div_rep_cnt_reg [0]),
        .O(\throughput_on.q_div_rep_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \throughput_on.q_div_rep_cnt[1]_i_1 
       (.I0(\throughput_on.q_div_rep_cnt_reg [1]),
        .I1(\throughput_on.q_div_rep_cnt_reg [0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \throughput_on.q_div_rep_cnt[2]_i_1 
       (.I0(\throughput_on.q_div_rep_cnt_reg [2]),
        .I1(\throughput_on.q_div_rep_cnt_reg [0]),
        .I2(\throughput_on.q_div_rep_cnt_reg [1]),
        .O(p_0_in__0[2]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \throughput_on.q_div_rep_cnt[3]_i_1 
       (.I0(\throughput_on.q_div_rep_cnt_reg [2]),
        .I1(\throughput_on.q_div_rep_cnt_reg [0]),
        .I2(\throughput_on.q_div_rep_cnt_reg [1]),
        .I3(\throughput_on.q_div_rep_cnt_reg [3]),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \throughput_on.q_div_rep_cnt[3]_i_2 
       (.I0(\throughput_on.q_div_rep_cnt_reg [3]),
        .I1(\throughput_on.q_div_rep_cnt_reg [0]),
        .I2(\throughput_on.q_div_rep_cnt_reg [1]),
        .I3(\throughput_on.q_div_rep_cnt_reg [2]),
        .O(p_0_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rep_cnt_reg[0] 
       (.C(i_div_a_clk_p),
        .CE(sel),
        .D(\throughput_on.q_div_rep_cnt[0]_i_1_n_0 ),
        .Q(\throughput_on.q_div_rep_cnt_reg [0]),
        .R(\w_dly_dvr_ena[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rep_cnt_reg[1] 
       (.C(i_div_a_clk_p),
        .CE(sel),
        .D(p_0_in__0[1]),
        .Q(\throughput_on.q_div_rep_cnt_reg [1]),
        .R(\w_dly_dvr_ena[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rep_cnt_reg[2] 
       (.C(i_div_a_clk_p),
        .CE(sel),
        .D(p_0_in__0[2]),
        .Q(\throughput_on.q_div_rep_cnt_reg [2]),
        .R(\w_dly_dvr_ena[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rep_cnt_reg[3] 
       (.C(i_div_a_clk_p),
        .CE(sel),
        .D(p_0_in__0[3]),
        .Q(\throughput_on.q_div_rep_cnt_reg [3]),
        .R(\w_dly_dvr_ena[0] ));
  (* DELAY = "18" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b1" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL_REG" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized20__2 u_delay_sign
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(q_sgn_div_sgn),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(NLW_u_delay_sign_o_dly_a_value_UNCONNECTED[0]));
  (* DELAY = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b1" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized19__2 u_delay_valid
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(q_div_dat_vld),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(q_div_s_rst_p),
        .o_dly_a_value(m_div_res_vld));
endmodule

(* DVD_W = "16" *) (* DVR_W = "16" *) (* L = "32" *) 
(* M = "17" *) (* N = "2" *) (* ORIG_REF_NAME = "divider" *) 
(* R = "2" *) (* RES_W = "16" *) (* ROUNDING = "1'b1" *) 
(* SIGNED = "1'b0" *) (* THROUGHPUT = "16" *) (* USE_RESET = "1'b1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider__3
   (i_div_s_rst_p,
    i_div_a_clk_p,
    i_div_dat_vld,
    o_div_dat_rdy,
    i_div_dvd_dat,
    i_div_dvr_dat,
    o_div_res_vld,
    o_div_res_dat);
  input i_div_s_rst_p;
  input i_div_a_clk_p;
  input i_div_dat_vld;
  output o_div_dat_rdy;
  input [15:0]i_div_dvd_dat;
  input [15:0]i_div_dvr_dat;
  output o_div_res_vld;
  output [15:0]o_div_res_dat;

  wire data0;
  wire data18;
  wire data19;
  wire data20;
  wire data21;
  wire data22;
  wire data23;
  wire data24;
  wire data25;
  wire data26;
  wire data27;
  wire data28;
  wire data29;
  wire data30;
  wire data31;
  wire \delay_dividend[0].u_delay_dividend_i_1_n_0 ;
  wire \delay_dividend[0].u_delay_dividend_i_2_n_0 ;
  wire \delay_dividend[0].u_delay_dividend_i_3_n_0 ;
  wire \delay_dividend[0].u_delay_dividend_i_4_n_0 ;
  wire \delay_dividend[0].u_delay_dividend_i_5_n_0 ;
  wire \delay_dividend[0].u_delay_dividend_i_6_n_0 ;
  wire \delay_dividend[0].u_delay_dividend_i_7_n_0 ;
  wire [16:0]\div_loop[0].w_div_rem_dat ;
  wire \div_loop[1].throughput_on.q_dly_rem_ena ;
  wire \div_loop[1].throughput_on.q_dly_rem_ena_i_1_n_0 ;
  wire [16:0]\div_loop[1].w_div_rem_dat ;
  wire i_div_a_clk_p;
  wire i_div_dat_vld;
  wire [15:0]i_div_dvd_dat;
  wire [15:0]i_div_dvr_dat;
  wire i_div_s_rst_p;
  wire [16:0]\m_div_rem_dat[0] ;
  wire [16:0]\m_div_rem_dat[1] ;
  wire m_div_res_vld;
  wire o_div_dat_rdy;
  wire [15:0]o_div_res_dat;
  wire o_div_res_vld;
  wire [3:1]p_0_in__0;
  (* MAX_FANOUT = "35" *) (* RTL_MAX_FANOUT = "found" *) wire q_div_dat_vld;
  wire q_div_dat_vld_i_1_n_0;
  wire [16:0]q_div_dvd_dat;
  wire [16:0]q_div_dvd_dat0;
  wire \q_div_dvd_dat[11]_i_2_n_0 ;
  wire \q_div_dvd_dat[11]_i_3_n_0 ;
  wire \q_div_dvd_dat[11]_i_4_n_0 ;
  wire \q_div_dvd_dat[11]_i_5_n_0 ;
  wire \q_div_dvd_dat[15]_i_2_n_0 ;
  wire \q_div_dvd_dat[15]_i_3_n_0 ;
  wire \q_div_dvd_dat[15]_i_4_n_0 ;
  wire \q_div_dvd_dat[15]_i_5_n_0 ;
  wire \q_div_dvd_dat[3]_i_2_n_0 ;
  wire \q_div_dvd_dat[3]_i_3_n_0 ;
  wire \q_div_dvd_dat[3]_i_4_n_0 ;
  wire \q_div_dvd_dat[3]_i_5_n_0 ;
  wire \q_div_dvd_dat[3]_i_6_n_0 ;
  wire \q_div_dvd_dat[7]_i_2_n_0 ;
  wire \q_div_dvd_dat[7]_i_3_n_0 ;
  wire \q_div_dvd_dat[7]_i_4_n_0 ;
  wire \q_div_dvd_dat[7]_i_5_n_0 ;
  wire \q_div_dvd_dat_reg[11]_i_1_n_0 ;
  wire \q_div_dvd_dat_reg[11]_i_1_n_1 ;
  wire \q_div_dvd_dat_reg[11]_i_1_n_2 ;
  wire \q_div_dvd_dat_reg[11]_i_1_n_3 ;
  wire \q_div_dvd_dat_reg[15]_i_1_n_0 ;
  wire \q_div_dvd_dat_reg[15]_i_1_n_1 ;
  wire \q_div_dvd_dat_reg[15]_i_1_n_2 ;
  wire \q_div_dvd_dat_reg[15]_i_1_n_3 ;
  wire \q_div_dvd_dat_reg[3]_i_1_n_0 ;
  wire \q_div_dvd_dat_reg[3]_i_1_n_1 ;
  wire \q_div_dvd_dat_reg[3]_i_1_n_2 ;
  wire \q_div_dvd_dat_reg[3]_i_1_n_3 ;
  wire \q_div_dvd_dat_reg[7]_i_1_n_0 ;
  wire \q_div_dvd_dat_reg[7]_i_1_n_1 ;
  wire \q_div_dvd_dat_reg[7]_i_1_n_2 ;
  wire \q_div_dvd_dat_reg[7]_i_1_n_3 ;
  wire [15:0]\q_div_dvr_dat[1] ;
  wire \q_div_dvr_dat_reg_n_0_[0][0] ;
  wire \q_div_dvr_dat_reg_n_0_[0][10] ;
  wire \q_div_dvr_dat_reg_n_0_[0][11] ;
  wire \q_div_dvr_dat_reg_n_0_[0][12] ;
  wire \q_div_dvr_dat_reg_n_0_[0][13] ;
  wire \q_div_dvr_dat_reg_n_0_[0][14] ;
  wire \q_div_dvr_dat_reg_n_0_[0][15] ;
  wire \q_div_dvr_dat_reg_n_0_[0][1] ;
  wire \q_div_dvr_dat_reg_n_0_[0][2] ;
  wire \q_div_dvr_dat_reg_n_0_[0][3] ;
  wire \q_div_dvr_dat_reg_n_0_[0][4] ;
  wire \q_div_dvr_dat_reg_n_0_[0][5] ;
  wire \q_div_dvr_dat_reg_n_0_[0][6] ;
  wire \q_div_dvr_dat_reg_n_0_[0][7] ;
  wire \q_div_dvr_dat_reg_n_0_[0][8] ;
  wire \q_div_dvr_dat_reg_n_0_[0][9] ;
  wire \q_div_res_dat_reg[12]_i_1_n_0 ;
  wire \q_div_res_dat_reg[12]_i_1_n_1 ;
  wire \q_div_res_dat_reg[12]_i_1_n_2 ;
  wire \q_div_res_dat_reg[12]_i_1_n_3 ;
  wire \q_div_res_dat_reg[12]_i_1_n_4 ;
  wire \q_div_res_dat_reg[12]_i_1_n_5 ;
  wire \q_div_res_dat_reg[12]_i_1_n_6 ;
  wire \q_div_res_dat_reg[12]_i_1_n_7 ;
  wire \q_div_res_dat_reg[16]_i_1_n_1 ;
  wire \q_div_res_dat_reg[16]_i_1_n_2 ;
  wire \q_div_res_dat_reg[16]_i_1_n_3 ;
  wire \q_div_res_dat_reg[16]_i_1_n_4 ;
  wire \q_div_res_dat_reg[16]_i_1_n_5 ;
  wire \q_div_res_dat_reg[16]_i_1_n_6 ;
  wire \q_div_res_dat_reg[16]_i_1_n_7 ;
  wire \q_div_res_dat_reg[4]_i_1_n_0 ;
  wire \q_div_res_dat_reg[4]_i_1_n_1 ;
  wire \q_div_res_dat_reg[4]_i_1_n_2 ;
  wire \q_div_res_dat_reg[4]_i_1_n_3 ;
  wire \q_div_res_dat_reg[4]_i_1_n_4 ;
  wire \q_div_res_dat_reg[4]_i_1_n_5 ;
  wire \q_div_res_dat_reg[4]_i_1_n_6 ;
  wire \q_div_res_dat_reg[4]_i_1_n_7 ;
  wire \q_div_res_dat_reg[8]_i_1_n_0 ;
  wire \q_div_res_dat_reg[8]_i_1_n_1 ;
  wire \q_div_res_dat_reg[8]_i_1_n_2 ;
  wire \q_div_res_dat_reg[8]_i_1_n_3 ;
  wire \q_div_res_dat_reg[8]_i_1_n_4 ;
  wire \q_div_res_dat_reg[8]_i_1_n_5 ;
  wire \q_div_res_dat_reg[8]_i_1_n_6 ;
  wire \q_div_res_dat_reg[8]_i_1_n_7 ;
  wire q_div_s_rst_p;
  wire q_sgn_div_sgn;
  wire q_sgn_div_sgn_i_1_n_0;
  wire sel;
  wire [3:0]\throughput_on.q_div_rdy_cnt ;
  wire \throughput_on.q_div_rdy_cnt[0]_i_1_n_0 ;
  wire \throughput_on.q_div_rdy_cnt[1]_i_1_n_0 ;
  wire \throughput_on.q_div_rdy_cnt[2]_i_1_n_0 ;
  wire \throughput_on.q_div_rdy_cnt[3]_i_1_n_0 ;
  wire \throughput_on.q_div_rdy_cnt[3]_i_2_n_0 ;
  wire \throughput_on.q_div_rep_cnt[0]_i_1_n_0 ;
  wire [3:0]\throughput_on.q_div_rep_cnt_reg ;
  wire \w_div_quo_dat[0] ;
  wire \w_div_quo_dat[16] ;
  wire [16:0]w_div_res_dat;
  wire \w_dly_dvd_dat[0] ;
  wire \w_dly_dvd_dat[1] ;
  wire \w_dly_dvr_ena[0] ;
  wire \w_dly_dvr_ena[1] ;
  wire [3:0]\NLW_q_div_dvd_dat_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_q_div_dvd_dat_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_q_div_res_dat_reg[16]_i_1_CO_UNCONNECTED ;
  wire [0:0]NLW_u_delay_sign_o_dly_a_value_UNCONNECTED;

  (* DELAY = "0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL_REG" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized0__3 \delay_dividend[0].u_delay_dividend 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\delay_dividend[0].u_delay_dividend_i_1_n_0 ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(\w_dly_dvd_dat[0] ));
  MUXF8 \delay_dividend[0].u_delay_dividend_i_1 
       (.I0(\delay_dividend[0].u_delay_dividend_i_2_n_0 ),
        .I1(\delay_dividend[0].u_delay_dividend_i_3_n_0 ),
        .O(\delay_dividend[0].u_delay_dividend_i_1_n_0 ),
        .S(\throughput_on.q_div_rep_cnt_reg [3]));
  MUXF7 \delay_dividend[0].u_delay_dividend_i_2 
       (.I0(\delay_dividend[0].u_delay_dividend_i_4_n_0 ),
        .I1(\delay_dividend[0].u_delay_dividend_i_5_n_0 ),
        .O(\delay_dividend[0].u_delay_dividend_i_2_n_0 ),
        .S(\throughput_on.q_div_rep_cnt_reg [2]));
  MUXF7 \delay_dividend[0].u_delay_dividend_i_3 
       (.I0(\delay_dividend[0].u_delay_dividend_i_6_n_0 ),
        .I1(\delay_dividend[0].u_delay_dividend_i_7_n_0 ),
        .O(\delay_dividend[0].u_delay_dividend_i_3_n_0 ),
        .S(\throughput_on.q_div_rep_cnt_reg [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \delay_dividend[0].u_delay_dividend_i_4 
       (.I0(data29),
        .I1(data30),
        .I2(\throughput_on.q_div_rep_cnt_reg [1]),
        .I3(data31),
        .I4(\throughput_on.q_div_rep_cnt_reg [0]),
        .I5(data0),
        .O(\delay_dividend[0].u_delay_dividend_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \delay_dividend[0].u_delay_dividend_i_5 
       (.I0(data25),
        .I1(data26),
        .I2(\throughput_on.q_div_rep_cnt_reg [1]),
        .I3(data27),
        .I4(\throughput_on.q_div_rep_cnt_reg [0]),
        .I5(data28),
        .O(\delay_dividend[0].u_delay_dividend_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \delay_dividend[0].u_delay_dividend_i_6 
       (.I0(data21),
        .I1(data22),
        .I2(\throughput_on.q_div_rep_cnt_reg [1]),
        .I3(data23),
        .I4(\throughput_on.q_div_rep_cnt_reg [0]),
        .I5(data24),
        .O(\delay_dividend[0].u_delay_dividend_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \delay_dividend[0].u_delay_dividend_i_7 
       (.I0(data18),
        .I1(\throughput_on.q_div_rep_cnt_reg [1]),
        .I2(data19),
        .I3(\throughput_on.q_div_rep_cnt_reg [0]),
        .I4(data20),
        .O(\delay_dividend[0].u_delay_dividend_i_7_n_0 ));
  (* DELAY = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL_REG" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__3 \delay_dividend[1].u_delay_dividend 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(1'b0),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(\w_dly_dvd_dat[1] ));
  (* DELAY = "1" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "No" *) 
  (* STYLE = "Register" *) 
  (* WIDTH = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized1__3 \delay_divisor[1].u_delay_divisor 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value({\q_div_dvr_dat_reg_n_0_[0][15] ,\q_div_dvr_dat_reg_n_0_[0][14] ,\q_div_dvr_dat_reg_n_0_[0][13] ,\q_div_dvr_dat_reg_n_0_[0][12] ,\q_div_dvr_dat_reg_n_0_[0][11] ,\q_div_dvr_dat_reg_n_0_[0][10] ,\q_div_dvr_dat_reg_n_0_[0][9] ,\q_div_dvr_dat_reg_n_0_[0][8] ,\q_div_dvr_dat_reg_n_0_[0][7] ,\q_div_dvr_dat_reg_n_0_[0][6] ,\q_div_dvr_dat_reg_n_0_[0][5] ,\q_div_dvr_dat_reg_n_0_[0][4] ,\q_div_dvr_dat_reg_n_0_[0][3] ,\q_div_dvr_dat_reg_n_0_[0][2] ,\q_div_dvr_dat_reg_n_0_[0][1] ,\q_div_dvr_dat_reg_n_0_[0][0] }),
        .i_dly_s_ena_p(\w_dly_dvr_ena[1] ),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(\q_div_dvr_dat[1] ));
  (* DELAY = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized2__3 \delay_quotient[0].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[16]));
  (* DELAY = "6" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized12__3 \delay_quotient[10].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[6]));
  (* DELAY = "5" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized13__3 \delay_quotient[11].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[5]));
  (* DELAY = "4" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized14__3 \delay_quotient[12].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[4]));
  (* DELAY = "3" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized15__3 \delay_quotient[13].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[3]));
  (* DELAY = "2" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized16__3 \delay_quotient[14].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[2]));
  (* DELAY = "1" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "Register" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized17__3 \delay_quotient[15].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[1]));
  (* DELAY = "0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized18__3 \delay_quotient[16].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[16] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[0]));
  (* DELAY = "15" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized3__3 \delay_quotient[1].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[15]));
  (* DELAY = "14" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized4__3 \delay_quotient[2].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[14]));
  (* DELAY = "13" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized5__3 \delay_quotient[3].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[13]));
  (* DELAY = "12" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized6__3 \delay_quotient[4].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[12]));
  (* DELAY = "11" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized7__3 \delay_quotient[5].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[11]));
  (* DELAY = "10" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized8__3 \delay_quotient[6].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[10]));
  (* DELAY = "9" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized9__3 \delay_quotient[7].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[9]));
  (* DELAY = "8" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized10__3 \delay_quotient[8].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[8]));
  (* DELAY = "7" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized11__3 \delay_quotient[9].u_delay_quotient 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_div_quo_dat[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(w_div_res_dat[7]));
  (* DVR_W = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* QUOTIENT_ONLY = "1'b0" *) 
  (* REM_W = "17" *) 
  (* USE_REG = "1'b1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_div__3 \div_loop[0].u_div 
       (.i_div_a_clk_p(i_div_a_clk_p),
        .i_div_dvd_dat(\w_dly_dvd_dat[0] ),
        .i_div_dvr_dat({\q_div_dvr_dat_reg_n_0_[0][15] ,\q_div_dvr_dat_reg_n_0_[0][14] ,\q_div_dvr_dat_reg_n_0_[0][13] ,\q_div_dvr_dat_reg_n_0_[0][12] ,\q_div_dvr_dat_reg_n_0_[0][11] ,\q_div_dvr_dat_reg_n_0_[0][10] ,\q_div_dvr_dat_reg_n_0_[0][9] ,\q_div_dvr_dat_reg_n_0_[0][8] ,\q_div_dvr_dat_reg_n_0_[0][7] ,\q_div_dvr_dat_reg_n_0_[0][6] ,\q_div_dvr_dat_reg_n_0_[0][5] ,\q_div_dvr_dat_reg_n_0_[0][4] ,\q_div_dvr_dat_reg_n_0_[0][3] ,\q_div_dvr_dat_reg_n_0_[0][2] ,\q_div_dvr_dat_reg_n_0_[0][1] ,\q_div_dvr_dat_reg_n_0_[0][0] }),
        .i_div_rem_dat(\div_loop[0].w_div_rem_dat ),
        .o_div_quo_dat(\w_div_quo_dat[0] ),
        .o_div_rem_dat(\m_div_rem_dat[0] ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_1 
       (.I0(q_div_dvd_dat[16]),
        .I1(\m_div_rem_dat[0] [16]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [16]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_10 
       (.I0(q_div_dvd_dat[7]),
        .I1(\m_div_rem_dat[0] [7]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_11 
       (.I0(q_div_dvd_dat[6]),
        .I1(\m_div_rem_dat[0] [6]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_12 
       (.I0(q_div_dvd_dat[5]),
        .I1(\m_div_rem_dat[0] [5]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_13 
       (.I0(q_div_dvd_dat[4]),
        .I1(\m_div_rem_dat[0] [4]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_14 
       (.I0(q_div_dvd_dat[3]),
        .I1(\m_div_rem_dat[0] [3]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_15 
       (.I0(q_div_dvd_dat[2]),
        .I1(\m_div_rem_dat[0] [2]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_16 
       (.I0(q_div_dvd_dat[1]),
        .I1(\m_div_rem_dat[0] [1]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_17 
       (.I0(q_div_dvd_dat[0]),
        .I1(\m_div_rem_dat[0] [0]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_2 
       (.I0(q_div_dvd_dat[15]),
        .I1(\m_div_rem_dat[0] [15]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_3 
       (.I0(q_div_dvd_dat[14]),
        .I1(\m_div_rem_dat[0] [14]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_4 
       (.I0(q_div_dvd_dat[13]),
        .I1(\m_div_rem_dat[0] [13]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_5 
       (.I0(q_div_dvd_dat[12]),
        .I1(\m_div_rem_dat[0] [12]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_6 
       (.I0(q_div_dvd_dat[11]),
        .I1(\m_div_rem_dat[0] [11]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_7 
       (.I0(q_div_dvd_dat[10]),
        .I1(\m_div_rem_dat[0] [10]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_8 
       (.I0(q_div_dvd_dat[9]),
        .I1(\m_div_rem_dat[0] [9]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [9]));
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[0].u_div_i_9 
       (.I0(q_div_dvd_dat[8]),
        .I1(\m_div_rem_dat[0] [8]),
        .I2(q_div_dat_vld),
        .O(\div_loop[0].w_div_rem_dat [8]));
  LUT2 #(
    .INIT(4'h2)) 
    \div_loop[1].throughput_on.q_dly_rem_ena_i_1 
       (.I0(\w_dly_dvr_ena[1] ),
        .I1(q_div_s_rst_p),
        .O(\div_loop[1].throughput_on.q_dly_rem_ena_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \div_loop[1].throughput_on.q_dly_rem_ena_reg 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(\div_loop[1].throughput_on.q_dly_rem_ena_i_1_n_0 ),
        .Q(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .R(1'b0));
  (* DVR_W = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* QUOTIENT_ONLY = "1'b1" *) 
  (* REM_W = "17" *) 
  (* USE_REG = "1'b1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_div__parameterized0__3 \div_loop[1].u_div 
       (.i_div_a_clk_p(i_div_a_clk_p),
        .i_div_dvd_dat(\w_dly_dvd_dat[1] ),
        .i_div_dvr_dat(\q_div_dvr_dat[1] ),
        .i_div_rem_dat(\div_loop[1].w_div_rem_dat ),
        .o_div_quo_dat(\w_div_quo_dat[16] ),
        .o_div_rem_dat(\m_div_rem_dat[1] ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_1 
       (.I0(\m_div_rem_dat[0] [16]),
        .I1(\m_div_rem_dat[1] [16]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [16]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_10 
       (.I0(\m_div_rem_dat[0] [7]),
        .I1(\m_div_rem_dat[1] [7]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [7]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_11 
       (.I0(\m_div_rem_dat[0] [6]),
        .I1(\m_div_rem_dat[1] [6]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [6]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_12 
       (.I0(\m_div_rem_dat[0] [5]),
        .I1(\m_div_rem_dat[1] [5]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [5]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_13 
       (.I0(\m_div_rem_dat[0] [4]),
        .I1(\m_div_rem_dat[1] [4]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [4]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_14 
       (.I0(\m_div_rem_dat[0] [3]),
        .I1(\m_div_rem_dat[1] [3]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [3]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_15 
       (.I0(\m_div_rem_dat[0] [2]),
        .I1(\m_div_rem_dat[1] [2]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [2]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_16 
       (.I0(\m_div_rem_dat[0] [1]),
        .I1(\m_div_rem_dat[1] [1]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [1]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_17 
       (.I0(\m_div_rem_dat[0] [0]),
        .I1(\m_div_rem_dat[1] [0]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [0]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_2 
       (.I0(\m_div_rem_dat[0] [15]),
        .I1(\m_div_rem_dat[1] [15]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [15]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_3 
       (.I0(\m_div_rem_dat[0] [14]),
        .I1(\m_div_rem_dat[1] [14]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [14]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_4 
       (.I0(\m_div_rem_dat[0] [13]),
        .I1(\m_div_rem_dat[1] [13]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [13]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_5 
       (.I0(\m_div_rem_dat[0] [12]),
        .I1(\m_div_rem_dat[1] [12]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [12]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_6 
       (.I0(\m_div_rem_dat[0] [11]),
        .I1(\m_div_rem_dat[1] [11]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [11]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_7 
       (.I0(\m_div_rem_dat[0] [10]),
        .I1(\m_div_rem_dat[1] [10]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [10]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_8 
       (.I0(\m_div_rem_dat[0] [9]),
        .I1(\m_div_rem_dat[1] [9]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [9]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \div_loop[1].u_div_i_9 
       (.I0(\m_div_rem_dat[0] [8]),
        .I1(\m_div_rem_dat[1] [8]),
        .I2(\div_loop[1].throughput_on.q_dly_rem_ena ),
        .O(\div_loop[1].w_div_rem_dat [8]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    o_div_dat_rdy_INST_0
       (.I0(\throughput_on.q_div_rdy_cnt [3]),
        .I1(\throughput_on.q_div_rdy_cnt [1]),
        .I2(\throughput_on.q_div_rdy_cnt [0]),
        .I3(\throughput_on.q_div_rdy_cnt [2]),
        .I4(q_div_s_rst_p),
        .O(o_div_dat_rdy));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    q_div_dat_vld_i_1
       (.I0(i_div_dat_vld),
        .I1(\throughput_on.q_div_rdy_cnt [3]),
        .I2(\throughput_on.q_div_rdy_cnt [1]),
        .I3(\throughput_on.q_div_rdy_cnt [0]),
        .I4(\throughput_on.q_div_rdy_cnt [2]),
        .I5(q_div_s_rst_p),
        .O(q_div_dat_vld_i_1_n_0));
  (* RTL_MAX_FANOUT = "found" *) 
  FDRE #(
    .INIT(1'b0)) 
    q_div_dat_vld_reg
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(q_div_dat_vld_i_1_n_0),
        .Q(q_div_dat_vld),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[11]_i_2 
       (.I0(i_div_dvr_dat[11]),
        .O(\q_div_dvd_dat[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[11]_i_3 
       (.I0(i_div_dvr_dat[10]),
        .O(\q_div_dvd_dat[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[11]_i_4 
       (.I0(i_div_dvr_dat[9]),
        .O(\q_div_dvd_dat[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[11]_i_5 
       (.I0(i_div_dvr_dat[8]),
        .O(\q_div_dvd_dat[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[15]_i_2 
       (.I0(i_div_dvr_dat[15]),
        .O(\q_div_dvd_dat[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[15]_i_3 
       (.I0(i_div_dvr_dat[14]),
        .O(\q_div_dvd_dat[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[15]_i_4 
       (.I0(i_div_dvr_dat[13]),
        .O(\q_div_dvd_dat[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[15]_i_5 
       (.I0(i_div_dvr_dat[12]),
        .O(\q_div_dvd_dat[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \q_div_dvd_dat[3]_i_2 
       (.I0(i_div_dvd_dat[15]),
        .I1(i_div_dvr_dat[0]),
        .O(\q_div_dvd_dat[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[3]_i_3 
       (.I0(i_div_dvr_dat[3]),
        .O(\q_div_dvd_dat[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[3]_i_4 
       (.I0(i_div_dvr_dat[2]),
        .O(\q_div_dvd_dat[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \q_div_dvd_dat[3]_i_5 
       (.I0(i_div_dvr_dat[0]),
        .I1(i_div_dvd_dat[15]),
        .I2(i_div_dvr_dat[1]),
        .O(\q_div_dvd_dat[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_div_dvd_dat[3]_i_6 
       (.I0(i_div_dvd_dat[15]),
        .I1(i_div_dvr_dat[0]),
        .O(\q_div_dvd_dat[3]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[7]_i_2 
       (.I0(i_div_dvr_dat[7]),
        .O(\q_div_dvd_dat[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[7]_i_3 
       (.I0(i_div_dvr_dat[6]),
        .O(\q_div_dvd_dat[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[7]_i_4 
       (.I0(i_div_dvr_dat[5]),
        .O(\q_div_dvd_dat[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_div_dvd_dat[7]_i_5 
       (.I0(i_div_dvr_dat[4]),
        .O(\q_div_dvd_dat[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[0] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[0]),
        .Q(q_div_dvd_dat[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[10] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[10]),
        .Q(q_div_dvd_dat[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[11] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[11]),
        .Q(q_div_dvd_dat[11]),
        .R(1'b0));
  CARRY4 \q_div_dvd_dat_reg[11]_i_1 
       (.CI(\q_div_dvd_dat_reg[7]_i_1_n_0 ),
        .CO({\q_div_dvd_dat_reg[11]_i_1_n_0 ,\q_div_dvd_dat_reg[11]_i_1_n_1 ,\q_div_dvd_dat_reg[11]_i_1_n_2 ,\q_div_dvd_dat_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_div_dvd_dat0[11:8]),
        .S({\q_div_dvd_dat[11]_i_2_n_0 ,\q_div_dvd_dat[11]_i_3_n_0 ,\q_div_dvd_dat[11]_i_4_n_0 ,\q_div_dvd_dat[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[12] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[12]),
        .Q(q_div_dvd_dat[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[13] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[13]),
        .Q(q_div_dvd_dat[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[14] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[14]),
        .Q(q_div_dvd_dat[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[15] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[15]),
        .Q(q_div_dvd_dat[15]),
        .R(1'b0));
  CARRY4 \q_div_dvd_dat_reg[15]_i_1 
       (.CI(\q_div_dvd_dat_reg[11]_i_1_n_0 ),
        .CO({\q_div_dvd_dat_reg[15]_i_1_n_0 ,\q_div_dvd_dat_reg[15]_i_1_n_1 ,\q_div_dvd_dat_reg[15]_i_1_n_2 ,\q_div_dvd_dat_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_div_dvd_dat0[15:12]),
        .S({\q_div_dvd_dat[15]_i_2_n_0 ,\q_div_dvd_dat[15]_i_3_n_0 ,\q_div_dvd_dat[15]_i_4_n_0 ,\q_div_dvd_dat[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[16] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[16]),
        .Q(q_div_dvd_dat[16]),
        .R(1'b0));
  CARRY4 \q_div_dvd_dat_reg[16]_i_1 
       (.CI(\q_div_dvd_dat_reg[15]_i_1_n_0 ),
        .CO(\NLW_q_div_dvd_dat_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_q_div_dvd_dat_reg[16]_i_1_O_UNCONNECTED [3:1],q_div_dvd_dat0[16]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[1] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[1]),
        .Q(q_div_dvd_dat[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[2] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[2]),
        .Q(q_div_dvd_dat[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[3] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[3]),
        .Q(q_div_dvd_dat[3]),
        .R(1'b0));
  CARRY4 \q_div_dvd_dat_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\q_div_dvd_dat_reg[3]_i_1_n_0 ,\q_div_dvd_dat_reg[3]_i_1_n_1 ,\q_div_dvd_dat_reg[3]_i_1_n_2 ,\q_div_dvd_dat_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\q_div_dvd_dat[3]_i_2_n_0 ,1'b0}),
        .O(q_div_dvd_dat0[3:0]),
        .S({\q_div_dvd_dat[3]_i_3_n_0 ,\q_div_dvd_dat[3]_i_4_n_0 ,\q_div_dvd_dat[3]_i_5_n_0 ,\q_div_dvd_dat[3]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[4] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[4]),
        .Q(q_div_dvd_dat[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[5] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[5]),
        .Q(q_div_dvd_dat[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[6] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[6]),
        .Q(q_div_dvd_dat[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[7] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[7]),
        .Q(q_div_dvd_dat[7]),
        .R(1'b0));
  CARRY4 \q_div_dvd_dat_reg[7]_i_1 
       (.CI(\q_div_dvd_dat_reg[3]_i_1_n_0 ),
        .CO({\q_div_dvd_dat_reg[7]_i_1_n_0 ,\q_div_dvd_dat_reg[7]_i_1_n_1 ,\q_div_dvd_dat_reg[7]_i_1_n_2 ,\q_div_dvd_dat_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_div_dvd_dat0[7:4]),
        .S({\q_div_dvd_dat[7]_i_2_n_0 ,\q_div_dvd_dat[7]_i_3_n_0 ,\q_div_dvd_dat[7]_i_4_n_0 ,\q_div_dvd_dat[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[8] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[8]),
        .Q(q_div_dvd_dat[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvd_dat_reg[9] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(q_div_dvd_dat0[9]),
        .Q(q_div_dvd_dat[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][0] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[0]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][10] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[10]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][11] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[11]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][12] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[12]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][13] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[13]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][14] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[14]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][15] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[15]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][1] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[1]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][2] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[2]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][3] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[3]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][4] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[4]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][5] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[5]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][6] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[6]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][7] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[7]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][8] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[8]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_dvr_dat_reg[0][9] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvr_dat[9]),
        .Q(\q_div_dvr_dat_reg_n_0_[0][9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[10] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[12]_i_1_n_6 ),
        .Q(o_div_res_dat[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[11] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[12]_i_1_n_5 ),
        .Q(o_div_res_dat[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[12] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[12]_i_1_n_4 ),
        .Q(o_div_res_dat[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \q_div_res_dat_reg[12]_i_1 
       (.CI(\q_div_res_dat_reg[8]_i_1_n_0 ),
        .CO({\q_div_res_dat_reg[12]_i_1_n_0 ,\q_div_res_dat_reg[12]_i_1_n_1 ,\q_div_res_dat_reg[12]_i_1_n_2 ,\q_div_res_dat_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_div_res_dat_reg[12]_i_1_n_4 ,\q_div_res_dat_reg[12]_i_1_n_5 ,\q_div_res_dat_reg[12]_i_1_n_6 ,\q_div_res_dat_reg[12]_i_1_n_7 }),
        .S(w_div_res_dat[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[13] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[16]_i_1_n_7 ),
        .Q(o_div_res_dat[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[14] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[16]_i_1_n_6 ),
        .Q(o_div_res_dat[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[15] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[16]_i_1_n_5 ),
        .Q(o_div_res_dat[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[16] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[16]_i_1_n_4 ),
        .Q(o_div_res_dat[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \q_div_res_dat_reg[16]_i_1 
       (.CI(\q_div_res_dat_reg[12]_i_1_n_0 ),
        .CO({\NLW_q_div_res_dat_reg[16]_i_1_CO_UNCONNECTED [3],\q_div_res_dat_reg[16]_i_1_n_1 ,\q_div_res_dat_reg[16]_i_1_n_2 ,\q_div_res_dat_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_div_res_dat_reg[16]_i_1_n_4 ,\q_div_res_dat_reg[16]_i_1_n_5 ,\q_div_res_dat_reg[16]_i_1_n_6 ,\q_div_res_dat_reg[16]_i_1_n_7 }),
        .S(w_div_res_dat[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[1] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[4]_i_1_n_7 ),
        .Q(o_div_res_dat[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[2] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[4]_i_1_n_6 ),
        .Q(o_div_res_dat[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[3] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[4]_i_1_n_5 ),
        .Q(o_div_res_dat[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[4] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[4]_i_1_n_4 ),
        .Q(o_div_res_dat[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \q_div_res_dat_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\q_div_res_dat_reg[4]_i_1_n_0 ,\q_div_res_dat_reg[4]_i_1_n_1 ,\q_div_res_dat_reg[4]_i_1_n_2 ,\q_div_res_dat_reg[4]_i_1_n_3 }),
        .CYINIT(w_div_res_dat[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_div_res_dat_reg[4]_i_1_n_4 ,\q_div_res_dat_reg[4]_i_1_n_5 ,\q_div_res_dat_reg[4]_i_1_n_6 ,\q_div_res_dat_reg[4]_i_1_n_7 }),
        .S(w_div_res_dat[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[5] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[8]_i_1_n_7 ),
        .Q(o_div_res_dat[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[6] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[8]_i_1_n_6 ),
        .Q(o_div_res_dat[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[7] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[8]_i_1_n_5 ),
        .Q(o_div_res_dat[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[8] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[8]_i_1_n_4 ),
        .Q(o_div_res_dat[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \q_div_res_dat_reg[8]_i_1 
       (.CI(\q_div_res_dat_reg[4]_i_1_n_0 ),
        .CO({\q_div_res_dat_reg[8]_i_1_n_0 ,\q_div_res_dat_reg[8]_i_1_n_1 ,\q_div_res_dat_reg[8]_i_1_n_2 ,\q_div_res_dat_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_div_res_dat_reg[8]_i_1_n_4 ,\q_div_res_dat_reg[8]_i_1_n_5 ,\q_div_res_dat_reg[8]_i_1_n_6 ,\q_div_res_dat_reg[8]_i_1_n_7 }),
        .S(w_div_res_dat[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \q_div_res_dat_reg[9] 
       (.C(i_div_a_clk_p),
        .CE(m_div_res_vld),
        .D(\q_div_res_dat_reg[12]_i_1_n_7 ),
        .Q(o_div_res_dat[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q_div_res_vld_reg
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(m_div_res_vld),
        .Q(o_div_res_vld),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q_div_s_rst_p_reg
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(i_div_s_rst_p),
        .Q(q_div_s_rst_p),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[17] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[0]),
        .Q(data18),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[18] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[1]),
        .Q(data19),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[19] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[2]),
        .Q(data20),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[20] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[3]),
        .Q(data21),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[21] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[4]),
        .Q(data22),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[22] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[5]),
        .Q(data23),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[23] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[6]),
        .Q(data24),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[24] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[7]),
        .Q(data25),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[25] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[8]),
        .Q(data26),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[26] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[9]),
        .Q(data27),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[27] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[10]),
        .Q(data28),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[28] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[11]),
        .Q(data29),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[29] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[12]),
        .Q(data30),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[30] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[13]),
        .Q(data31),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg_dvd_dat_reg[31] 
       (.C(i_div_a_clk_p),
        .CE(\w_dly_dvr_ena[0] ),
        .D(i_div_dvd_dat[14]),
        .Q(data0),
        .R(q_div_s_rst_p));
  LUT2 #(
    .INIT(4'h6)) 
    q_sgn_div_sgn_i_1
       (.I0(i_div_dvr_dat[15]),
        .I1(i_div_dvd_dat[15]),
        .O(q_sgn_div_sgn_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_sgn_div_sgn_reg
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(q_sgn_div_sgn_i_1_n_0),
        .Q(q_sgn_div_sgn),
        .R(1'b0));
  (* DELAY = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b0" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL_REG" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__5 \throughput_on.delay_enable[1].u_delay_valid 
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(\w_dly_dvr_ena[0] ),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(\w_dly_dvr_ena[1] ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \throughput_on.delay_enable[1].u_delay_valid_i_1 
       (.I0(q_div_s_rst_p),
        .I1(\throughput_on.q_div_rdy_cnt [2]),
        .I2(\throughput_on.q_div_rdy_cnt [0]),
        .I3(\throughput_on.q_div_rdy_cnt [1]),
        .I4(\throughput_on.q_div_rdy_cnt [3]),
        .I5(i_div_dat_vld),
        .O(\w_dly_dvr_ena[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \throughput_on.q_div_rdy_cnt[0]_i_1 
       (.I0(\throughput_on.q_div_rdy_cnt [0]),
        .O(\throughput_on.q_div_rdy_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \throughput_on.q_div_rdy_cnt[1]_i_1 
       (.I0(\throughput_on.q_div_rdy_cnt [1]),
        .I1(\throughput_on.q_div_rdy_cnt [0]),
        .O(\throughput_on.q_div_rdy_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \throughput_on.q_div_rdy_cnt[2]_i_1 
       (.I0(\throughput_on.q_div_rdy_cnt [1]),
        .I1(\throughput_on.q_div_rdy_cnt [0]),
        .I2(\throughput_on.q_div_rdy_cnt [2]),
        .O(\throughput_on.q_div_rdy_cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \throughput_on.q_div_rdy_cnt[3]_i_1 
       (.I0(i_div_dat_vld),
        .I1(\throughput_on.q_div_rdy_cnt [3]),
        .I2(\throughput_on.q_div_rdy_cnt [1]),
        .I3(\throughput_on.q_div_rdy_cnt [0]),
        .I4(\throughput_on.q_div_rdy_cnt [2]),
        .O(\throughput_on.q_div_rdy_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \throughput_on.q_div_rdy_cnt[3]_i_2 
       (.I0(\throughput_on.q_div_rdy_cnt [3]),
        .I1(\throughput_on.q_div_rdy_cnt [1]),
        .I2(\throughput_on.q_div_rdy_cnt [0]),
        .I3(\throughput_on.q_div_rdy_cnt [2]),
        .O(\throughput_on.q_div_rdy_cnt[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rdy_cnt_reg[0] 
       (.C(i_div_a_clk_p),
        .CE(\throughput_on.q_div_rdy_cnt[3]_i_1_n_0 ),
        .D(\throughput_on.q_div_rdy_cnt[0]_i_1_n_0 ),
        .Q(\throughput_on.q_div_rdy_cnt [0]),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rdy_cnt_reg[1] 
       (.C(i_div_a_clk_p),
        .CE(\throughput_on.q_div_rdy_cnt[3]_i_1_n_0 ),
        .D(\throughput_on.q_div_rdy_cnt[1]_i_1_n_0 ),
        .Q(\throughput_on.q_div_rdy_cnt [1]),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rdy_cnt_reg[2] 
       (.C(i_div_a_clk_p),
        .CE(\throughput_on.q_div_rdy_cnt[3]_i_1_n_0 ),
        .D(\throughput_on.q_div_rdy_cnt[2]_i_1_n_0 ),
        .Q(\throughput_on.q_div_rdy_cnt [2]),
        .R(q_div_s_rst_p));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rdy_cnt_reg[3] 
       (.C(i_div_a_clk_p),
        .CE(\throughput_on.q_div_rdy_cnt[3]_i_1_n_0 ),
        .D(\throughput_on.q_div_rdy_cnt[3]_i_2_n_0 ),
        .Q(\throughput_on.q_div_rdy_cnt [3]),
        .R(q_div_s_rst_p));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \throughput_on.q_div_rep_cnt[0]_i_1 
       (.I0(\throughput_on.q_div_rep_cnt_reg [0]),
        .O(\throughput_on.q_div_rep_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \throughput_on.q_div_rep_cnt[1]_i_1 
       (.I0(\throughput_on.q_div_rep_cnt_reg [1]),
        .I1(\throughput_on.q_div_rep_cnt_reg [0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \throughput_on.q_div_rep_cnt[2]_i_1 
       (.I0(\throughput_on.q_div_rep_cnt_reg [2]),
        .I1(\throughput_on.q_div_rep_cnt_reg [0]),
        .I2(\throughput_on.q_div_rep_cnt_reg [1]),
        .O(p_0_in__0[2]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \throughput_on.q_div_rep_cnt[3]_i_1 
       (.I0(\throughput_on.q_div_rep_cnt_reg [2]),
        .I1(\throughput_on.q_div_rep_cnt_reg [0]),
        .I2(\throughput_on.q_div_rep_cnt_reg [1]),
        .I3(\throughput_on.q_div_rep_cnt_reg [3]),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \throughput_on.q_div_rep_cnt[3]_i_2 
       (.I0(\throughput_on.q_div_rep_cnt_reg [3]),
        .I1(\throughput_on.q_div_rep_cnt_reg [0]),
        .I2(\throughput_on.q_div_rep_cnt_reg [1]),
        .I3(\throughput_on.q_div_rep_cnt_reg [2]),
        .O(p_0_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rep_cnt_reg[0] 
       (.C(i_div_a_clk_p),
        .CE(sel),
        .D(\throughput_on.q_div_rep_cnt[0]_i_1_n_0 ),
        .Q(\throughput_on.q_div_rep_cnt_reg [0]),
        .R(\w_dly_dvr_ena[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rep_cnt_reg[1] 
       (.C(i_div_a_clk_p),
        .CE(sel),
        .D(p_0_in__0[1]),
        .Q(\throughput_on.q_div_rep_cnt_reg [1]),
        .R(\w_dly_dvr_ena[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rep_cnt_reg[2] 
       (.C(i_div_a_clk_p),
        .CE(sel),
        .D(p_0_in__0[2]),
        .Q(\throughput_on.q_div_rep_cnt_reg [2]),
        .R(\w_dly_dvr_ena[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \throughput_on.q_div_rep_cnt_reg[3] 
       (.C(i_div_a_clk_p),
        .CE(sel),
        .D(p_0_in__0[3]),
        .Q(\throughput_on.q_div_rep_cnt_reg [3]),
        .R(\w_dly_dvr_ena[0] ));
  (* DELAY = "18" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b1" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL_REG" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized20__3 u_delay_sign
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(q_sgn_div_sgn),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(1'b0),
        .o_dly_a_value(NLW_u_delay_sign_o_dly_a_value_UNCONNECTED[0]));
  (* DELAY = "16" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* RESET = "1'b1" *) 
  (* SHREG = "Yes" *) 
  (* STYLE = "SRL" *) 
  (* WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized19__3 u_delay_valid
       (.i_dly_a_clk_p(i_div_a_clk_p),
        .i_dly_a_value(q_div_dat_vld),
        .i_dly_s_ena_p(1'b1),
        .i_dly_s_rst_p(q_div_s_rst_p),
        .o_dly_a_value(m_div_res_vld));
endmodule

(* DELAY = "16" *) (* RESET = "1'b0" *) (* SHREG = "Yes" *) 
(* STYLE = "SRL_REG" *) (* WIDTH = "1" *) (* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire \many.no_reset.q_dly_a_value_reg[14][0]_srl15_n_0 ;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[3].AVG/DIVIDER /\delay_dividend[1].u_delay_dividend /\many.no_reset.q_dly_a_value_reg[14] " *) 
  (* srl_name = "\inst/block[3].AVG/DIVIDER /\delay_dividend[1].u_delay_dividend /\many.no_reset.q_dly_a_value_reg[14][0]_srl15 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[14][0]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(\many.no_reset.q_dly_a_value_reg[14][0]_srl15_n_0 ));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \many.no_reset.q_dly_a_value_reg[15][0] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(\many.no_reset.q_dly_a_value_reg[14][0]_srl15_n_0 ),
        .Q(o_dly_a_value),
        .R(1'b0));
endmodule

(* DELAY = "16" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL_REG" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__1
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire \many.no_reset.q_dly_a_value_reg[14][0]_srl15_n_0 ;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[0].AVG/DIVIDER /\delay_dividend[1].u_delay_dividend /\many.no_reset.q_dly_a_value_reg[14] " *) 
  (* srl_name = "\inst/block[0].AVG/DIVIDER /\delay_dividend[1].u_delay_dividend /\many.no_reset.q_dly_a_value_reg[14][0]_srl15 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[14][0]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(\many.no_reset.q_dly_a_value_reg[14][0]_srl15_n_0 ));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \many.no_reset.q_dly_a_value_reg[15][0] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(\many.no_reset.q_dly_a_value_reg[14][0]_srl15_n_0 ),
        .Q(o_dly_a_value),
        .R(1'b0));
endmodule

(* DELAY = "16" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL_REG" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__2
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire \many.no_reset.q_dly_a_value_reg[14][0]_srl15_n_0 ;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[1].AVG/DIVIDER /\delay_dividend[1].u_delay_dividend /\many.no_reset.q_dly_a_value_reg[14] " *) 
  (* srl_name = "\inst/block[1].AVG/DIVIDER /\delay_dividend[1].u_delay_dividend /\many.no_reset.q_dly_a_value_reg[14][0]_srl15 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[14][0]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(\many.no_reset.q_dly_a_value_reg[14][0]_srl15_n_0 ));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \many.no_reset.q_dly_a_value_reg[15][0] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(\many.no_reset.q_dly_a_value_reg[14][0]_srl15_n_0 ),
        .Q(o_dly_a_value),
        .R(1'b0));
endmodule

(* DELAY = "16" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL_REG" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__3
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire \many.no_reset.q_dly_a_value_reg[14][0]_srl15_n_0 ;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[2].AVG/DIVIDER /\delay_dividend[1].u_delay_dividend /\many.no_reset.q_dly_a_value_reg[14] " *) 
  (* srl_name = "\inst/block[2].AVG/DIVIDER /\delay_dividend[1].u_delay_dividend /\many.no_reset.q_dly_a_value_reg[14][0]_srl15 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[14][0]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(\many.no_reset.q_dly_a_value_reg[14][0]_srl15_n_0 ));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \many.no_reset.q_dly_a_value_reg[15][0] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(\many.no_reset.q_dly_a_value_reg[14][0]_srl15_n_0 ),
        .Q(o_dly_a_value),
        .R(1'b0));
endmodule

(* DELAY = "16" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL_REG" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__4
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire \many.no_reset.q_dly_a_value_reg[14][0]_srl15_n_0 ;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[3].AVG/DIVIDER /\throughput_on.delay_enable[1].u_delay_valid /\many.no_reset.q_dly_a_value_reg[14] " *) 
  (* srl_name = "\inst/block[3].AVG/DIVIDER /\throughput_on.delay_enable[1].u_delay_valid /\many.no_reset.q_dly_a_value_reg[14][0]_srl15 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[14][0]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(\many.no_reset.q_dly_a_value_reg[14][0]_srl15_n_0 ));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \many.no_reset.q_dly_a_value_reg[15][0] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(\many.no_reset.q_dly_a_value_reg[14][0]_srl15_n_0 ),
        .Q(o_dly_a_value),
        .R(1'b0));
endmodule

(* DELAY = "16" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL_REG" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__5
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire \many.no_reset.q_dly_a_value_reg[14][0]_srl15_n_0 ;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[2].AVG/DIVIDER /\throughput_on.delay_enable[1].u_delay_valid /\many.no_reset.q_dly_a_value_reg[14] " *) 
  (* srl_name = "\inst/block[2].AVG/DIVIDER /\throughput_on.delay_enable[1].u_delay_valid /\many.no_reset.q_dly_a_value_reg[14][0]_srl15 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[14][0]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(\many.no_reset.q_dly_a_value_reg[14][0]_srl15_n_0 ));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \many.no_reset.q_dly_a_value_reg[15][0] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(\many.no_reset.q_dly_a_value_reg[14][0]_srl15_n_0 ),
        .Q(o_dly_a_value),
        .R(1'b0));
endmodule

(* DELAY = "16" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL_REG" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__6
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire \many.no_reset.q_dly_a_value_reg[14][0]_srl15_n_0 ;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[1].AVG/DIVIDER /\throughput_on.delay_enable[1].u_delay_valid /\many.no_reset.q_dly_a_value_reg[14] " *) 
  (* srl_name = "\inst/block[1].AVG/DIVIDER /\throughput_on.delay_enable[1].u_delay_valid /\many.no_reset.q_dly_a_value_reg[14][0]_srl15 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[14][0]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(\many.no_reset.q_dly_a_value_reg[14][0]_srl15_n_0 ));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \many.no_reset.q_dly_a_value_reg[15][0] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(\many.no_reset.q_dly_a_value_reg[14][0]_srl15_n_0 ),
        .Q(o_dly_a_value),
        .R(1'b0));
endmodule

(* DELAY = "16" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL_REG" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__7
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire \many.no_reset.q_dly_a_value_reg[14][0]_srl15_n_0 ;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[0].AVG/DIVIDER /\throughput_on.delay_enable[1].u_delay_valid /\many.no_reset.q_dly_a_value_reg[14] " *) 
  (* srl_name = "\inst/block[0].AVG/DIVIDER /\throughput_on.delay_enable[1].u_delay_valid /\many.no_reset.q_dly_a_value_reg[14][0]_srl15 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[14][0]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(\many.no_reset.q_dly_a_value_reg[14][0]_srl15_n_0 ));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \many.no_reset.q_dly_a_value_reg[15][0] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(\many.no_reset.q_dly_a_value_reg[14][0]_srl15_n_0 ),
        .Q(o_dly_a_value),
        .R(1'b0));
endmodule

(* DELAY = "0" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL_REG" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized0
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire [0:0]i_dly_a_value;

  assign o_dly_a_value[0] = i_dly_a_value;
endmodule

(* DELAY = "0" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL_REG" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized0__1
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire [0:0]i_dly_a_value;

  assign o_dly_a_value[0] = i_dly_a_value;
endmodule

(* DELAY = "0" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL_REG" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized0__2
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire [0:0]i_dly_a_value;

  assign o_dly_a_value[0] = i_dly_a_value;
endmodule

(* DELAY = "0" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL_REG" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized0__3
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire [0:0]i_dly_a_value;

  assign o_dly_a_value[0] = i_dly_a_value;
endmodule

(* DELAY = "1" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "No" *) (* STYLE = "Register" *) (* WIDTH = "16" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized1
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [15:0]i_dly_a_value;
  output [15:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [15:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [15:0]o_dly_a_value;

  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][0] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[0]),
        .Q(o_dly_a_value[0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][10] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[10]),
        .Q(o_dly_a_value[10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][11] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[11]),
        .Q(o_dly_a_value[11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][12] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[12]),
        .Q(o_dly_a_value[12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][13] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[13]),
        .Q(o_dly_a_value[13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][14] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[14]),
        .Q(o_dly_a_value[14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][15] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[15]),
        .Q(o_dly_a_value[15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][1] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[1]),
        .Q(o_dly_a_value[1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][2] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[2]),
        .Q(o_dly_a_value[2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][3] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[3]),
        .Q(o_dly_a_value[3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][4] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[4]),
        .Q(o_dly_a_value[4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][5] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[5]),
        .Q(o_dly_a_value[5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][6] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[6]),
        .Q(o_dly_a_value[6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][7] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[7]),
        .Q(o_dly_a_value[7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][8] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[8]),
        .Q(o_dly_a_value[8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][9] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[9]),
        .Q(o_dly_a_value[9]),
        .R(1'b0));
endmodule

(* DELAY = "8" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized10
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[8].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[7] " *) 
  (* srl_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[8].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[7][0]_srl8 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[7][0]_srl8 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "8" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized10__1
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[8].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[7] " *) 
  (* srl_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[8].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[7][0]_srl8 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[7][0]_srl8 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "8" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized10__2
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[8].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[7] " *) 
  (* srl_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[8].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[7][0]_srl8 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[7][0]_srl8 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "8" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized10__3
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[8].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[7] " *) 
  (* srl_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[8].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[7][0]_srl8 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[7][0]_srl8 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "7" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized11
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[9].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[6] " *) 
  (* srl_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[9].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[6][0]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[6][0]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "7" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized11__1
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[9].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[6] " *) 
  (* srl_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[9].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[6][0]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[6][0]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "7" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized11__2
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[9].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[6] " *) 
  (* srl_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[9].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[6][0]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[6][0]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "7" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized11__3
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[9].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[6] " *) 
  (* srl_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[9].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[6][0]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[6][0]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "6" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized12
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[10].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[5] " *) 
  (* srl_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[10].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[5][0]_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[5][0]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "6" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized12__1
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[10].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[5] " *) 
  (* srl_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[10].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[5][0]_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[5][0]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "6" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized12__2
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[10].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[5] " *) 
  (* srl_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[10].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[5][0]_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[5][0]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "6" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized12__3
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[10].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[5] " *) 
  (* srl_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[10].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[5][0]_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[5][0]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "5" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized13
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[11].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[4] " *) 
  (* srl_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[11].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[4][0]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[4][0]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "5" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized13__1
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[11].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[4] " *) 
  (* srl_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[11].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[4][0]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[4][0]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "5" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized13__2
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[11].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[4] " *) 
  (* srl_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[11].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[4][0]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[4][0]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "5" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized13__3
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[11].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[4] " *) 
  (* srl_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[11].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[4][0]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[4][0]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "4" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized14
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[12].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[3] " *) 
  (* srl_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[12].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[3][0]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[3][0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "4" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized14__1
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[12].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[3] " *) 
  (* srl_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[12].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[3][0]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[3][0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "4" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized14__2
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[12].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[3] " *) 
  (* srl_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[12].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[3][0]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[3][0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "4" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized14__3
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[12].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[3] " *) 
  (* srl_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[12].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[3][0]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[3][0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "3" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized15
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[13].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[2] " *) 
  (* srl_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[13].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[2][0]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[2][0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "3" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized15__1
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[13].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[2] " *) 
  (* srl_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[13].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[2][0]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[2][0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "3" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized15__2
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[13].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[2] " *) 
  (* srl_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[13].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[2][0]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[2][0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "3" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized15__3
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[13].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[2] " *) 
  (* srl_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[13].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[2][0]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[2][0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "2" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized16
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[14].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[1] " *) 
  (* srl_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[14].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[1][0]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[1][0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "2" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized16__1
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[14].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[1] " *) 
  (* srl_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[14].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[1][0]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[1][0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "2" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized16__2
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[14].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[1] " *) 
  (* srl_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[14].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[1][0]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[1][0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "2" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized16__3
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[14].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[1] " *) 
  (* srl_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[14].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[1][0]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[1][0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "1" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "Register" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized17
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;
  wire \ones.no_reset.q_dly_a_value[0][0]_i_1_n_0 ;

  LUT3 #(
    .INIT(8'hB8)) 
    \ones.no_reset.q_dly_a_value[0][0]_i_1 
       (.I0(i_dly_a_value),
        .I1(i_dly_s_ena_p),
        .I2(o_dly_a_value),
        .O(\ones.no_reset.q_dly_a_value[0][0]_i_1_n_0 ));
  (* SHREG_EXTRACT = "yes" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][0] 
       (.C(i_dly_a_clk_p),
        .CE(1'b1),
        .D(\ones.no_reset.q_dly_a_value[0][0]_i_1_n_0 ),
        .Q(o_dly_a_value),
        .R(1'b0));
endmodule

(* DELAY = "1" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "Register" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized17__1
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;
  wire \ones.no_reset.q_dly_a_value[0][0]_i_1_n_0 ;

  LUT3 #(
    .INIT(8'hB8)) 
    \ones.no_reset.q_dly_a_value[0][0]_i_1 
       (.I0(i_dly_a_value),
        .I1(i_dly_s_ena_p),
        .I2(o_dly_a_value),
        .O(\ones.no_reset.q_dly_a_value[0][0]_i_1_n_0 ));
  (* SHREG_EXTRACT = "yes" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][0] 
       (.C(i_dly_a_clk_p),
        .CE(1'b1),
        .D(\ones.no_reset.q_dly_a_value[0][0]_i_1_n_0 ),
        .Q(o_dly_a_value),
        .R(1'b0));
endmodule

(* DELAY = "1" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "Register" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized17__2
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;
  wire \ones.no_reset.q_dly_a_value[0][0]_i_1_n_0 ;

  LUT3 #(
    .INIT(8'hB8)) 
    \ones.no_reset.q_dly_a_value[0][0]_i_1 
       (.I0(i_dly_a_value),
        .I1(i_dly_s_ena_p),
        .I2(o_dly_a_value),
        .O(\ones.no_reset.q_dly_a_value[0][0]_i_1_n_0 ));
  (* SHREG_EXTRACT = "yes" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][0] 
       (.C(i_dly_a_clk_p),
        .CE(1'b1),
        .D(\ones.no_reset.q_dly_a_value[0][0]_i_1_n_0 ),
        .Q(o_dly_a_value),
        .R(1'b0));
endmodule

(* DELAY = "1" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "Register" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized17__3
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;
  wire \ones.no_reset.q_dly_a_value[0][0]_i_1_n_0 ;

  LUT3 #(
    .INIT(8'hB8)) 
    \ones.no_reset.q_dly_a_value[0][0]_i_1 
       (.I0(i_dly_a_value),
        .I1(i_dly_s_ena_p),
        .I2(o_dly_a_value),
        .O(\ones.no_reset.q_dly_a_value[0][0]_i_1_n_0 ));
  (* SHREG_EXTRACT = "yes" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][0] 
       (.C(i_dly_a_clk_p),
        .CE(1'b1),
        .D(\ones.no_reset.q_dly_a_value[0][0]_i_1_n_0 ),
        .Q(o_dly_a_value),
        .R(1'b0));
endmodule

(* DELAY = "0" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized18
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire [0:0]i_dly_a_value;

  assign o_dly_a_value[0] = i_dly_a_value;
endmodule

(* DELAY = "0" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized18__1
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire [0:0]i_dly_a_value;

  assign o_dly_a_value[0] = i_dly_a_value;
endmodule

(* DELAY = "0" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized18__2
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire [0:0]i_dly_a_value;

  assign o_dly_a_value[0] = i_dly_a_value;
endmodule

(* DELAY = "0" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized18__3
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire [0:0]i_dly_a_value;

  assign o_dly_a_value[0] = i_dly_a_value;
endmodule

(* DELAY = "16" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b1" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized19
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire i_dly_s_rst_p;
  wire \many.reset_on.q_dly_a_value_reg[15][0]_srl16_n_0 ;
  wire [0:0]\many.reset_on.q_dly_counter0 ;
  wire \many.reset_on.q_dly_counter[1]_i_1_n_0 ;
  wire \many.reset_on.q_dly_counter[2]_i_1_n_0 ;
  wire \many.reset_on.q_dly_counter[3]_i_1_n_0 ;
  wire \many.reset_on.q_dly_counter[4]_i_1_n_0 ;
  wire \many.reset_on.q_dly_counter[4]_i_2_n_0 ;
  wire [4:0]\many.reset_on.q_dly_counter_reg ;
  wire \many.reset_on.q_dly_s_rst_p ;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[3].AVG/DIVIDER /u_delay_valid/\many.reset_on.q_dly_a_value_reg[15] " *) 
  (* srl_name = "\inst/block[3].AVG/DIVIDER /u_delay_valid/\many.reset_on.q_dly_a_value_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.reset_on.q_dly_a_value_reg[15][0]_srl16 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(\many.reset_on.q_dly_a_value_reg[15][0]_srl16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \many.reset_on.q_dly_counter[0]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [0]),
        .O(\many.reset_on.q_dly_counter0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \many.reset_on.q_dly_counter[1]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [0]),
        .I1(\many.reset_on.q_dly_counter_reg [1]),
        .O(\many.reset_on.q_dly_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \many.reset_on.q_dly_counter[2]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [1]),
        .I1(\many.reset_on.q_dly_counter_reg [0]),
        .I2(\many.reset_on.q_dly_counter_reg [2]),
        .O(\many.reset_on.q_dly_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \many.reset_on.q_dly_counter[3]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [2]),
        .I1(\many.reset_on.q_dly_counter_reg [0]),
        .I2(\many.reset_on.q_dly_counter_reg [1]),
        .I3(\many.reset_on.q_dly_counter_reg [3]),
        .O(\many.reset_on.q_dly_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \many.reset_on.q_dly_counter[4]_i_1 
       (.I0(i_dly_s_ena_p),
        .I1(\many.reset_on.q_dly_counter_reg [2]),
        .I2(\many.reset_on.q_dly_counter_reg [4]),
        .I3(\many.reset_on.q_dly_counter_reg [0]),
        .I4(\many.reset_on.q_dly_counter_reg [1]),
        .I5(\many.reset_on.q_dly_counter_reg [3]),
        .O(\many.reset_on.q_dly_counter[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \many.reset_on.q_dly_counter[4]_i_2 
       (.I0(\many.reset_on.q_dly_counter_reg [3]),
        .I1(\many.reset_on.q_dly_counter_reg [1]),
        .I2(\many.reset_on.q_dly_counter_reg [0]),
        .I3(\many.reset_on.q_dly_counter_reg [2]),
        .I4(\many.reset_on.q_dly_counter_reg [4]),
        .O(\many.reset_on.q_dly_counter[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[0] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[4]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 ),
        .Q(\many.reset_on.q_dly_counter_reg [0]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[1] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[4]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter[1]_i_1_n_0 ),
        .Q(\many.reset_on.q_dly_counter_reg [1]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[2] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[4]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter[2]_i_1_n_0 ),
        .Q(\many.reset_on.q_dly_counter_reg [2]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[3] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[4]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter[3]_i_1_n_0 ),
        .Q(\many.reset_on.q_dly_counter_reg [3]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDSE #(
    .INIT(1'b1)) 
    \many.reset_on.q_dly_counter_reg[4] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[4]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter[4]_i_2_n_0 ),
        .Q(\many.reset_on.q_dly_counter_reg [4]),
        .S(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_s_rst_p_reg 
       (.C(i_dly_a_clk_p),
        .CE(1'b1),
        .D(i_dly_s_rst_p),
        .Q(\many.reset_on.q_dly_s_rst_p ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \o_dly_a_value[0]_INST_0 
       (.I0(\many.reset_on.q_dly_counter_reg [0]),
        .I1(\many.reset_on.q_dly_counter_reg [4]),
        .I2(\many.reset_on.q_dly_counter_reg [1]),
        .I3(\many.reset_on.q_dly_a_value_reg[15][0]_srl16_n_0 ),
        .I4(\many.reset_on.q_dly_counter_reg [3]),
        .I5(\many.reset_on.q_dly_counter_reg [2]),
        .O(o_dly_a_value));
endmodule

(* DELAY = "16" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b1" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized19__1
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire i_dly_s_rst_p;
  wire \many.reset_on.q_dly_a_value_reg[15][0]_srl16_n_0 ;
  wire [0:0]\many.reset_on.q_dly_counter0 ;
  wire \many.reset_on.q_dly_counter[1]_i_1_n_0 ;
  wire \many.reset_on.q_dly_counter[2]_i_1_n_0 ;
  wire \many.reset_on.q_dly_counter[3]_i_1_n_0 ;
  wire \many.reset_on.q_dly_counter[4]_i_1_n_0 ;
  wire \many.reset_on.q_dly_counter[4]_i_2_n_0 ;
  wire [4:0]\many.reset_on.q_dly_counter_reg ;
  wire \many.reset_on.q_dly_s_rst_p ;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[0].AVG/DIVIDER /u_delay_valid/\many.reset_on.q_dly_a_value_reg[15] " *) 
  (* srl_name = "\inst/block[0].AVG/DIVIDER /u_delay_valid/\many.reset_on.q_dly_a_value_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.reset_on.q_dly_a_value_reg[15][0]_srl16 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(\many.reset_on.q_dly_a_value_reg[15][0]_srl16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \many.reset_on.q_dly_counter[0]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [0]),
        .O(\many.reset_on.q_dly_counter0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \many.reset_on.q_dly_counter[1]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [0]),
        .I1(\many.reset_on.q_dly_counter_reg [1]),
        .O(\many.reset_on.q_dly_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \many.reset_on.q_dly_counter[2]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [1]),
        .I1(\many.reset_on.q_dly_counter_reg [0]),
        .I2(\many.reset_on.q_dly_counter_reg [2]),
        .O(\many.reset_on.q_dly_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \many.reset_on.q_dly_counter[3]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [2]),
        .I1(\many.reset_on.q_dly_counter_reg [0]),
        .I2(\many.reset_on.q_dly_counter_reg [1]),
        .I3(\many.reset_on.q_dly_counter_reg [3]),
        .O(\many.reset_on.q_dly_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \many.reset_on.q_dly_counter[4]_i_1 
       (.I0(i_dly_s_ena_p),
        .I1(\many.reset_on.q_dly_counter_reg [2]),
        .I2(\many.reset_on.q_dly_counter_reg [4]),
        .I3(\many.reset_on.q_dly_counter_reg [0]),
        .I4(\many.reset_on.q_dly_counter_reg [1]),
        .I5(\many.reset_on.q_dly_counter_reg [3]),
        .O(\many.reset_on.q_dly_counter[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \many.reset_on.q_dly_counter[4]_i_2 
       (.I0(\many.reset_on.q_dly_counter_reg [3]),
        .I1(\many.reset_on.q_dly_counter_reg [1]),
        .I2(\many.reset_on.q_dly_counter_reg [0]),
        .I3(\many.reset_on.q_dly_counter_reg [2]),
        .I4(\many.reset_on.q_dly_counter_reg [4]),
        .O(\many.reset_on.q_dly_counter[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[0] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[4]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 ),
        .Q(\many.reset_on.q_dly_counter_reg [0]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[1] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[4]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter[1]_i_1_n_0 ),
        .Q(\many.reset_on.q_dly_counter_reg [1]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[2] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[4]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter[2]_i_1_n_0 ),
        .Q(\many.reset_on.q_dly_counter_reg [2]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[3] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[4]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter[3]_i_1_n_0 ),
        .Q(\many.reset_on.q_dly_counter_reg [3]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDSE #(
    .INIT(1'b1)) 
    \many.reset_on.q_dly_counter_reg[4] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[4]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter[4]_i_2_n_0 ),
        .Q(\many.reset_on.q_dly_counter_reg [4]),
        .S(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_s_rst_p_reg 
       (.C(i_dly_a_clk_p),
        .CE(1'b1),
        .D(i_dly_s_rst_p),
        .Q(\many.reset_on.q_dly_s_rst_p ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \o_dly_a_value[0]_INST_0 
       (.I0(\many.reset_on.q_dly_counter_reg [0]),
        .I1(\many.reset_on.q_dly_counter_reg [4]),
        .I2(\many.reset_on.q_dly_counter_reg [1]),
        .I3(\many.reset_on.q_dly_a_value_reg[15][0]_srl16_n_0 ),
        .I4(\many.reset_on.q_dly_counter_reg [3]),
        .I5(\many.reset_on.q_dly_counter_reg [2]),
        .O(o_dly_a_value));
endmodule

(* DELAY = "16" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b1" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized19__2
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire i_dly_s_rst_p;
  wire \many.reset_on.q_dly_a_value_reg[15][0]_srl16_n_0 ;
  wire [0:0]\many.reset_on.q_dly_counter0 ;
  wire \many.reset_on.q_dly_counter[1]_i_1_n_0 ;
  wire \many.reset_on.q_dly_counter[2]_i_1_n_0 ;
  wire \many.reset_on.q_dly_counter[3]_i_1_n_0 ;
  wire \many.reset_on.q_dly_counter[4]_i_1_n_0 ;
  wire \many.reset_on.q_dly_counter[4]_i_2_n_0 ;
  wire [4:0]\many.reset_on.q_dly_counter_reg ;
  wire \many.reset_on.q_dly_s_rst_p ;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[1].AVG/DIVIDER /u_delay_valid/\many.reset_on.q_dly_a_value_reg[15] " *) 
  (* srl_name = "\inst/block[1].AVG/DIVIDER /u_delay_valid/\many.reset_on.q_dly_a_value_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.reset_on.q_dly_a_value_reg[15][0]_srl16 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(\many.reset_on.q_dly_a_value_reg[15][0]_srl16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \many.reset_on.q_dly_counter[0]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [0]),
        .O(\many.reset_on.q_dly_counter0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \many.reset_on.q_dly_counter[1]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [0]),
        .I1(\many.reset_on.q_dly_counter_reg [1]),
        .O(\many.reset_on.q_dly_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \many.reset_on.q_dly_counter[2]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [1]),
        .I1(\many.reset_on.q_dly_counter_reg [0]),
        .I2(\many.reset_on.q_dly_counter_reg [2]),
        .O(\many.reset_on.q_dly_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \many.reset_on.q_dly_counter[3]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [2]),
        .I1(\many.reset_on.q_dly_counter_reg [0]),
        .I2(\many.reset_on.q_dly_counter_reg [1]),
        .I3(\many.reset_on.q_dly_counter_reg [3]),
        .O(\many.reset_on.q_dly_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \many.reset_on.q_dly_counter[4]_i_1 
       (.I0(i_dly_s_ena_p),
        .I1(\many.reset_on.q_dly_counter_reg [2]),
        .I2(\many.reset_on.q_dly_counter_reg [4]),
        .I3(\many.reset_on.q_dly_counter_reg [0]),
        .I4(\many.reset_on.q_dly_counter_reg [1]),
        .I5(\many.reset_on.q_dly_counter_reg [3]),
        .O(\many.reset_on.q_dly_counter[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \many.reset_on.q_dly_counter[4]_i_2 
       (.I0(\many.reset_on.q_dly_counter_reg [3]),
        .I1(\many.reset_on.q_dly_counter_reg [1]),
        .I2(\many.reset_on.q_dly_counter_reg [0]),
        .I3(\many.reset_on.q_dly_counter_reg [2]),
        .I4(\many.reset_on.q_dly_counter_reg [4]),
        .O(\many.reset_on.q_dly_counter[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[0] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[4]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 ),
        .Q(\many.reset_on.q_dly_counter_reg [0]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[1] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[4]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter[1]_i_1_n_0 ),
        .Q(\many.reset_on.q_dly_counter_reg [1]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[2] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[4]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter[2]_i_1_n_0 ),
        .Q(\many.reset_on.q_dly_counter_reg [2]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[3] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[4]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter[3]_i_1_n_0 ),
        .Q(\many.reset_on.q_dly_counter_reg [3]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDSE #(
    .INIT(1'b1)) 
    \many.reset_on.q_dly_counter_reg[4] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[4]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter[4]_i_2_n_0 ),
        .Q(\many.reset_on.q_dly_counter_reg [4]),
        .S(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_s_rst_p_reg 
       (.C(i_dly_a_clk_p),
        .CE(1'b1),
        .D(i_dly_s_rst_p),
        .Q(\many.reset_on.q_dly_s_rst_p ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \o_dly_a_value[0]_INST_0 
       (.I0(\many.reset_on.q_dly_counter_reg [0]),
        .I1(\many.reset_on.q_dly_counter_reg [4]),
        .I2(\many.reset_on.q_dly_counter_reg [1]),
        .I3(\many.reset_on.q_dly_a_value_reg[15][0]_srl16_n_0 ),
        .I4(\many.reset_on.q_dly_counter_reg [3]),
        .I5(\many.reset_on.q_dly_counter_reg [2]),
        .O(o_dly_a_value));
endmodule

(* DELAY = "16" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b1" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized19__3
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire i_dly_s_rst_p;
  wire \many.reset_on.q_dly_a_value_reg[15][0]_srl16_n_0 ;
  wire [0:0]\many.reset_on.q_dly_counter0 ;
  wire \many.reset_on.q_dly_counter[1]_i_1_n_0 ;
  wire \many.reset_on.q_dly_counter[2]_i_1_n_0 ;
  wire \many.reset_on.q_dly_counter[3]_i_1_n_0 ;
  wire \many.reset_on.q_dly_counter[4]_i_1_n_0 ;
  wire \many.reset_on.q_dly_counter[4]_i_2_n_0 ;
  wire [4:0]\many.reset_on.q_dly_counter_reg ;
  wire \many.reset_on.q_dly_s_rst_p ;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[2].AVG/DIVIDER /u_delay_valid/\many.reset_on.q_dly_a_value_reg[15] " *) 
  (* srl_name = "\inst/block[2].AVG/DIVIDER /u_delay_valid/\many.reset_on.q_dly_a_value_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.reset_on.q_dly_a_value_reg[15][0]_srl16 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(\many.reset_on.q_dly_a_value_reg[15][0]_srl16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \many.reset_on.q_dly_counter[0]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [0]),
        .O(\many.reset_on.q_dly_counter0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \many.reset_on.q_dly_counter[1]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [0]),
        .I1(\many.reset_on.q_dly_counter_reg [1]),
        .O(\many.reset_on.q_dly_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \many.reset_on.q_dly_counter[2]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [1]),
        .I1(\many.reset_on.q_dly_counter_reg [0]),
        .I2(\many.reset_on.q_dly_counter_reg [2]),
        .O(\many.reset_on.q_dly_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \many.reset_on.q_dly_counter[3]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [2]),
        .I1(\many.reset_on.q_dly_counter_reg [0]),
        .I2(\many.reset_on.q_dly_counter_reg [1]),
        .I3(\many.reset_on.q_dly_counter_reg [3]),
        .O(\many.reset_on.q_dly_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \many.reset_on.q_dly_counter[4]_i_1 
       (.I0(i_dly_s_ena_p),
        .I1(\many.reset_on.q_dly_counter_reg [2]),
        .I2(\many.reset_on.q_dly_counter_reg [4]),
        .I3(\many.reset_on.q_dly_counter_reg [0]),
        .I4(\many.reset_on.q_dly_counter_reg [1]),
        .I5(\many.reset_on.q_dly_counter_reg [3]),
        .O(\many.reset_on.q_dly_counter[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \many.reset_on.q_dly_counter[4]_i_2 
       (.I0(\many.reset_on.q_dly_counter_reg [3]),
        .I1(\many.reset_on.q_dly_counter_reg [1]),
        .I2(\many.reset_on.q_dly_counter_reg [0]),
        .I3(\many.reset_on.q_dly_counter_reg [2]),
        .I4(\many.reset_on.q_dly_counter_reg [4]),
        .O(\many.reset_on.q_dly_counter[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[0] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[4]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 ),
        .Q(\many.reset_on.q_dly_counter_reg [0]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[1] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[4]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter[1]_i_1_n_0 ),
        .Q(\many.reset_on.q_dly_counter_reg [1]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[2] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[4]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter[2]_i_1_n_0 ),
        .Q(\many.reset_on.q_dly_counter_reg [2]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[3] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[4]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter[3]_i_1_n_0 ),
        .Q(\many.reset_on.q_dly_counter_reg [3]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDSE #(
    .INIT(1'b1)) 
    \many.reset_on.q_dly_counter_reg[4] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[4]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter[4]_i_2_n_0 ),
        .Q(\many.reset_on.q_dly_counter_reg [4]),
        .S(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_s_rst_p_reg 
       (.C(i_dly_a_clk_p),
        .CE(1'b1),
        .D(i_dly_s_rst_p),
        .Q(\many.reset_on.q_dly_s_rst_p ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \o_dly_a_value[0]_INST_0 
       (.I0(\many.reset_on.q_dly_counter_reg [0]),
        .I1(\many.reset_on.q_dly_counter_reg [4]),
        .I2(\many.reset_on.q_dly_counter_reg [1]),
        .I3(\many.reset_on.q_dly_a_value_reg[15][0]_srl16_n_0 ),
        .I4(\many.reset_on.q_dly_counter_reg [3]),
        .I5(\many.reset_on.q_dly_counter_reg [2]),
        .O(o_dly_a_value));
endmodule

(* DELAY = "1" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "No" *) (* STYLE = "Register" *) (* WIDTH = "16" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized1__1
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [15:0]i_dly_a_value;
  output [15:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [15:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [15:0]o_dly_a_value;

  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][0] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[0]),
        .Q(o_dly_a_value[0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][10] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[10]),
        .Q(o_dly_a_value[10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][11] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[11]),
        .Q(o_dly_a_value[11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][12] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[12]),
        .Q(o_dly_a_value[12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][13] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[13]),
        .Q(o_dly_a_value[13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][14] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[14]),
        .Q(o_dly_a_value[14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][15] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[15]),
        .Q(o_dly_a_value[15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][1] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[1]),
        .Q(o_dly_a_value[1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][2] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[2]),
        .Q(o_dly_a_value[2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][3] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[3]),
        .Q(o_dly_a_value[3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][4] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[4]),
        .Q(o_dly_a_value[4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][5] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[5]),
        .Q(o_dly_a_value[5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][6] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[6]),
        .Q(o_dly_a_value[6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][7] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[7]),
        .Q(o_dly_a_value[7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][8] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[8]),
        .Q(o_dly_a_value[8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][9] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[9]),
        .Q(o_dly_a_value[9]),
        .R(1'b0));
endmodule

(* DELAY = "1" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "No" *) (* STYLE = "Register" *) (* WIDTH = "16" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized1__2
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [15:0]i_dly_a_value;
  output [15:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [15:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [15:0]o_dly_a_value;

  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][0] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[0]),
        .Q(o_dly_a_value[0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][10] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[10]),
        .Q(o_dly_a_value[10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][11] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[11]),
        .Q(o_dly_a_value[11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][12] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[12]),
        .Q(o_dly_a_value[12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][13] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[13]),
        .Q(o_dly_a_value[13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][14] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[14]),
        .Q(o_dly_a_value[14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][15] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[15]),
        .Q(o_dly_a_value[15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][1] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[1]),
        .Q(o_dly_a_value[1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][2] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[2]),
        .Q(o_dly_a_value[2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][3] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[3]),
        .Q(o_dly_a_value[3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][4] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[4]),
        .Q(o_dly_a_value[4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][5] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[5]),
        .Q(o_dly_a_value[5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][6] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[6]),
        .Q(o_dly_a_value[6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][7] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[7]),
        .Q(o_dly_a_value[7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][8] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[8]),
        .Q(o_dly_a_value[8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][9] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[9]),
        .Q(o_dly_a_value[9]),
        .R(1'b0));
endmodule

(* DELAY = "1" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "No" *) (* STYLE = "Register" *) (* WIDTH = "16" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized1__3
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [15:0]i_dly_a_value;
  output [15:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [15:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [15:0]o_dly_a_value;

  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][0] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[0]),
        .Q(o_dly_a_value[0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][10] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[10]),
        .Q(o_dly_a_value[10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][11] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[11]),
        .Q(o_dly_a_value[11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][12] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[12]),
        .Q(o_dly_a_value[12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][13] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[13]),
        .Q(o_dly_a_value[13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][14] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[14]),
        .Q(o_dly_a_value[14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][15] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[15]),
        .Q(o_dly_a_value[15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][1] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[1]),
        .Q(o_dly_a_value[1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][2] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[2]),
        .Q(o_dly_a_value[2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][3] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[3]),
        .Q(o_dly_a_value[3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][4] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[4]),
        .Q(o_dly_a_value[4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][5] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[5]),
        .Q(o_dly_a_value[5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][6] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[6]),
        .Q(o_dly_a_value[6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][7] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[7]),
        .Q(o_dly_a_value[7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][8] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[8]),
        .Q(o_dly_a_value[8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  (* SRL_STYLE = "register" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ones.no_reset.q_dly_a_value_reg[0][9] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(i_dly_a_value[9]),
        .Q(o_dly_a_value[9]),
        .R(1'b0));
endmodule

(* DELAY = "16" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized2
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[0].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[15] " *) 
  (* srl_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[0].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[15][0]_srl16 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "18" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b1" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL_REG" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized20
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire i_dly_s_rst_p;
  wire \many.reset_on.q_dly_a_value_reg[16][0]_srl17_n_0 ;
  wire \many.reset_on.q_dly_a_value_reg[17] ;
  wire [5:0]\many.reset_on.q_dly_counter0 ;
  wire \many.reset_on.q_dly_counter[5]_i_1_n_0 ;
  wire [5:0]\many.reset_on.q_dly_counter_reg ;
  wire \many.reset_on.q_dly_s_rst_p ;
  wire [0:0]o_dly_a_value;
  wire \o_dly_a_value[0]_INST_0_i_1_n_0 ;
  wire \NLW_many.reset_on.q_dly_a_value_reg[16][0]_srl17_Q31_UNCONNECTED ;

  (* srl_bus_name = "\inst/block[3].AVG/DIVIDER /u_delay_sign/\many.reset_on.q_dly_a_value_reg[16] " *) 
  (* srl_name = "\inst/block[3].AVG/DIVIDER /u_delay_sign/\many.reset_on.q_dly_a_value_reg[16][0]_srl17 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \many.reset_on.q_dly_a_value_reg[16][0]_srl17 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b0}),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(\many.reset_on.q_dly_a_value_reg[16][0]_srl17_n_0 ),
        .Q31(\NLW_many.reset_on.q_dly_a_value_reg[16][0]_srl17_Q31_UNCONNECTED ));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_a_value_reg[17][0] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(\many.reset_on.q_dly_a_value_reg[16][0]_srl17_n_0 ),
        .Q(\many.reset_on.q_dly_a_value_reg[17] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \many.reset_on.q_dly_counter[0]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [0]),
        .O(\many.reset_on.q_dly_counter0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \many.reset_on.q_dly_counter[1]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [1]),
        .I1(\many.reset_on.q_dly_counter_reg [0]),
        .O(\many.reset_on.q_dly_counter0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \many.reset_on.q_dly_counter[2]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [2]),
        .I1(\many.reset_on.q_dly_counter_reg [0]),
        .I2(\many.reset_on.q_dly_counter_reg [1]),
        .O(\many.reset_on.q_dly_counter0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \many.reset_on.q_dly_counter[3]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [3]),
        .I1(\many.reset_on.q_dly_counter_reg [1]),
        .I2(\many.reset_on.q_dly_counter_reg [0]),
        .I3(\many.reset_on.q_dly_counter_reg [2]),
        .O(\many.reset_on.q_dly_counter0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \many.reset_on.q_dly_counter[4]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [4]),
        .I1(\many.reset_on.q_dly_counter_reg [2]),
        .I2(\many.reset_on.q_dly_counter_reg [0]),
        .I3(\many.reset_on.q_dly_counter_reg [1]),
        .I4(\many.reset_on.q_dly_counter_reg [3]),
        .O(\many.reset_on.q_dly_counter0 [4]));
  LUT2 #(
    .INIT(4'h8)) 
    \many.reset_on.q_dly_counter[5]_i_1 
       (.I0(\o_dly_a_value[0]_INST_0_i_1_n_0 ),
        .I1(i_dly_s_ena_p),
        .O(\many.reset_on.q_dly_counter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \many.reset_on.q_dly_counter[5]_i_2 
       (.I0(\many.reset_on.q_dly_counter_reg [5]),
        .I1(\many.reset_on.q_dly_counter_reg [3]),
        .I2(\many.reset_on.q_dly_counter_reg [1]),
        .I3(\many.reset_on.q_dly_counter_reg [0]),
        .I4(\many.reset_on.q_dly_counter_reg [2]),
        .I5(\many.reset_on.q_dly_counter_reg [4]),
        .O(\many.reset_on.q_dly_counter0 [5]));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[0] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[5]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 [0]),
        .Q(\many.reset_on.q_dly_counter_reg [0]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDSE #(
    .INIT(1'b1)) 
    \many.reset_on.q_dly_counter_reg[1] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[5]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 [1]),
        .Q(\many.reset_on.q_dly_counter_reg [1]),
        .S(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[2] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[5]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 [2]),
        .Q(\many.reset_on.q_dly_counter_reg [2]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[3] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[5]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 [3]),
        .Q(\many.reset_on.q_dly_counter_reg [3]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDSE #(
    .INIT(1'b1)) 
    \many.reset_on.q_dly_counter_reg[4] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[5]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 [4]),
        .Q(\many.reset_on.q_dly_counter_reg [4]),
        .S(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[5] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[5]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 [5]),
        .Q(\many.reset_on.q_dly_counter_reg [5]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_s_rst_p_reg 
       (.C(i_dly_a_clk_p),
        .CE(1'b1),
        .D(i_dly_s_rst_p),
        .Q(\many.reset_on.q_dly_s_rst_p ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \o_dly_a_value[0]_INST_0 
       (.I0(\many.reset_on.q_dly_a_value_reg[17] ),
        .I1(\o_dly_a_value[0]_INST_0_i_1_n_0 ),
        .O(o_dly_a_value));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \o_dly_a_value[0]_INST_0_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [4]),
        .I1(\many.reset_on.q_dly_counter_reg [2]),
        .I2(\many.reset_on.q_dly_counter_reg [0]),
        .I3(\many.reset_on.q_dly_counter_reg [1]),
        .I4(\many.reset_on.q_dly_counter_reg [3]),
        .I5(\many.reset_on.q_dly_counter_reg [5]),
        .O(\o_dly_a_value[0]_INST_0_i_1_n_0 ));
endmodule

(* DELAY = "18" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b1" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL_REG" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized20__1
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire i_dly_s_rst_p;
  wire \many.reset_on.q_dly_a_value_reg[16][0]_srl17_n_0 ;
  wire \many.reset_on.q_dly_a_value_reg[17] ;
  wire [5:0]\many.reset_on.q_dly_counter0 ;
  wire \many.reset_on.q_dly_counter[5]_i_1_n_0 ;
  wire [5:0]\many.reset_on.q_dly_counter_reg ;
  wire \many.reset_on.q_dly_s_rst_p ;
  wire [0:0]o_dly_a_value;
  wire \o_dly_a_value[0]_INST_0_i_1_n_0 ;
  wire \NLW_many.reset_on.q_dly_a_value_reg[16][0]_srl17_Q31_UNCONNECTED ;

  (* srl_bus_name = "\inst/block[0].AVG/DIVIDER /u_delay_sign/\many.reset_on.q_dly_a_value_reg[16] " *) 
  (* srl_name = "\inst/block[0].AVG/DIVIDER /u_delay_sign/\many.reset_on.q_dly_a_value_reg[16][0]_srl17 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \many.reset_on.q_dly_a_value_reg[16][0]_srl17 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b0}),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(\many.reset_on.q_dly_a_value_reg[16][0]_srl17_n_0 ),
        .Q31(\NLW_many.reset_on.q_dly_a_value_reg[16][0]_srl17_Q31_UNCONNECTED ));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_a_value_reg[17][0] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(\many.reset_on.q_dly_a_value_reg[16][0]_srl17_n_0 ),
        .Q(\many.reset_on.q_dly_a_value_reg[17] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \many.reset_on.q_dly_counter[0]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [0]),
        .O(\many.reset_on.q_dly_counter0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \many.reset_on.q_dly_counter[1]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [1]),
        .I1(\many.reset_on.q_dly_counter_reg [0]),
        .O(\many.reset_on.q_dly_counter0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \many.reset_on.q_dly_counter[2]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [2]),
        .I1(\many.reset_on.q_dly_counter_reg [0]),
        .I2(\many.reset_on.q_dly_counter_reg [1]),
        .O(\many.reset_on.q_dly_counter0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \many.reset_on.q_dly_counter[3]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [3]),
        .I1(\many.reset_on.q_dly_counter_reg [1]),
        .I2(\many.reset_on.q_dly_counter_reg [0]),
        .I3(\many.reset_on.q_dly_counter_reg [2]),
        .O(\many.reset_on.q_dly_counter0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \many.reset_on.q_dly_counter[4]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [4]),
        .I1(\many.reset_on.q_dly_counter_reg [2]),
        .I2(\many.reset_on.q_dly_counter_reg [0]),
        .I3(\many.reset_on.q_dly_counter_reg [1]),
        .I4(\many.reset_on.q_dly_counter_reg [3]),
        .O(\many.reset_on.q_dly_counter0 [4]));
  LUT2 #(
    .INIT(4'h8)) 
    \many.reset_on.q_dly_counter[5]_i_1 
       (.I0(\o_dly_a_value[0]_INST_0_i_1_n_0 ),
        .I1(i_dly_s_ena_p),
        .O(\many.reset_on.q_dly_counter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \many.reset_on.q_dly_counter[5]_i_2 
       (.I0(\many.reset_on.q_dly_counter_reg [5]),
        .I1(\many.reset_on.q_dly_counter_reg [3]),
        .I2(\many.reset_on.q_dly_counter_reg [1]),
        .I3(\many.reset_on.q_dly_counter_reg [0]),
        .I4(\many.reset_on.q_dly_counter_reg [2]),
        .I5(\many.reset_on.q_dly_counter_reg [4]),
        .O(\many.reset_on.q_dly_counter0 [5]));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[0] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[5]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 [0]),
        .Q(\many.reset_on.q_dly_counter_reg [0]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDSE #(
    .INIT(1'b1)) 
    \many.reset_on.q_dly_counter_reg[1] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[5]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 [1]),
        .Q(\many.reset_on.q_dly_counter_reg [1]),
        .S(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[2] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[5]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 [2]),
        .Q(\many.reset_on.q_dly_counter_reg [2]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[3] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[5]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 [3]),
        .Q(\many.reset_on.q_dly_counter_reg [3]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDSE #(
    .INIT(1'b1)) 
    \many.reset_on.q_dly_counter_reg[4] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[5]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 [4]),
        .Q(\many.reset_on.q_dly_counter_reg [4]),
        .S(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[5] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[5]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 [5]),
        .Q(\many.reset_on.q_dly_counter_reg [5]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_s_rst_p_reg 
       (.C(i_dly_a_clk_p),
        .CE(1'b1),
        .D(i_dly_s_rst_p),
        .Q(\many.reset_on.q_dly_s_rst_p ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \o_dly_a_value[0]_INST_0 
       (.I0(\many.reset_on.q_dly_a_value_reg[17] ),
        .I1(\o_dly_a_value[0]_INST_0_i_1_n_0 ),
        .O(o_dly_a_value));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \o_dly_a_value[0]_INST_0_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [4]),
        .I1(\many.reset_on.q_dly_counter_reg [2]),
        .I2(\many.reset_on.q_dly_counter_reg [0]),
        .I3(\many.reset_on.q_dly_counter_reg [1]),
        .I4(\many.reset_on.q_dly_counter_reg [3]),
        .I5(\many.reset_on.q_dly_counter_reg [5]),
        .O(\o_dly_a_value[0]_INST_0_i_1_n_0 ));
endmodule

(* DELAY = "18" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b1" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL_REG" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized20__2
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire i_dly_s_rst_p;
  wire \many.reset_on.q_dly_a_value_reg[16][0]_srl17_n_0 ;
  wire \many.reset_on.q_dly_a_value_reg[17] ;
  wire [5:0]\many.reset_on.q_dly_counter0 ;
  wire \many.reset_on.q_dly_counter[5]_i_1_n_0 ;
  wire [5:0]\many.reset_on.q_dly_counter_reg ;
  wire \many.reset_on.q_dly_s_rst_p ;
  wire [0:0]o_dly_a_value;
  wire \o_dly_a_value[0]_INST_0_i_1_n_0 ;
  wire \NLW_many.reset_on.q_dly_a_value_reg[16][0]_srl17_Q31_UNCONNECTED ;

  (* srl_bus_name = "\inst/block[1].AVG/DIVIDER /u_delay_sign/\many.reset_on.q_dly_a_value_reg[16] " *) 
  (* srl_name = "\inst/block[1].AVG/DIVIDER /u_delay_sign/\many.reset_on.q_dly_a_value_reg[16][0]_srl17 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \many.reset_on.q_dly_a_value_reg[16][0]_srl17 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b0}),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(\many.reset_on.q_dly_a_value_reg[16][0]_srl17_n_0 ),
        .Q31(\NLW_many.reset_on.q_dly_a_value_reg[16][0]_srl17_Q31_UNCONNECTED ));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_a_value_reg[17][0] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(\many.reset_on.q_dly_a_value_reg[16][0]_srl17_n_0 ),
        .Q(\many.reset_on.q_dly_a_value_reg[17] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \many.reset_on.q_dly_counter[0]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [0]),
        .O(\many.reset_on.q_dly_counter0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \many.reset_on.q_dly_counter[1]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [1]),
        .I1(\many.reset_on.q_dly_counter_reg [0]),
        .O(\many.reset_on.q_dly_counter0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \many.reset_on.q_dly_counter[2]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [2]),
        .I1(\many.reset_on.q_dly_counter_reg [0]),
        .I2(\many.reset_on.q_dly_counter_reg [1]),
        .O(\many.reset_on.q_dly_counter0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \many.reset_on.q_dly_counter[3]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [3]),
        .I1(\many.reset_on.q_dly_counter_reg [1]),
        .I2(\many.reset_on.q_dly_counter_reg [0]),
        .I3(\many.reset_on.q_dly_counter_reg [2]),
        .O(\many.reset_on.q_dly_counter0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \many.reset_on.q_dly_counter[4]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [4]),
        .I1(\many.reset_on.q_dly_counter_reg [2]),
        .I2(\many.reset_on.q_dly_counter_reg [0]),
        .I3(\many.reset_on.q_dly_counter_reg [1]),
        .I4(\many.reset_on.q_dly_counter_reg [3]),
        .O(\many.reset_on.q_dly_counter0 [4]));
  LUT2 #(
    .INIT(4'h8)) 
    \many.reset_on.q_dly_counter[5]_i_1 
       (.I0(\o_dly_a_value[0]_INST_0_i_1_n_0 ),
        .I1(i_dly_s_ena_p),
        .O(\many.reset_on.q_dly_counter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \many.reset_on.q_dly_counter[5]_i_2 
       (.I0(\many.reset_on.q_dly_counter_reg [5]),
        .I1(\many.reset_on.q_dly_counter_reg [3]),
        .I2(\many.reset_on.q_dly_counter_reg [1]),
        .I3(\many.reset_on.q_dly_counter_reg [0]),
        .I4(\many.reset_on.q_dly_counter_reg [2]),
        .I5(\many.reset_on.q_dly_counter_reg [4]),
        .O(\many.reset_on.q_dly_counter0 [5]));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[0] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[5]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 [0]),
        .Q(\many.reset_on.q_dly_counter_reg [0]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDSE #(
    .INIT(1'b1)) 
    \many.reset_on.q_dly_counter_reg[1] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[5]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 [1]),
        .Q(\many.reset_on.q_dly_counter_reg [1]),
        .S(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[2] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[5]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 [2]),
        .Q(\many.reset_on.q_dly_counter_reg [2]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[3] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[5]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 [3]),
        .Q(\many.reset_on.q_dly_counter_reg [3]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDSE #(
    .INIT(1'b1)) 
    \many.reset_on.q_dly_counter_reg[4] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[5]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 [4]),
        .Q(\many.reset_on.q_dly_counter_reg [4]),
        .S(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[5] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[5]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 [5]),
        .Q(\many.reset_on.q_dly_counter_reg [5]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_s_rst_p_reg 
       (.C(i_dly_a_clk_p),
        .CE(1'b1),
        .D(i_dly_s_rst_p),
        .Q(\many.reset_on.q_dly_s_rst_p ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \o_dly_a_value[0]_INST_0 
       (.I0(\many.reset_on.q_dly_a_value_reg[17] ),
        .I1(\o_dly_a_value[0]_INST_0_i_1_n_0 ),
        .O(o_dly_a_value));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \o_dly_a_value[0]_INST_0_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [4]),
        .I1(\many.reset_on.q_dly_counter_reg [2]),
        .I2(\many.reset_on.q_dly_counter_reg [0]),
        .I3(\many.reset_on.q_dly_counter_reg [1]),
        .I4(\many.reset_on.q_dly_counter_reg [3]),
        .I5(\many.reset_on.q_dly_counter_reg [5]),
        .O(\o_dly_a_value[0]_INST_0_i_1_n_0 ));
endmodule

(* DELAY = "18" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b1" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL_REG" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized20__3
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire i_dly_s_rst_p;
  wire \many.reset_on.q_dly_a_value_reg[16][0]_srl17_n_0 ;
  wire \many.reset_on.q_dly_a_value_reg[17] ;
  wire [5:0]\many.reset_on.q_dly_counter0 ;
  wire \many.reset_on.q_dly_counter[5]_i_1_n_0 ;
  wire [5:0]\many.reset_on.q_dly_counter_reg ;
  wire \many.reset_on.q_dly_s_rst_p ;
  wire [0:0]o_dly_a_value;
  wire \o_dly_a_value[0]_INST_0_i_1_n_0 ;
  wire \NLW_many.reset_on.q_dly_a_value_reg[16][0]_srl17_Q31_UNCONNECTED ;

  (* srl_bus_name = "\inst/block[2].AVG/DIVIDER /u_delay_sign/\many.reset_on.q_dly_a_value_reg[16] " *) 
  (* srl_name = "\inst/block[2].AVG/DIVIDER /u_delay_sign/\many.reset_on.q_dly_a_value_reg[16][0]_srl17 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \many.reset_on.q_dly_a_value_reg[16][0]_srl17 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b0}),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(\many.reset_on.q_dly_a_value_reg[16][0]_srl17_n_0 ),
        .Q31(\NLW_many.reset_on.q_dly_a_value_reg[16][0]_srl17_Q31_UNCONNECTED ));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_a_value_reg[17][0] 
       (.C(i_dly_a_clk_p),
        .CE(i_dly_s_ena_p),
        .D(\many.reset_on.q_dly_a_value_reg[16][0]_srl17_n_0 ),
        .Q(\many.reset_on.q_dly_a_value_reg[17] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \many.reset_on.q_dly_counter[0]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [0]),
        .O(\many.reset_on.q_dly_counter0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \many.reset_on.q_dly_counter[1]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [1]),
        .I1(\many.reset_on.q_dly_counter_reg [0]),
        .O(\many.reset_on.q_dly_counter0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \many.reset_on.q_dly_counter[2]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [2]),
        .I1(\many.reset_on.q_dly_counter_reg [0]),
        .I2(\many.reset_on.q_dly_counter_reg [1]),
        .O(\many.reset_on.q_dly_counter0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \many.reset_on.q_dly_counter[3]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [3]),
        .I1(\many.reset_on.q_dly_counter_reg [1]),
        .I2(\many.reset_on.q_dly_counter_reg [0]),
        .I3(\many.reset_on.q_dly_counter_reg [2]),
        .O(\many.reset_on.q_dly_counter0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \many.reset_on.q_dly_counter[4]_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [4]),
        .I1(\many.reset_on.q_dly_counter_reg [2]),
        .I2(\many.reset_on.q_dly_counter_reg [0]),
        .I3(\many.reset_on.q_dly_counter_reg [1]),
        .I4(\many.reset_on.q_dly_counter_reg [3]),
        .O(\many.reset_on.q_dly_counter0 [4]));
  LUT2 #(
    .INIT(4'h8)) 
    \many.reset_on.q_dly_counter[5]_i_1 
       (.I0(\o_dly_a_value[0]_INST_0_i_1_n_0 ),
        .I1(i_dly_s_ena_p),
        .O(\many.reset_on.q_dly_counter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \many.reset_on.q_dly_counter[5]_i_2 
       (.I0(\many.reset_on.q_dly_counter_reg [5]),
        .I1(\many.reset_on.q_dly_counter_reg [3]),
        .I2(\many.reset_on.q_dly_counter_reg [1]),
        .I3(\many.reset_on.q_dly_counter_reg [0]),
        .I4(\many.reset_on.q_dly_counter_reg [2]),
        .I5(\many.reset_on.q_dly_counter_reg [4]),
        .O(\many.reset_on.q_dly_counter0 [5]));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[0] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[5]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 [0]),
        .Q(\many.reset_on.q_dly_counter_reg [0]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDSE #(
    .INIT(1'b1)) 
    \many.reset_on.q_dly_counter_reg[1] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[5]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 [1]),
        .Q(\many.reset_on.q_dly_counter_reg [1]),
        .S(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[2] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[5]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 [2]),
        .Q(\many.reset_on.q_dly_counter_reg [2]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[3] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[5]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 [3]),
        .Q(\many.reset_on.q_dly_counter_reg [3]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDSE #(
    .INIT(1'b1)) 
    \many.reset_on.q_dly_counter_reg[4] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[5]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 [4]),
        .Q(\many.reset_on.q_dly_counter_reg [4]),
        .S(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_counter_reg[5] 
       (.C(i_dly_a_clk_p),
        .CE(\many.reset_on.q_dly_counter[5]_i_1_n_0 ),
        .D(\many.reset_on.q_dly_counter0 [5]),
        .Q(\many.reset_on.q_dly_counter_reg [5]),
        .R(\many.reset_on.q_dly_s_rst_p ));
  FDRE #(
    .INIT(1'b0)) 
    \many.reset_on.q_dly_s_rst_p_reg 
       (.C(i_dly_a_clk_p),
        .CE(1'b1),
        .D(i_dly_s_rst_p),
        .Q(\many.reset_on.q_dly_s_rst_p ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \o_dly_a_value[0]_INST_0 
       (.I0(\many.reset_on.q_dly_a_value_reg[17] ),
        .I1(\o_dly_a_value[0]_INST_0_i_1_n_0 ),
        .O(o_dly_a_value));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \o_dly_a_value[0]_INST_0_i_1 
       (.I0(\many.reset_on.q_dly_counter_reg [4]),
        .I1(\many.reset_on.q_dly_counter_reg [2]),
        .I2(\many.reset_on.q_dly_counter_reg [0]),
        .I3(\many.reset_on.q_dly_counter_reg [1]),
        .I4(\many.reset_on.q_dly_counter_reg [3]),
        .I5(\many.reset_on.q_dly_counter_reg [5]),
        .O(\o_dly_a_value[0]_INST_0_i_1_n_0 ));
endmodule

(* DELAY = "16" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized2__1
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[0].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[15] " *) 
  (* srl_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[0].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[15][0]_srl16 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "16" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized2__2
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[0].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[15] " *) 
  (* srl_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[0].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[15][0]_srl16 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "16" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized2__3
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[0].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[15] " *) 
  (* srl_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[0].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[15][0]_srl16 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "15" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized3
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[1].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[14] " *) 
  (* srl_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[1].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[14][0]_srl15 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[14][0]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "15" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized3__1
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[1].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[14] " *) 
  (* srl_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[1].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[14][0]_srl15 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[14][0]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "15" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized3__2
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[1].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[14] " *) 
  (* srl_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[1].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[14][0]_srl15 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[14][0]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "15" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized3__3
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[1].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[14] " *) 
  (* srl_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[1].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[14][0]_srl15 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[14][0]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "14" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized4
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[2].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[13] " *) 
  (* srl_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[2].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[13][0]_srl14 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[13][0]_srl14 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "14" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized4__1
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[2].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[13] " *) 
  (* srl_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[2].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[13][0]_srl14 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[13][0]_srl14 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "14" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized4__2
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[2].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[13] " *) 
  (* srl_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[2].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[13][0]_srl14 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[13][0]_srl14 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "14" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized4__3
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[2].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[13] " *) 
  (* srl_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[2].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[13][0]_srl14 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[13][0]_srl14 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "13" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized5
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[3].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[12] " *) 
  (* srl_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[3].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[12][0]_srl13 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[12][0]_srl13 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "13" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized5__1
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[3].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[12] " *) 
  (* srl_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[3].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[12][0]_srl13 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[12][0]_srl13 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "13" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized5__2
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[3].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[12] " *) 
  (* srl_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[3].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[12][0]_srl13 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[12][0]_srl13 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "13" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized5__3
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[3].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[12] " *) 
  (* srl_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[3].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[12][0]_srl13 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[12][0]_srl13 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "12" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized6
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[4].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[11] " *) 
  (* srl_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[4].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[11][0]_srl12 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[11][0]_srl12 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "12" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized6__1
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[4].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[11] " *) 
  (* srl_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[4].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[11][0]_srl12 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[11][0]_srl12 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "12" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized6__2
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[4].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[11] " *) 
  (* srl_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[4].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[11][0]_srl12 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[11][0]_srl12 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "12" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized6__3
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[4].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[11] " *) 
  (* srl_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[4].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[11][0]_srl12 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[11][0]_srl12 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "11" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized7
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[5].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[10] " *) 
  (* srl_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[5].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[10][0]_srl11 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[10][0]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "11" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized7__1
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[5].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[10] " *) 
  (* srl_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[5].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[10][0]_srl11 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[10][0]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "11" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized7__2
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[5].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[10] " *) 
  (* srl_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[5].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[10][0]_srl11 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[10][0]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "11" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized7__3
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[5].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[10] " *) 
  (* srl_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[5].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[10][0]_srl11 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[10][0]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "10" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized8
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[6].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[9] " *) 
  (* srl_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[6].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[9][0]_srl10 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[9][0]_srl10 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "10" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized8__1
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[6].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[9] " *) 
  (* srl_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[6].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[9][0]_srl10 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[9][0]_srl10 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "10" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized8__2
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[6].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[9] " *) 
  (* srl_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[6].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[9][0]_srl10 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[9][0]_srl10 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "10" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized8__3
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[6].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[9] " *) 
  (* srl_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[6].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[9][0]_srl10 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[9][0]_srl10 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "9" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized9
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[7].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[8] " *) 
  (* srl_name = "\inst/block[3].AVG/DIVIDER /\delay_quotient[7].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[8][0]_srl9 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[8][0]_srl9 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "9" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized9__1
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[7].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[8] " *) 
  (* srl_name = "\inst/block[0].AVG/DIVIDER /\delay_quotient[7].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[8][0]_srl9 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[8][0]_srl9 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "9" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized9__2
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[7].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[8] " *) 
  (* srl_name = "\inst/block[1].AVG/DIVIDER /\delay_quotient[7].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[8][0]_srl9 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[8][0]_srl9 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DELAY = "9" *) (* ORIG_REF_NAME = "divider_delay" *) (* RESET = "1'b0" *) 
(* SHREG = "Yes" *) (* STYLE = "SRL" *) (* WIDTH = "1" *) 
(* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_delay__parameterized9__3
   (i_dly_s_rst_p,
    i_dly_a_clk_p,
    i_dly_s_ena_p,
    i_dly_a_value,
    o_dly_a_value);
  input i_dly_s_rst_p;
  input i_dly_a_clk_p;
  input i_dly_s_ena_p;
  input [0:0]i_dly_a_value;
  output [0:0]o_dly_a_value;

  wire i_dly_a_clk_p;
  wire [0:0]i_dly_a_value;
  wire i_dly_s_ena_p;
  wire [0:0]o_dly_a_value;

  (* srl_bus_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[7].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[8] " *) 
  (* srl_name = "\inst/block[2].AVG/DIVIDER /\delay_quotient[7].u_delay_quotient /\many.no_reset.q_dly_a_value_reg[8][0]_srl9 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \many.no_reset.q_dly_a_value_reg[8][0]_srl9 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(i_dly_s_ena_p),
        .CLK(i_dly_a_clk_p),
        .D(i_dly_a_value),
        .Q(o_dly_a_value));
endmodule

(* DVR_W = "16" *) (* QUOTIENT_ONLY = "1'b0" *) (* REM_W = "17" *) 
(* USE_REG = "1'b1" *) (* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_div
   (i_div_a_clk_p,
    i_div_dvd_dat,
    i_div_rem_dat,
    i_div_dvr_dat,
    o_div_rem_dat,
    o_div_quo_dat);
  input i_div_a_clk_p;
  input i_div_dvd_dat;
  input [16:0]i_div_rem_dat;
  input [15:0]i_div_dvr_dat;
  output [16:0]o_div_rem_dat;
  output o_div_quo_dat;

  wire i_div_a_clk_p;
  wire i_div_dvd_dat;
  wire [15:0]i_div_dvr_dat;
  wire [16:0]i_div_rem_dat;
  wire o_div_quo_dat;
  wire [16:0]o_div_rem_dat;
  wire [16:0]w_div_rem_dat;
  wire \with_reg.q_div_rem_dat[11]_i_2_n_0 ;
  wire \with_reg.q_div_rem_dat[11]_i_3_n_0 ;
  wire \with_reg.q_div_rem_dat[11]_i_4_n_0 ;
  wire \with_reg.q_div_rem_dat[11]_i_5_n_0 ;
  wire \with_reg.q_div_rem_dat[15]_i_2_n_0 ;
  wire \with_reg.q_div_rem_dat[15]_i_3_n_0 ;
  wire \with_reg.q_div_rem_dat[15]_i_4_n_0 ;
  wire \with_reg.q_div_rem_dat[15]_i_5_n_0 ;
  wire \with_reg.q_div_rem_dat[16]_i_2_n_0 ;
  wire \with_reg.q_div_rem_dat[3]_i_2_n_0 ;
  wire \with_reg.q_div_rem_dat[3]_i_3_n_0 ;
  wire \with_reg.q_div_rem_dat[3]_i_4_n_0 ;
  wire \with_reg.q_div_rem_dat[3]_i_5_n_0 ;
  wire \with_reg.q_div_rem_dat[3]_i_6_n_0 ;
  wire \with_reg.q_div_rem_dat[7]_i_2_n_0 ;
  wire \with_reg.q_div_rem_dat[7]_i_3_n_0 ;
  wire \with_reg.q_div_rem_dat[7]_i_4_n_0 ;
  wire \with_reg.q_div_rem_dat[7]_i_5_n_0 ;
  wire \with_reg.q_div_rem_dat_reg[11]_i_1_n_0 ;
  wire \with_reg.q_div_rem_dat_reg[11]_i_1_n_1 ;
  wire \with_reg.q_div_rem_dat_reg[11]_i_1_n_2 ;
  wire \with_reg.q_div_rem_dat_reg[11]_i_1_n_3 ;
  wire \with_reg.q_div_rem_dat_reg[15]_i_1_n_0 ;
  wire \with_reg.q_div_rem_dat_reg[15]_i_1_n_1 ;
  wire \with_reg.q_div_rem_dat_reg[15]_i_1_n_2 ;
  wire \with_reg.q_div_rem_dat_reg[15]_i_1_n_3 ;
  wire \with_reg.q_div_rem_dat_reg[3]_i_1_n_0 ;
  wire \with_reg.q_div_rem_dat_reg[3]_i_1_n_1 ;
  wire \with_reg.q_div_rem_dat_reg[3]_i_1_n_2 ;
  wire \with_reg.q_div_rem_dat_reg[3]_i_1_n_3 ;
  wire \with_reg.q_div_rem_dat_reg[7]_i_1_n_0 ;
  wire \with_reg.q_div_rem_dat_reg[7]_i_1_n_1 ;
  wire \with_reg.q_div_rem_dat_reg[7]_i_1_n_2 ;
  wire \with_reg.q_div_rem_dat_reg[7]_i_1_n_3 ;
  wire [3:0]\NLW_with_reg.q_div_rem_dat_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_with_reg.q_div_rem_dat_reg[16]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    o_div_quo_dat_INST_0
       (.I0(i_div_rem_dat[16]),
        .O(o_div_quo_dat));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[11]_i_2 
       (.I0(i_div_dvr_dat[11]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[10]),
        .O(\with_reg.q_div_rem_dat[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[11]_i_3 
       (.I0(i_div_dvr_dat[10]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[9]),
        .O(\with_reg.q_div_rem_dat[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[11]_i_4 
       (.I0(i_div_dvr_dat[9]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[8]),
        .O(\with_reg.q_div_rem_dat[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[11]_i_5 
       (.I0(i_div_dvr_dat[8]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[7]),
        .O(\with_reg.q_div_rem_dat[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[15]_i_2 
       (.I0(i_div_dvr_dat[15]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[14]),
        .O(\with_reg.q_div_rem_dat[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[15]_i_3 
       (.I0(i_div_dvr_dat[14]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[13]),
        .O(\with_reg.q_div_rem_dat[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[15]_i_4 
       (.I0(i_div_dvr_dat[13]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[12]),
        .O(\with_reg.q_div_rem_dat[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[15]_i_5 
       (.I0(i_div_dvr_dat[12]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[11]),
        .O(\with_reg.q_div_rem_dat[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \with_reg.q_div_rem_dat[16]_i_2 
       (.I0(i_div_rem_dat[16]),
        .I1(i_div_rem_dat[15]),
        .O(\with_reg.q_div_rem_dat[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \with_reg.q_div_rem_dat[3]_i_2 
       (.I0(i_div_rem_dat[16]),
        .O(\with_reg.q_div_rem_dat[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[3]_i_3 
       (.I0(i_div_dvr_dat[3]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[2]),
        .O(\with_reg.q_div_rem_dat[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[3]_i_4 
       (.I0(i_div_dvr_dat[2]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[1]),
        .O(\with_reg.q_div_rem_dat[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[3]_i_5 
       (.I0(i_div_dvr_dat[1]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[0]),
        .O(\with_reg.q_div_rem_dat[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hA)) 
    \with_reg.q_div_rem_dat[3]_i_6 
       (.I0(i_div_dvr_dat[0]),
        .I1(i_div_rem_dat[16]),
        .O(\with_reg.q_div_rem_dat[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[7]_i_2 
       (.I0(i_div_dvr_dat[7]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[6]),
        .O(\with_reg.q_div_rem_dat[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[7]_i_3 
       (.I0(i_div_dvr_dat[6]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[5]),
        .O(\with_reg.q_div_rem_dat[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[7]_i_4 
       (.I0(i_div_dvr_dat[5]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[4]),
        .O(\with_reg.q_div_rem_dat[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[7]_i_5 
       (.I0(i_div_dvr_dat[4]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[3]),
        .O(\with_reg.q_div_rem_dat[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[0] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[0]),
        .Q(o_div_rem_dat[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[10] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[10]),
        .Q(o_div_rem_dat[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[11] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[11]),
        .Q(o_div_rem_dat[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \with_reg.q_div_rem_dat_reg[11]_i_1 
       (.CI(\with_reg.q_div_rem_dat_reg[7]_i_1_n_0 ),
        .CO({\with_reg.q_div_rem_dat_reg[11]_i_1_n_0 ,\with_reg.q_div_rem_dat_reg[11]_i_1_n_1 ,\with_reg.q_div_rem_dat_reg[11]_i_1_n_2 ,\with_reg.q_div_rem_dat_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(i_div_rem_dat[10:7]),
        .O(w_div_rem_dat[11:8]),
        .S({\with_reg.q_div_rem_dat[11]_i_2_n_0 ,\with_reg.q_div_rem_dat[11]_i_3_n_0 ,\with_reg.q_div_rem_dat[11]_i_4_n_0 ,\with_reg.q_div_rem_dat[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[12] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[12]),
        .Q(o_div_rem_dat[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[13] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[13]),
        .Q(o_div_rem_dat[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[14] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[14]),
        .Q(o_div_rem_dat[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[15] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[15]),
        .Q(o_div_rem_dat[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \with_reg.q_div_rem_dat_reg[15]_i_1 
       (.CI(\with_reg.q_div_rem_dat_reg[11]_i_1_n_0 ),
        .CO({\with_reg.q_div_rem_dat_reg[15]_i_1_n_0 ,\with_reg.q_div_rem_dat_reg[15]_i_1_n_1 ,\with_reg.q_div_rem_dat_reg[15]_i_1_n_2 ,\with_reg.q_div_rem_dat_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(i_div_rem_dat[14:11]),
        .O(w_div_rem_dat[15:12]),
        .S({\with_reg.q_div_rem_dat[15]_i_2_n_0 ,\with_reg.q_div_rem_dat[15]_i_3_n_0 ,\with_reg.q_div_rem_dat[15]_i_4_n_0 ,\with_reg.q_div_rem_dat[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[16] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[16]),
        .Q(o_div_rem_dat[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \with_reg.q_div_rem_dat_reg[16]_i_1 
       (.CI(\with_reg.q_div_rem_dat_reg[15]_i_1_n_0 ),
        .CO(\NLW_with_reg.q_div_rem_dat_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_with_reg.q_div_rem_dat_reg[16]_i_1_O_UNCONNECTED [3:1],w_div_rem_dat[16]}),
        .S({1'b0,1'b0,1'b0,\with_reg.q_div_rem_dat[16]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[1] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[1]),
        .Q(o_div_rem_dat[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[2] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[2]),
        .Q(o_div_rem_dat[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[3] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[3]),
        .Q(o_div_rem_dat[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \with_reg.q_div_rem_dat_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\with_reg.q_div_rem_dat_reg[3]_i_1_n_0 ,\with_reg.q_div_rem_dat_reg[3]_i_1_n_1 ,\with_reg.q_div_rem_dat_reg[3]_i_1_n_2 ,\with_reg.q_div_rem_dat_reg[3]_i_1_n_3 }),
        .CYINIT(i_div_dvd_dat),
        .DI({i_div_rem_dat[2:0],\with_reg.q_div_rem_dat[3]_i_2_n_0 }),
        .O(w_div_rem_dat[3:0]),
        .S({\with_reg.q_div_rem_dat[3]_i_3_n_0 ,\with_reg.q_div_rem_dat[3]_i_4_n_0 ,\with_reg.q_div_rem_dat[3]_i_5_n_0 ,\with_reg.q_div_rem_dat[3]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[4] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[4]),
        .Q(o_div_rem_dat[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[5] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[5]),
        .Q(o_div_rem_dat[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[6] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[6]),
        .Q(o_div_rem_dat[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[7] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[7]),
        .Q(o_div_rem_dat[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \with_reg.q_div_rem_dat_reg[7]_i_1 
       (.CI(\with_reg.q_div_rem_dat_reg[3]_i_1_n_0 ),
        .CO({\with_reg.q_div_rem_dat_reg[7]_i_1_n_0 ,\with_reg.q_div_rem_dat_reg[7]_i_1_n_1 ,\with_reg.q_div_rem_dat_reg[7]_i_1_n_2 ,\with_reg.q_div_rem_dat_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(i_div_rem_dat[6:3]),
        .O(w_div_rem_dat[7:4]),
        .S({\with_reg.q_div_rem_dat[7]_i_2_n_0 ,\with_reg.q_div_rem_dat[7]_i_3_n_0 ,\with_reg.q_div_rem_dat[7]_i_4_n_0 ,\with_reg.q_div_rem_dat[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[8] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[8]),
        .Q(o_div_rem_dat[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[9] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[9]),
        .Q(o_div_rem_dat[9]),
        .R(1'b0));
endmodule

(* DVR_W = "16" *) (* ORIG_REF_NAME = "divider_div" *) (* QUOTIENT_ONLY = "1'b0" *) 
(* REM_W = "17" *) (* USE_REG = "1'b1" *) (* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_div__1
   (i_div_a_clk_p,
    i_div_dvd_dat,
    i_div_rem_dat,
    i_div_dvr_dat,
    o_div_rem_dat,
    o_div_quo_dat);
  input i_div_a_clk_p;
  input i_div_dvd_dat;
  input [16:0]i_div_rem_dat;
  input [15:0]i_div_dvr_dat;
  output [16:0]o_div_rem_dat;
  output o_div_quo_dat;

  wire i_div_a_clk_p;
  wire i_div_dvd_dat;
  wire [15:0]i_div_dvr_dat;
  wire [16:0]i_div_rem_dat;
  wire o_div_quo_dat;
  wire [16:0]o_div_rem_dat;
  wire [16:0]w_div_rem_dat;
  wire \with_reg.q_div_rem_dat[11]_i_2_n_0 ;
  wire \with_reg.q_div_rem_dat[11]_i_3_n_0 ;
  wire \with_reg.q_div_rem_dat[11]_i_4_n_0 ;
  wire \with_reg.q_div_rem_dat[11]_i_5_n_0 ;
  wire \with_reg.q_div_rem_dat[15]_i_2_n_0 ;
  wire \with_reg.q_div_rem_dat[15]_i_3_n_0 ;
  wire \with_reg.q_div_rem_dat[15]_i_4_n_0 ;
  wire \with_reg.q_div_rem_dat[15]_i_5_n_0 ;
  wire \with_reg.q_div_rem_dat[16]_i_2_n_0 ;
  wire \with_reg.q_div_rem_dat[3]_i_2_n_0 ;
  wire \with_reg.q_div_rem_dat[3]_i_3_n_0 ;
  wire \with_reg.q_div_rem_dat[3]_i_4_n_0 ;
  wire \with_reg.q_div_rem_dat[3]_i_5_n_0 ;
  wire \with_reg.q_div_rem_dat[3]_i_6_n_0 ;
  wire \with_reg.q_div_rem_dat[7]_i_2_n_0 ;
  wire \with_reg.q_div_rem_dat[7]_i_3_n_0 ;
  wire \with_reg.q_div_rem_dat[7]_i_4_n_0 ;
  wire \with_reg.q_div_rem_dat[7]_i_5_n_0 ;
  wire \with_reg.q_div_rem_dat_reg[11]_i_1_n_0 ;
  wire \with_reg.q_div_rem_dat_reg[11]_i_1_n_1 ;
  wire \with_reg.q_div_rem_dat_reg[11]_i_1_n_2 ;
  wire \with_reg.q_div_rem_dat_reg[11]_i_1_n_3 ;
  wire \with_reg.q_div_rem_dat_reg[15]_i_1_n_0 ;
  wire \with_reg.q_div_rem_dat_reg[15]_i_1_n_1 ;
  wire \with_reg.q_div_rem_dat_reg[15]_i_1_n_2 ;
  wire \with_reg.q_div_rem_dat_reg[15]_i_1_n_3 ;
  wire \with_reg.q_div_rem_dat_reg[3]_i_1_n_0 ;
  wire \with_reg.q_div_rem_dat_reg[3]_i_1_n_1 ;
  wire \with_reg.q_div_rem_dat_reg[3]_i_1_n_2 ;
  wire \with_reg.q_div_rem_dat_reg[3]_i_1_n_3 ;
  wire \with_reg.q_div_rem_dat_reg[7]_i_1_n_0 ;
  wire \with_reg.q_div_rem_dat_reg[7]_i_1_n_1 ;
  wire \with_reg.q_div_rem_dat_reg[7]_i_1_n_2 ;
  wire \with_reg.q_div_rem_dat_reg[7]_i_1_n_3 ;
  wire [3:0]\NLW_with_reg.q_div_rem_dat_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_with_reg.q_div_rem_dat_reg[16]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    o_div_quo_dat_INST_0
       (.I0(i_div_rem_dat[16]),
        .O(o_div_quo_dat));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[11]_i_2 
       (.I0(i_div_dvr_dat[11]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[10]),
        .O(\with_reg.q_div_rem_dat[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[11]_i_3 
       (.I0(i_div_dvr_dat[10]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[9]),
        .O(\with_reg.q_div_rem_dat[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[11]_i_4 
       (.I0(i_div_dvr_dat[9]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[8]),
        .O(\with_reg.q_div_rem_dat[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[11]_i_5 
       (.I0(i_div_dvr_dat[8]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[7]),
        .O(\with_reg.q_div_rem_dat[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[15]_i_2 
       (.I0(i_div_dvr_dat[15]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[14]),
        .O(\with_reg.q_div_rem_dat[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[15]_i_3 
       (.I0(i_div_dvr_dat[14]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[13]),
        .O(\with_reg.q_div_rem_dat[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[15]_i_4 
       (.I0(i_div_dvr_dat[13]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[12]),
        .O(\with_reg.q_div_rem_dat[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[15]_i_5 
       (.I0(i_div_dvr_dat[12]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[11]),
        .O(\with_reg.q_div_rem_dat[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \with_reg.q_div_rem_dat[16]_i_2 
       (.I0(i_div_rem_dat[16]),
        .I1(i_div_rem_dat[15]),
        .O(\with_reg.q_div_rem_dat[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \with_reg.q_div_rem_dat[3]_i_2 
       (.I0(i_div_rem_dat[16]),
        .O(\with_reg.q_div_rem_dat[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[3]_i_3 
       (.I0(i_div_dvr_dat[3]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[2]),
        .O(\with_reg.q_div_rem_dat[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[3]_i_4 
       (.I0(i_div_dvr_dat[2]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[1]),
        .O(\with_reg.q_div_rem_dat[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[3]_i_5 
       (.I0(i_div_dvr_dat[1]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[0]),
        .O(\with_reg.q_div_rem_dat[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hA)) 
    \with_reg.q_div_rem_dat[3]_i_6 
       (.I0(i_div_dvr_dat[0]),
        .I1(i_div_rem_dat[16]),
        .O(\with_reg.q_div_rem_dat[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[7]_i_2 
       (.I0(i_div_dvr_dat[7]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[6]),
        .O(\with_reg.q_div_rem_dat[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[7]_i_3 
       (.I0(i_div_dvr_dat[6]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[5]),
        .O(\with_reg.q_div_rem_dat[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[7]_i_4 
       (.I0(i_div_dvr_dat[5]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[4]),
        .O(\with_reg.q_div_rem_dat[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[7]_i_5 
       (.I0(i_div_dvr_dat[4]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[3]),
        .O(\with_reg.q_div_rem_dat[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[0] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[0]),
        .Q(o_div_rem_dat[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[10] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[10]),
        .Q(o_div_rem_dat[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[11] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[11]),
        .Q(o_div_rem_dat[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \with_reg.q_div_rem_dat_reg[11]_i_1 
       (.CI(\with_reg.q_div_rem_dat_reg[7]_i_1_n_0 ),
        .CO({\with_reg.q_div_rem_dat_reg[11]_i_1_n_0 ,\with_reg.q_div_rem_dat_reg[11]_i_1_n_1 ,\with_reg.q_div_rem_dat_reg[11]_i_1_n_2 ,\with_reg.q_div_rem_dat_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(i_div_rem_dat[10:7]),
        .O(w_div_rem_dat[11:8]),
        .S({\with_reg.q_div_rem_dat[11]_i_2_n_0 ,\with_reg.q_div_rem_dat[11]_i_3_n_0 ,\with_reg.q_div_rem_dat[11]_i_4_n_0 ,\with_reg.q_div_rem_dat[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[12] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[12]),
        .Q(o_div_rem_dat[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[13] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[13]),
        .Q(o_div_rem_dat[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[14] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[14]),
        .Q(o_div_rem_dat[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[15] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[15]),
        .Q(o_div_rem_dat[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \with_reg.q_div_rem_dat_reg[15]_i_1 
       (.CI(\with_reg.q_div_rem_dat_reg[11]_i_1_n_0 ),
        .CO({\with_reg.q_div_rem_dat_reg[15]_i_1_n_0 ,\with_reg.q_div_rem_dat_reg[15]_i_1_n_1 ,\with_reg.q_div_rem_dat_reg[15]_i_1_n_2 ,\with_reg.q_div_rem_dat_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(i_div_rem_dat[14:11]),
        .O(w_div_rem_dat[15:12]),
        .S({\with_reg.q_div_rem_dat[15]_i_2_n_0 ,\with_reg.q_div_rem_dat[15]_i_3_n_0 ,\with_reg.q_div_rem_dat[15]_i_4_n_0 ,\with_reg.q_div_rem_dat[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[16] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[16]),
        .Q(o_div_rem_dat[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \with_reg.q_div_rem_dat_reg[16]_i_1 
       (.CI(\with_reg.q_div_rem_dat_reg[15]_i_1_n_0 ),
        .CO(\NLW_with_reg.q_div_rem_dat_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_with_reg.q_div_rem_dat_reg[16]_i_1_O_UNCONNECTED [3:1],w_div_rem_dat[16]}),
        .S({1'b0,1'b0,1'b0,\with_reg.q_div_rem_dat[16]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[1] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[1]),
        .Q(o_div_rem_dat[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[2] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[2]),
        .Q(o_div_rem_dat[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[3] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[3]),
        .Q(o_div_rem_dat[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \with_reg.q_div_rem_dat_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\with_reg.q_div_rem_dat_reg[3]_i_1_n_0 ,\with_reg.q_div_rem_dat_reg[3]_i_1_n_1 ,\with_reg.q_div_rem_dat_reg[3]_i_1_n_2 ,\with_reg.q_div_rem_dat_reg[3]_i_1_n_3 }),
        .CYINIT(i_div_dvd_dat),
        .DI({i_div_rem_dat[2:0],\with_reg.q_div_rem_dat[3]_i_2_n_0 }),
        .O(w_div_rem_dat[3:0]),
        .S({\with_reg.q_div_rem_dat[3]_i_3_n_0 ,\with_reg.q_div_rem_dat[3]_i_4_n_0 ,\with_reg.q_div_rem_dat[3]_i_5_n_0 ,\with_reg.q_div_rem_dat[3]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[4] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[4]),
        .Q(o_div_rem_dat[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[5] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[5]),
        .Q(o_div_rem_dat[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[6] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[6]),
        .Q(o_div_rem_dat[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[7] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[7]),
        .Q(o_div_rem_dat[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \with_reg.q_div_rem_dat_reg[7]_i_1 
       (.CI(\with_reg.q_div_rem_dat_reg[3]_i_1_n_0 ),
        .CO({\with_reg.q_div_rem_dat_reg[7]_i_1_n_0 ,\with_reg.q_div_rem_dat_reg[7]_i_1_n_1 ,\with_reg.q_div_rem_dat_reg[7]_i_1_n_2 ,\with_reg.q_div_rem_dat_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(i_div_rem_dat[6:3]),
        .O(w_div_rem_dat[7:4]),
        .S({\with_reg.q_div_rem_dat[7]_i_2_n_0 ,\with_reg.q_div_rem_dat[7]_i_3_n_0 ,\with_reg.q_div_rem_dat[7]_i_4_n_0 ,\with_reg.q_div_rem_dat[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[8] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[8]),
        .Q(o_div_rem_dat[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[9] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[9]),
        .Q(o_div_rem_dat[9]),
        .R(1'b0));
endmodule

(* DVR_W = "16" *) (* ORIG_REF_NAME = "divider_div" *) (* QUOTIENT_ONLY = "1'b0" *) 
(* REM_W = "17" *) (* USE_REG = "1'b1" *) (* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_div__2
   (i_div_a_clk_p,
    i_div_dvd_dat,
    i_div_rem_dat,
    i_div_dvr_dat,
    o_div_rem_dat,
    o_div_quo_dat);
  input i_div_a_clk_p;
  input i_div_dvd_dat;
  input [16:0]i_div_rem_dat;
  input [15:0]i_div_dvr_dat;
  output [16:0]o_div_rem_dat;
  output o_div_quo_dat;

  wire i_div_a_clk_p;
  wire i_div_dvd_dat;
  wire [15:0]i_div_dvr_dat;
  wire [16:0]i_div_rem_dat;
  wire o_div_quo_dat;
  wire [16:0]o_div_rem_dat;
  wire [16:0]w_div_rem_dat;
  wire \with_reg.q_div_rem_dat[11]_i_2_n_0 ;
  wire \with_reg.q_div_rem_dat[11]_i_3_n_0 ;
  wire \with_reg.q_div_rem_dat[11]_i_4_n_0 ;
  wire \with_reg.q_div_rem_dat[11]_i_5_n_0 ;
  wire \with_reg.q_div_rem_dat[15]_i_2_n_0 ;
  wire \with_reg.q_div_rem_dat[15]_i_3_n_0 ;
  wire \with_reg.q_div_rem_dat[15]_i_4_n_0 ;
  wire \with_reg.q_div_rem_dat[15]_i_5_n_0 ;
  wire \with_reg.q_div_rem_dat[16]_i_2_n_0 ;
  wire \with_reg.q_div_rem_dat[3]_i_2_n_0 ;
  wire \with_reg.q_div_rem_dat[3]_i_3_n_0 ;
  wire \with_reg.q_div_rem_dat[3]_i_4_n_0 ;
  wire \with_reg.q_div_rem_dat[3]_i_5_n_0 ;
  wire \with_reg.q_div_rem_dat[3]_i_6_n_0 ;
  wire \with_reg.q_div_rem_dat[7]_i_2_n_0 ;
  wire \with_reg.q_div_rem_dat[7]_i_3_n_0 ;
  wire \with_reg.q_div_rem_dat[7]_i_4_n_0 ;
  wire \with_reg.q_div_rem_dat[7]_i_5_n_0 ;
  wire \with_reg.q_div_rem_dat_reg[11]_i_1_n_0 ;
  wire \with_reg.q_div_rem_dat_reg[11]_i_1_n_1 ;
  wire \with_reg.q_div_rem_dat_reg[11]_i_1_n_2 ;
  wire \with_reg.q_div_rem_dat_reg[11]_i_1_n_3 ;
  wire \with_reg.q_div_rem_dat_reg[15]_i_1_n_0 ;
  wire \with_reg.q_div_rem_dat_reg[15]_i_1_n_1 ;
  wire \with_reg.q_div_rem_dat_reg[15]_i_1_n_2 ;
  wire \with_reg.q_div_rem_dat_reg[15]_i_1_n_3 ;
  wire \with_reg.q_div_rem_dat_reg[3]_i_1_n_0 ;
  wire \with_reg.q_div_rem_dat_reg[3]_i_1_n_1 ;
  wire \with_reg.q_div_rem_dat_reg[3]_i_1_n_2 ;
  wire \with_reg.q_div_rem_dat_reg[3]_i_1_n_3 ;
  wire \with_reg.q_div_rem_dat_reg[7]_i_1_n_0 ;
  wire \with_reg.q_div_rem_dat_reg[7]_i_1_n_1 ;
  wire \with_reg.q_div_rem_dat_reg[7]_i_1_n_2 ;
  wire \with_reg.q_div_rem_dat_reg[7]_i_1_n_3 ;
  wire [3:0]\NLW_with_reg.q_div_rem_dat_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_with_reg.q_div_rem_dat_reg[16]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    o_div_quo_dat_INST_0
       (.I0(i_div_rem_dat[16]),
        .O(o_div_quo_dat));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[11]_i_2 
       (.I0(i_div_dvr_dat[11]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[10]),
        .O(\with_reg.q_div_rem_dat[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[11]_i_3 
       (.I0(i_div_dvr_dat[10]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[9]),
        .O(\with_reg.q_div_rem_dat[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[11]_i_4 
       (.I0(i_div_dvr_dat[9]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[8]),
        .O(\with_reg.q_div_rem_dat[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[11]_i_5 
       (.I0(i_div_dvr_dat[8]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[7]),
        .O(\with_reg.q_div_rem_dat[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[15]_i_2 
       (.I0(i_div_dvr_dat[15]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[14]),
        .O(\with_reg.q_div_rem_dat[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[15]_i_3 
       (.I0(i_div_dvr_dat[14]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[13]),
        .O(\with_reg.q_div_rem_dat[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[15]_i_4 
       (.I0(i_div_dvr_dat[13]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[12]),
        .O(\with_reg.q_div_rem_dat[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[15]_i_5 
       (.I0(i_div_dvr_dat[12]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[11]),
        .O(\with_reg.q_div_rem_dat[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \with_reg.q_div_rem_dat[16]_i_2 
       (.I0(i_div_rem_dat[16]),
        .I1(i_div_rem_dat[15]),
        .O(\with_reg.q_div_rem_dat[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \with_reg.q_div_rem_dat[3]_i_2 
       (.I0(i_div_rem_dat[16]),
        .O(\with_reg.q_div_rem_dat[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[3]_i_3 
       (.I0(i_div_dvr_dat[3]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[2]),
        .O(\with_reg.q_div_rem_dat[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[3]_i_4 
       (.I0(i_div_dvr_dat[2]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[1]),
        .O(\with_reg.q_div_rem_dat[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[3]_i_5 
       (.I0(i_div_dvr_dat[1]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[0]),
        .O(\with_reg.q_div_rem_dat[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hA)) 
    \with_reg.q_div_rem_dat[3]_i_6 
       (.I0(i_div_dvr_dat[0]),
        .I1(i_div_rem_dat[16]),
        .O(\with_reg.q_div_rem_dat[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[7]_i_2 
       (.I0(i_div_dvr_dat[7]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[6]),
        .O(\with_reg.q_div_rem_dat[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[7]_i_3 
       (.I0(i_div_dvr_dat[6]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[5]),
        .O(\with_reg.q_div_rem_dat[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[7]_i_4 
       (.I0(i_div_dvr_dat[5]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[4]),
        .O(\with_reg.q_div_rem_dat[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[7]_i_5 
       (.I0(i_div_dvr_dat[4]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[3]),
        .O(\with_reg.q_div_rem_dat[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[0] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[0]),
        .Q(o_div_rem_dat[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[10] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[10]),
        .Q(o_div_rem_dat[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[11] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[11]),
        .Q(o_div_rem_dat[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \with_reg.q_div_rem_dat_reg[11]_i_1 
       (.CI(\with_reg.q_div_rem_dat_reg[7]_i_1_n_0 ),
        .CO({\with_reg.q_div_rem_dat_reg[11]_i_1_n_0 ,\with_reg.q_div_rem_dat_reg[11]_i_1_n_1 ,\with_reg.q_div_rem_dat_reg[11]_i_1_n_2 ,\with_reg.q_div_rem_dat_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(i_div_rem_dat[10:7]),
        .O(w_div_rem_dat[11:8]),
        .S({\with_reg.q_div_rem_dat[11]_i_2_n_0 ,\with_reg.q_div_rem_dat[11]_i_3_n_0 ,\with_reg.q_div_rem_dat[11]_i_4_n_0 ,\with_reg.q_div_rem_dat[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[12] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[12]),
        .Q(o_div_rem_dat[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[13] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[13]),
        .Q(o_div_rem_dat[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[14] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[14]),
        .Q(o_div_rem_dat[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[15] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[15]),
        .Q(o_div_rem_dat[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \with_reg.q_div_rem_dat_reg[15]_i_1 
       (.CI(\with_reg.q_div_rem_dat_reg[11]_i_1_n_0 ),
        .CO({\with_reg.q_div_rem_dat_reg[15]_i_1_n_0 ,\with_reg.q_div_rem_dat_reg[15]_i_1_n_1 ,\with_reg.q_div_rem_dat_reg[15]_i_1_n_2 ,\with_reg.q_div_rem_dat_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(i_div_rem_dat[14:11]),
        .O(w_div_rem_dat[15:12]),
        .S({\with_reg.q_div_rem_dat[15]_i_2_n_0 ,\with_reg.q_div_rem_dat[15]_i_3_n_0 ,\with_reg.q_div_rem_dat[15]_i_4_n_0 ,\with_reg.q_div_rem_dat[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[16] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[16]),
        .Q(o_div_rem_dat[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \with_reg.q_div_rem_dat_reg[16]_i_1 
       (.CI(\with_reg.q_div_rem_dat_reg[15]_i_1_n_0 ),
        .CO(\NLW_with_reg.q_div_rem_dat_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_with_reg.q_div_rem_dat_reg[16]_i_1_O_UNCONNECTED [3:1],w_div_rem_dat[16]}),
        .S({1'b0,1'b0,1'b0,\with_reg.q_div_rem_dat[16]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[1] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[1]),
        .Q(o_div_rem_dat[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[2] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[2]),
        .Q(o_div_rem_dat[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[3] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[3]),
        .Q(o_div_rem_dat[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \with_reg.q_div_rem_dat_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\with_reg.q_div_rem_dat_reg[3]_i_1_n_0 ,\with_reg.q_div_rem_dat_reg[3]_i_1_n_1 ,\with_reg.q_div_rem_dat_reg[3]_i_1_n_2 ,\with_reg.q_div_rem_dat_reg[3]_i_1_n_3 }),
        .CYINIT(i_div_dvd_dat),
        .DI({i_div_rem_dat[2:0],\with_reg.q_div_rem_dat[3]_i_2_n_0 }),
        .O(w_div_rem_dat[3:0]),
        .S({\with_reg.q_div_rem_dat[3]_i_3_n_0 ,\with_reg.q_div_rem_dat[3]_i_4_n_0 ,\with_reg.q_div_rem_dat[3]_i_5_n_0 ,\with_reg.q_div_rem_dat[3]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[4] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[4]),
        .Q(o_div_rem_dat[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[5] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[5]),
        .Q(o_div_rem_dat[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[6] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[6]),
        .Q(o_div_rem_dat[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[7] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[7]),
        .Q(o_div_rem_dat[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \with_reg.q_div_rem_dat_reg[7]_i_1 
       (.CI(\with_reg.q_div_rem_dat_reg[3]_i_1_n_0 ),
        .CO({\with_reg.q_div_rem_dat_reg[7]_i_1_n_0 ,\with_reg.q_div_rem_dat_reg[7]_i_1_n_1 ,\with_reg.q_div_rem_dat_reg[7]_i_1_n_2 ,\with_reg.q_div_rem_dat_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(i_div_rem_dat[6:3]),
        .O(w_div_rem_dat[7:4]),
        .S({\with_reg.q_div_rem_dat[7]_i_2_n_0 ,\with_reg.q_div_rem_dat[7]_i_3_n_0 ,\with_reg.q_div_rem_dat[7]_i_4_n_0 ,\with_reg.q_div_rem_dat[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[8] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[8]),
        .Q(o_div_rem_dat[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[9] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[9]),
        .Q(o_div_rem_dat[9]),
        .R(1'b0));
endmodule

(* DVR_W = "16" *) (* ORIG_REF_NAME = "divider_div" *) (* QUOTIENT_ONLY = "1'b0" *) 
(* REM_W = "17" *) (* USE_REG = "1'b1" *) (* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_div__3
   (i_div_a_clk_p,
    i_div_dvd_dat,
    i_div_rem_dat,
    i_div_dvr_dat,
    o_div_rem_dat,
    o_div_quo_dat);
  input i_div_a_clk_p;
  input i_div_dvd_dat;
  input [16:0]i_div_rem_dat;
  input [15:0]i_div_dvr_dat;
  output [16:0]o_div_rem_dat;
  output o_div_quo_dat;

  wire i_div_a_clk_p;
  wire i_div_dvd_dat;
  wire [15:0]i_div_dvr_dat;
  wire [16:0]i_div_rem_dat;
  wire o_div_quo_dat;
  wire [16:0]o_div_rem_dat;
  wire [16:0]w_div_rem_dat;
  wire \with_reg.q_div_rem_dat[11]_i_2_n_0 ;
  wire \with_reg.q_div_rem_dat[11]_i_3_n_0 ;
  wire \with_reg.q_div_rem_dat[11]_i_4_n_0 ;
  wire \with_reg.q_div_rem_dat[11]_i_5_n_0 ;
  wire \with_reg.q_div_rem_dat[15]_i_2_n_0 ;
  wire \with_reg.q_div_rem_dat[15]_i_3_n_0 ;
  wire \with_reg.q_div_rem_dat[15]_i_4_n_0 ;
  wire \with_reg.q_div_rem_dat[15]_i_5_n_0 ;
  wire \with_reg.q_div_rem_dat[16]_i_2_n_0 ;
  wire \with_reg.q_div_rem_dat[3]_i_2_n_0 ;
  wire \with_reg.q_div_rem_dat[3]_i_3_n_0 ;
  wire \with_reg.q_div_rem_dat[3]_i_4_n_0 ;
  wire \with_reg.q_div_rem_dat[3]_i_5_n_0 ;
  wire \with_reg.q_div_rem_dat[3]_i_6_n_0 ;
  wire \with_reg.q_div_rem_dat[7]_i_2_n_0 ;
  wire \with_reg.q_div_rem_dat[7]_i_3_n_0 ;
  wire \with_reg.q_div_rem_dat[7]_i_4_n_0 ;
  wire \with_reg.q_div_rem_dat[7]_i_5_n_0 ;
  wire \with_reg.q_div_rem_dat_reg[11]_i_1_n_0 ;
  wire \with_reg.q_div_rem_dat_reg[11]_i_1_n_1 ;
  wire \with_reg.q_div_rem_dat_reg[11]_i_1_n_2 ;
  wire \with_reg.q_div_rem_dat_reg[11]_i_1_n_3 ;
  wire \with_reg.q_div_rem_dat_reg[15]_i_1_n_0 ;
  wire \with_reg.q_div_rem_dat_reg[15]_i_1_n_1 ;
  wire \with_reg.q_div_rem_dat_reg[15]_i_1_n_2 ;
  wire \with_reg.q_div_rem_dat_reg[15]_i_1_n_3 ;
  wire \with_reg.q_div_rem_dat_reg[3]_i_1_n_0 ;
  wire \with_reg.q_div_rem_dat_reg[3]_i_1_n_1 ;
  wire \with_reg.q_div_rem_dat_reg[3]_i_1_n_2 ;
  wire \with_reg.q_div_rem_dat_reg[3]_i_1_n_3 ;
  wire \with_reg.q_div_rem_dat_reg[7]_i_1_n_0 ;
  wire \with_reg.q_div_rem_dat_reg[7]_i_1_n_1 ;
  wire \with_reg.q_div_rem_dat_reg[7]_i_1_n_2 ;
  wire \with_reg.q_div_rem_dat_reg[7]_i_1_n_3 ;
  wire [3:0]\NLW_with_reg.q_div_rem_dat_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_with_reg.q_div_rem_dat_reg[16]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    o_div_quo_dat_INST_0
       (.I0(i_div_rem_dat[16]),
        .O(o_div_quo_dat));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[11]_i_2 
       (.I0(i_div_dvr_dat[11]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[10]),
        .O(\with_reg.q_div_rem_dat[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[11]_i_3 
       (.I0(i_div_dvr_dat[10]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[9]),
        .O(\with_reg.q_div_rem_dat[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[11]_i_4 
       (.I0(i_div_dvr_dat[9]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[8]),
        .O(\with_reg.q_div_rem_dat[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[11]_i_5 
       (.I0(i_div_dvr_dat[8]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[7]),
        .O(\with_reg.q_div_rem_dat[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[15]_i_2 
       (.I0(i_div_dvr_dat[15]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[14]),
        .O(\with_reg.q_div_rem_dat[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[15]_i_3 
       (.I0(i_div_dvr_dat[14]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[13]),
        .O(\with_reg.q_div_rem_dat[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[15]_i_4 
       (.I0(i_div_dvr_dat[13]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[12]),
        .O(\with_reg.q_div_rem_dat[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[15]_i_5 
       (.I0(i_div_dvr_dat[12]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[11]),
        .O(\with_reg.q_div_rem_dat[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \with_reg.q_div_rem_dat[16]_i_2 
       (.I0(i_div_rem_dat[16]),
        .I1(i_div_rem_dat[15]),
        .O(\with_reg.q_div_rem_dat[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \with_reg.q_div_rem_dat[3]_i_2 
       (.I0(i_div_rem_dat[16]),
        .O(\with_reg.q_div_rem_dat[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[3]_i_3 
       (.I0(i_div_dvr_dat[3]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[2]),
        .O(\with_reg.q_div_rem_dat[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[3]_i_4 
       (.I0(i_div_dvr_dat[2]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[1]),
        .O(\with_reg.q_div_rem_dat[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[3]_i_5 
       (.I0(i_div_dvr_dat[1]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[0]),
        .O(\with_reg.q_div_rem_dat[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hA)) 
    \with_reg.q_div_rem_dat[3]_i_6 
       (.I0(i_div_dvr_dat[0]),
        .I1(i_div_rem_dat[16]),
        .O(\with_reg.q_div_rem_dat[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[7]_i_2 
       (.I0(i_div_dvr_dat[7]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[6]),
        .O(\with_reg.q_div_rem_dat[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[7]_i_3 
       (.I0(i_div_dvr_dat[6]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[5]),
        .O(\with_reg.q_div_rem_dat[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[7]_i_4 
       (.I0(i_div_dvr_dat[5]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[4]),
        .O(\with_reg.q_div_rem_dat[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \with_reg.q_div_rem_dat[7]_i_5 
       (.I0(i_div_dvr_dat[4]),
        .I1(i_div_rem_dat[16]),
        .I2(i_div_rem_dat[3]),
        .O(\with_reg.q_div_rem_dat[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[0] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[0]),
        .Q(o_div_rem_dat[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[10] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[10]),
        .Q(o_div_rem_dat[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[11] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[11]),
        .Q(o_div_rem_dat[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \with_reg.q_div_rem_dat_reg[11]_i_1 
       (.CI(\with_reg.q_div_rem_dat_reg[7]_i_1_n_0 ),
        .CO({\with_reg.q_div_rem_dat_reg[11]_i_1_n_0 ,\with_reg.q_div_rem_dat_reg[11]_i_1_n_1 ,\with_reg.q_div_rem_dat_reg[11]_i_1_n_2 ,\with_reg.q_div_rem_dat_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(i_div_rem_dat[10:7]),
        .O(w_div_rem_dat[11:8]),
        .S({\with_reg.q_div_rem_dat[11]_i_2_n_0 ,\with_reg.q_div_rem_dat[11]_i_3_n_0 ,\with_reg.q_div_rem_dat[11]_i_4_n_0 ,\with_reg.q_div_rem_dat[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[12] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[12]),
        .Q(o_div_rem_dat[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[13] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[13]),
        .Q(o_div_rem_dat[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[14] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[14]),
        .Q(o_div_rem_dat[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[15] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[15]),
        .Q(o_div_rem_dat[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \with_reg.q_div_rem_dat_reg[15]_i_1 
       (.CI(\with_reg.q_div_rem_dat_reg[11]_i_1_n_0 ),
        .CO({\with_reg.q_div_rem_dat_reg[15]_i_1_n_0 ,\with_reg.q_div_rem_dat_reg[15]_i_1_n_1 ,\with_reg.q_div_rem_dat_reg[15]_i_1_n_2 ,\with_reg.q_div_rem_dat_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(i_div_rem_dat[14:11]),
        .O(w_div_rem_dat[15:12]),
        .S({\with_reg.q_div_rem_dat[15]_i_2_n_0 ,\with_reg.q_div_rem_dat[15]_i_3_n_0 ,\with_reg.q_div_rem_dat[15]_i_4_n_0 ,\with_reg.q_div_rem_dat[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[16] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[16]),
        .Q(o_div_rem_dat[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \with_reg.q_div_rem_dat_reg[16]_i_1 
       (.CI(\with_reg.q_div_rem_dat_reg[15]_i_1_n_0 ),
        .CO(\NLW_with_reg.q_div_rem_dat_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_with_reg.q_div_rem_dat_reg[16]_i_1_O_UNCONNECTED [3:1],w_div_rem_dat[16]}),
        .S({1'b0,1'b0,1'b0,\with_reg.q_div_rem_dat[16]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[1] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[1]),
        .Q(o_div_rem_dat[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[2] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[2]),
        .Q(o_div_rem_dat[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[3] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[3]),
        .Q(o_div_rem_dat[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \with_reg.q_div_rem_dat_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\with_reg.q_div_rem_dat_reg[3]_i_1_n_0 ,\with_reg.q_div_rem_dat_reg[3]_i_1_n_1 ,\with_reg.q_div_rem_dat_reg[3]_i_1_n_2 ,\with_reg.q_div_rem_dat_reg[3]_i_1_n_3 }),
        .CYINIT(i_div_dvd_dat),
        .DI({i_div_rem_dat[2:0],\with_reg.q_div_rem_dat[3]_i_2_n_0 }),
        .O(w_div_rem_dat[3:0]),
        .S({\with_reg.q_div_rem_dat[3]_i_3_n_0 ,\with_reg.q_div_rem_dat[3]_i_4_n_0 ,\with_reg.q_div_rem_dat[3]_i_5_n_0 ,\with_reg.q_div_rem_dat[3]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[4] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[4]),
        .Q(o_div_rem_dat[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[5] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[5]),
        .Q(o_div_rem_dat[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[6] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[6]),
        .Q(o_div_rem_dat[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[7] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[7]),
        .Q(o_div_rem_dat[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \with_reg.q_div_rem_dat_reg[7]_i_1 
       (.CI(\with_reg.q_div_rem_dat_reg[3]_i_1_n_0 ),
        .CO({\with_reg.q_div_rem_dat_reg[7]_i_1_n_0 ,\with_reg.q_div_rem_dat_reg[7]_i_1_n_1 ,\with_reg.q_div_rem_dat_reg[7]_i_1_n_2 ,\with_reg.q_div_rem_dat_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(i_div_rem_dat[6:3]),
        .O(w_div_rem_dat[7:4]),
        .S({\with_reg.q_div_rem_dat[7]_i_2_n_0 ,\with_reg.q_div_rem_dat[7]_i_3_n_0 ,\with_reg.q_div_rem_dat[7]_i_4_n_0 ,\with_reg.q_div_rem_dat[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[8] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[8]),
        .Q(o_div_rem_dat[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \with_reg.q_div_rem_dat_reg[9] 
       (.C(i_div_a_clk_p),
        .CE(1'b1),
        .D(w_div_rem_dat[9]),
        .Q(o_div_rem_dat[9]),
        .R(1'b0));
endmodule

(* DVR_W = "16" *) (* ORIG_REF_NAME = "divider_div" *) (* QUOTIENT_ONLY = "1'b1" *) 
(* REM_W = "17" *) (* USE_REG = "1'b1" *) (* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_div__parameterized0
   (i_div_a_clk_p,
    i_div_dvd_dat,
    i_div_rem_dat,
    i_div_dvr_dat,
    o_div_rem_dat,
    o_div_quo_dat);
  input i_div_a_clk_p;
  input i_div_dvd_dat;
  input [16:0]i_div_rem_dat;
  input [15:0]i_div_dvr_dat;
  output [16:0]o_div_rem_dat;
  output o_div_quo_dat;

  wire \<const0> ;
  wire [16:0]i_div_rem_dat;
  wire o_div_quo_dat;

  assign o_div_rem_dat[16] = \<const0> ;
  assign o_div_rem_dat[15] = \<const0> ;
  assign o_div_rem_dat[14] = \<const0> ;
  assign o_div_rem_dat[13] = \<const0> ;
  assign o_div_rem_dat[12] = \<const0> ;
  assign o_div_rem_dat[11] = \<const0> ;
  assign o_div_rem_dat[10] = \<const0> ;
  assign o_div_rem_dat[9] = \<const0> ;
  assign o_div_rem_dat[8] = \<const0> ;
  assign o_div_rem_dat[7] = \<const0> ;
  assign o_div_rem_dat[6] = \<const0> ;
  assign o_div_rem_dat[5] = \<const0> ;
  assign o_div_rem_dat[4] = \<const0> ;
  assign o_div_rem_dat[3] = \<const0> ;
  assign o_div_rem_dat[2] = \<const0> ;
  assign o_div_rem_dat[1] = \<const0> ;
  assign o_div_rem_dat[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    o_div_quo_dat_INST_0
       (.I0(i_div_rem_dat[16]),
        .O(o_div_quo_dat));
endmodule

(* DVR_W = "16" *) (* ORIG_REF_NAME = "divider_div" *) (* QUOTIENT_ONLY = "1'b1" *) 
(* REM_W = "17" *) (* USE_REG = "1'b1" *) (* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_div__parameterized0__1
   (i_div_a_clk_p,
    i_div_dvd_dat,
    i_div_rem_dat,
    i_div_dvr_dat,
    o_div_rem_dat,
    o_div_quo_dat);
  input i_div_a_clk_p;
  input i_div_dvd_dat;
  input [16:0]i_div_rem_dat;
  input [15:0]i_div_dvr_dat;
  output [16:0]o_div_rem_dat;
  output o_div_quo_dat;

  wire \<const0> ;
  wire [16:0]i_div_rem_dat;
  wire o_div_quo_dat;

  assign o_div_rem_dat[16] = \<const0> ;
  assign o_div_rem_dat[15] = \<const0> ;
  assign o_div_rem_dat[14] = \<const0> ;
  assign o_div_rem_dat[13] = \<const0> ;
  assign o_div_rem_dat[12] = \<const0> ;
  assign o_div_rem_dat[11] = \<const0> ;
  assign o_div_rem_dat[10] = \<const0> ;
  assign o_div_rem_dat[9] = \<const0> ;
  assign o_div_rem_dat[8] = \<const0> ;
  assign o_div_rem_dat[7] = \<const0> ;
  assign o_div_rem_dat[6] = \<const0> ;
  assign o_div_rem_dat[5] = \<const0> ;
  assign o_div_rem_dat[4] = \<const0> ;
  assign o_div_rem_dat[3] = \<const0> ;
  assign o_div_rem_dat[2] = \<const0> ;
  assign o_div_rem_dat[1] = \<const0> ;
  assign o_div_rem_dat[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    o_div_quo_dat_INST_0
       (.I0(i_div_rem_dat[16]),
        .O(o_div_quo_dat));
endmodule

(* DVR_W = "16" *) (* ORIG_REF_NAME = "divider_div" *) (* QUOTIENT_ONLY = "1'b1" *) 
(* REM_W = "17" *) (* USE_REG = "1'b1" *) (* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_div__parameterized0__2
   (i_div_a_clk_p,
    i_div_dvd_dat,
    i_div_rem_dat,
    i_div_dvr_dat,
    o_div_rem_dat,
    o_div_quo_dat);
  input i_div_a_clk_p;
  input i_div_dvd_dat;
  input [16:0]i_div_rem_dat;
  input [15:0]i_div_dvr_dat;
  output [16:0]o_div_rem_dat;
  output o_div_quo_dat;

  wire \<const0> ;
  wire [16:0]i_div_rem_dat;
  wire o_div_quo_dat;

  assign o_div_rem_dat[16] = \<const0> ;
  assign o_div_rem_dat[15] = \<const0> ;
  assign o_div_rem_dat[14] = \<const0> ;
  assign o_div_rem_dat[13] = \<const0> ;
  assign o_div_rem_dat[12] = \<const0> ;
  assign o_div_rem_dat[11] = \<const0> ;
  assign o_div_rem_dat[10] = \<const0> ;
  assign o_div_rem_dat[9] = \<const0> ;
  assign o_div_rem_dat[8] = \<const0> ;
  assign o_div_rem_dat[7] = \<const0> ;
  assign o_div_rem_dat[6] = \<const0> ;
  assign o_div_rem_dat[5] = \<const0> ;
  assign o_div_rem_dat[4] = \<const0> ;
  assign o_div_rem_dat[3] = \<const0> ;
  assign o_div_rem_dat[2] = \<const0> ;
  assign o_div_rem_dat[1] = \<const0> ;
  assign o_div_rem_dat[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    o_div_quo_dat_INST_0
       (.I0(i_div_rem_dat[16]),
        .O(o_div_quo_dat));
endmodule

(* DVR_W = "16" *) (* ORIG_REF_NAME = "divider_div" *) (* QUOTIENT_ONLY = "1'b1" *) 
(* REM_W = "17" *) (* USE_REG = "1'b1" *) (* keep_hierarchy = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider_div__parameterized0__3
   (i_div_a_clk_p,
    i_div_dvd_dat,
    i_div_rem_dat,
    i_div_dvr_dat,
    o_div_rem_dat,
    o_div_quo_dat);
  input i_div_a_clk_p;
  input i_div_dvd_dat;
  input [16:0]i_div_rem_dat;
  input [15:0]i_div_dvr_dat;
  output [16:0]o_div_rem_dat;
  output o_div_quo_dat;

  wire \<const0> ;
  wire [16:0]i_div_rem_dat;
  wire o_div_quo_dat;

  assign o_div_rem_dat[16] = \<const0> ;
  assign o_div_rem_dat[15] = \<const0> ;
  assign o_div_rem_dat[14] = \<const0> ;
  assign o_div_rem_dat[13] = \<const0> ;
  assign o_div_rem_dat[12] = \<const0> ;
  assign o_div_rem_dat[11] = \<const0> ;
  assign o_div_rem_dat[10] = \<const0> ;
  assign o_div_rem_dat[9] = \<const0> ;
  assign o_div_rem_dat[8] = \<const0> ;
  assign o_div_rem_dat[7] = \<const0> ;
  assign o_div_rem_dat[6] = \<const0> ;
  assign o_div_rem_dat[5] = \<const0> ;
  assign o_div_rem_dat[4] = \<const0> ;
  assign o_div_rem_dat[3] = \<const0> ;
  assign o_div_rem_dat[2] = \<const0> ;
  assign o_div_rem_dat[1] = \<const0> ;
  assign o_div_rem_dat[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    o_div_quo_dat_INST_0
       (.I0(i_div_rem_dat[16]),
        .O(o_div_quo_dat));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_max_min
   (q_last_reg_0,
    q_last_2,
    SR,
    E,
    i_wr_data,
    q_last,
    i_clk,
    q_valid_reg_0,
    q_valid_reg_1,
    q_valid_reg_2,
    q_valid_reg_3,
    \q_data_reg[15]_0 ,
    s_tdata);
  output q_last_reg_0;
  output q_last_2;
  output [0:0]SR;
  output [0:0]E;
  output [23:0]i_wr_data;
  input [0:0]q_last;
  input i_clk;
  input q_valid_reg_0;
  input q_valid_reg_1;
  input q_valid_reg_2;
  input q_valid_reg_3;
  input [0:0]\q_data_reg[15]_0 ;
  input [15:0]s_tdata;

  wire [0:0]E;
  wire [0:0]SR;
  wire \block[0].min_max[1].MIN_MAX/q_valid_2 ;
  wire i_clk;
  wire [23:0]i_wr_data;
  wire p_0_in;
  wire [15:0]q_buf;
  wire [7:0]q_cnt_buf;
  wire \q_cnt_buf[0]_i_1_n_0 ;
  wire \q_cnt_buf[1]_i_1_n_0 ;
  wire \q_cnt_buf[2]_i_1_n_0 ;
  wire \q_cnt_buf[3]_i_1_n_0 ;
  wire \q_cnt_buf[4]_i_1_n_0 ;
  wire \q_cnt_buf[5]_i_1_n_0 ;
  wire \q_cnt_buf[6]_i_1_n_0 ;
  wire \q_cnt_buf[7]_i_1_n_0 ;
  wire \q_cnt_buf[7]_i_2_n_0 ;
  wire q_cnt_buf_0;
  wire [15:0]q_data;
  wire [15:0]q_data_2;
  wire [7:0]q_data_cnt_reg;
  wire [15:15]q_data_diff0;
  wire q_data_diff0_carry__0_i_1_n_0;
  wire q_data_diff0_carry__0_i_2_n_0;
  wire q_data_diff0_carry__0_i_3_n_0;
  wire q_data_diff0_carry__0_i_4_n_0;
  wire q_data_diff0_carry__0_n_0;
  wire q_data_diff0_carry__0_n_1;
  wire q_data_diff0_carry__0_n_2;
  wire q_data_diff0_carry__0_n_3;
  wire q_data_diff0_carry__1_i_1_n_0;
  wire q_data_diff0_carry__1_i_2_n_0;
  wire q_data_diff0_carry__1_i_3_n_0;
  wire q_data_diff0_carry__1_i_4_n_0;
  wire q_data_diff0_carry__1_n_0;
  wire q_data_diff0_carry__1_n_1;
  wire q_data_diff0_carry__1_n_2;
  wire q_data_diff0_carry__1_n_3;
  wire q_data_diff0_carry__2_i_1_n_0;
  wire q_data_diff0_carry__2_i_2_n_0;
  wire q_data_diff0_carry__2_i_3_n_0;
  wire q_data_diff0_carry__2_i_4_n_0;
  wire q_data_diff0_carry__2_n_1;
  wire q_data_diff0_carry__2_n_2;
  wire q_data_diff0_carry__2_n_3;
  wire q_data_diff0_carry_i_1_n_0;
  wire q_data_diff0_carry_i_2_n_0;
  wire q_data_diff0_carry_i_3_n_0;
  wire q_data_diff0_carry_i_4_n_0;
  wire q_data_diff0_carry_n_0;
  wire q_data_diff0_carry_n_1;
  wire q_data_diff0_carry_n_2;
  wire q_data_diff0_carry_n_3;
  wire [0:0]\q_data_reg[15]_0 ;
  wire [0:0]q_last;
  wire q_last_2;
  wire q_last_reg_0;
  wire q_valid;
  wire q_valid_2_i_1_n_0;
  wire q_valid_i_1__0_n_0;
  wire q_valid_reg_0;
  wire q_valid_reg_1;
  wire q_valid_reg_2;
  wire q_valid_reg_3;
  wire [15:0]s_tdata;
  wire [3:0]NLW_q_data_diff0_carry_O_UNCONNECTED;
  wire [3:0]NLW_q_data_diff0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_q_data_diff0_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_q_data_diff0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_q_data_diff0_carry__2_O_UNCONNECTED;

  FDRE \o_indx_data_reg[0] 
       (.C(i_clk),
        .CE(SR),
        .D(q_cnt_buf[0]),
        .Q(i_wr_data[0]),
        .R(1'b0));
  FDRE \o_indx_data_reg[1] 
       (.C(i_clk),
        .CE(SR),
        .D(q_cnt_buf[1]),
        .Q(i_wr_data[1]),
        .R(1'b0));
  FDRE \o_indx_data_reg[2] 
       (.C(i_clk),
        .CE(SR),
        .D(q_cnt_buf[2]),
        .Q(i_wr_data[2]),
        .R(1'b0));
  FDRE \o_indx_data_reg[3] 
       (.C(i_clk),
        .CE(SR),
        .D(q_cnt_buf[3]),
        .Q(i_wr_data[3]),
        .R(1'b0));
  FDRE \o_indx_data_reg[4] 
       (.C(i_clk),
        .CE(SR),
        .D(q_cnt_buf[4]),
        .Q(i_wr_data[4]),
        .R(1'b0));
  FDRE \o_indx_data_reg[5] 
       (.C(i_clk),
        .CE(SR),
        .D(q_cnt_buf[5]),
        .Q(i_wr_data[5]),
        .R(1'b0));
  FDRE \o_indx_data_reg[6] 
       (.C(i_clk),
        .CE(SR),
        .D(q_cnt_buf[6]),
        .Q(i_wr_data[6]),
        .R(1'b0));
  FDRE \o_indx_data_reg[7] 
       (.C(i_clk),
        .CE(SR),
        .D(q_cnt_buf[7]),
        .Q(i_wr_data[7]),
        .R(1'b0));
  FDRE \o_res_data_reg[0] 
       (.C(i_clk),
        .CE(SR),
        .D(q_buf[0]),
        .Q(i_wr_data[8]),
        .R(1'b0));
  FDRE \o_res_data_reg[10] 
       (.C(i_clk),
        .CE(SR),
        .D(q_buf[10]),
        .Q(i_wr_data[18]),
        .R(1'b0));
  FDRE \o_res_data_reg[11] 
       (.C(i_clk),
        .CE(SR),
        .D(q_buf[11]),
        .Q(i_wr_data[19]),
        .R(1'b0));
  FDRE \o_res_data_reg[12] 
       (.C(i_clk),
        .CE(SR),
        .D(q_buf[12]),
        .Q(i_wr_data[20]),
        .R(1'b0));
  FDRE \o_res_data_reg[13] 
       (.C(i_clk),
        .CE(SR),
        .D(q_buf[13]),
        .Q(i_wr_data[21]),
        .R(1'b0));
  FDRE \o_res_data_reg[14] 
       (.C(i_clk),
        .CE(SR),
        .D(q_buf[14]),
        .Q(i_wr_data[22]),
        .R(1'b0));
  FDRE \o_res_data_reg[15] 
       (.C(i_clk),
        .CE(SR),
        .D(q_buf[15]),
        .Q(i_wr_data[23]),
        .R(1'b0));
  FDRE \o_res_data_reg[1] 
       (.C(i_clk),
        .CE(SR),
        .D(q_buf[1]),
        .Q(i_wr_data[9]),
        .R(1'b0));
  FDRE \o_res_data_reg[2] 
       (.C(i_clk),
        .CE(SR),
        .D(q_buf[2]),
        .Q(i_wr_data[10]),
        .R(1'b0));
  FDRE \o_res_data_reg[3] 
       (.C(i_clk),
        .CE(SR),
        .D(q_buf[3]),
        .Q(i_wr_data[11]),
        .R(1'b0));
  FDRE \o_res_data_reg[4] 
       (.C(i_clk),
        .CE(SR),
        .D(q_buf[4]),
        .Q(i_wr_data[12]),
        .R(1'b0));
  FDRE \o_res_data_reg[5] 
       (.C(i_clk),
        .CE(SR),
        .D(q_buf[5]),
        .Q(i_wr_data[13]),
        .R(1'b0));
  FDRE \o_res_data_reg[6] 
       (.C(i_clk),
        .CE(SR),
        .D(q_buf[6]),
        .Q(i_wr_data[14]),
        .R(1'b0));
  FDRE \o_res_data_reg[7] 
       (.C(i_clk),
        .CE(SR),
        .D(q_buf[7]),
        .Q(i_wr_data[15]),
        .R(1'b0));
  FDRE \o_res_data_reg[8] 
       (.C(i_clk),
        .CE(SR),
        .D(q_buf[8]),
        .Q(i_wr_data[16]),
        .R(1'b0));
  FDRE \o_res_data_reg[9] 
       (.C(i_clk),
        .CE(SR),
        .D(q_buf[9]),
        .Q(i_wr_data[17]),
        .R(1'b0));
  FDRE o_valid_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(SR),
        .Q(E),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \q_buf[15]_i_1 
       (.I0(\block[0].min_max[1].MIN_MAX/q_valid_2 ),
        .I1(p_0_in),
        .O(q_cnt_buf_0));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[0] 
       (.C(i_clk),
        .CE(q_cnt_buf_0),
        .D(q_data_2[0]),
        .Q(q_buf[0]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[10] 
       (.C(i_clk),
        .CE(q_cnt_buf_0),
        .D(q_data_2[10]),
        .Q(q_buf[10]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[11] 
       (.C(i_clk),
        .CE(q_cnt_buf_0),
        .D(q_data_2[11]),
        .Q(q_buf[11]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[12] 
       (.C(i_clk),
        .CE(q_cnt_buf_0),
        .D(q_data_2[12]),
        .Q(q_buf[12]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[13] 
       (.C(i_clk),
        .CE(q_cnt_buf_0),
        .D(q_data_2[13]),
        .Q(q_buf[13]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[14] 
       (.C(i_clk),
        .CE(q_cnt_buf_0),
        .D(q_data_2[14]),
        .Q(q_buf[14]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_buf_reg[15] 
       (.C(i_clk),
        .CE(q_cnt_buf_0),
        .D(q_data_2[15]),
        .Q(q_buf[15]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[1] 
       (.C(i_clk),
        .CE(q_cnt_buf_0),
        .D(q_data_2[1]),
        .Q(q_buf[1]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[2] 
       (.C(i_clk),
        .CE(q_cnt_buf_0),
        .D(q_data_2[2]),
        .Q(q_buf[2]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[3] 
       (.C(i_clk),
        .CE(q_cnt_buf_0),
        .D(q_data_2[3]),
        .Q(q_buf[3]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[4] 
       (.C(i_clk),
        .CE(q_cnt_buf_0),
        .D(q_data_2[4]),
        .Q(q_buf[4]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[5] 
       (.C(i_clk),
        .CE(q_cnt_buf_0),
        .D(q_data_2[5]),
        .Q(q_buf[5]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[6] 
       (.C(i_clk),
        .CE(q_cnt_buf_0),
        .D(q_data_2[6]),
        .Q(q_buf[6]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[7] 
       (.C(i_clk),
        .CE(q_cnt_buf_0),
        .D(q_data_2[7]),
        .Q(q_buf[7]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[8] 
       (.C(i_clk),
        .CE(q_cnt_buf_0),
        .D(q_data_2[8]),
        .Q(q_buf[8]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[9] 
       (.C(i_clk),
        .CE(q_cnt_buf_0),
        .D(q_data_2[9]),
        .Q(q_buf[9]),
        .S(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \q_cnt_buf[0]_i_1 
       (.I0(q_data_cnt_reg[0]),
        .O(\q_cnt_buf[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_cnt_buf[1]_i_1 
       (.I0(q_data_cnt_reg[0]),
        .I1(q_data_cnt_reg[1]),
        .O(\q_cnt_buf[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_cnt_buf[2]_i_1 
       (.I0(q_data_cnt_reg[0]),
        .I1(q_data_cnt_reg[1]),
        .I2(q_data_cnt_reg[2]),
        .O(\q_cnt_buf[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q_cnt_buf[3]_i_1 
       (.I0(q_data_cnt_reg[1]),
        .I1(q_data_cnt_reg[0]),
        .I2(q_data_cnt_reg[2]),
        .I3(q_data_cnt_reg[3]),
        .O(\q_cnt_buf[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q_cnt_buf[4]_i_1 
       (.I0(q_data_cnt_reg[2]),
        .I1(q_data_cnt_reg[0]),
        .I2(q_data_cnt_reg[1]),
        .I3(q_data_cnt_reg[3]),
        .I4(q_data_cnt_reg[4]),
        .O(\q_cnt_buf[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \q_cnt_buf[5]_i_1 
       (.I0(q_data_cnt_reg[3]),
        .I1(q_data_cnt_reg[1]),
        .I2(q_data_cnt_reg[0]),
        .I3(q_data_cnt_reg[2]),
        .I4(q_data_cnt_reg[4]),
        .I5(q_data_cnt_reg[5]),
        .O(\q_cnt_buf[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_cnt_buf[6]_i_1 
       (.I0(\q_cnt_buf[7]_i_2_n_0 ),
        .I1(q_data_cnt_reg[6]),
        .O(\q_cnt_buf[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_cnt_buf[7]_i_1 
       (.I0(\q_cnt_buf[7]_i_2_n_0 ),
        .I1(q_data_cnt_reg[6]),
        .I2(q_data_cnt_reg[7]),
        .O(\q_cnt_buf[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \q_cnt_buf[7]_i_2 
       (.I0(q_data_cnt_reg[5]),
        .I1(q_data_cnt_reg[3]),
        .I2(q_data_cnt_reg[1]),
        .I3(q_data_cnt_reg[0]),
        .I4(q_data_cnt_reg[2]),
        .I5(q_data_cnt_reg[4]),
        .O(\q_cnt_buf[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[0] 
       (.C(i_clk),
        .CE(q_cnt_buf_0),
        .D(\q_cnt_buf[0]_i_1_n_0 ),
        .Q(q_cnt_buf[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[1] 
       (.C(i_clk),
        .CE(q_cnt_buf_0),
        .D(\q_cnt_buf[1]_i_1_n_0 ),
        .Q(q_cnt_buf[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[2] 
       (.C(i_clk),
        .CE(q_cnt_buf_0),
        .D(\q_cnt_buf[2]_i_1_n_0 ),
        .Q(q_cnt_buf[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[3] 
       (.C(i_clk),
        .CE(q_cnt_buf_0),
        .D(\q_cnt_buf[3]_i_1_n_0 ),
        .Q(q_cnt_buf[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[4] 
       (.C(i_clk),
        .CE(q_cnt_buf_0),
        .D(\q_cnt_buf[4]_i_1_n_0 ),
        .Q(q_cnt_buf[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[5] 
       (.C(i_clk),
        .CE(q_cnt_buf_0),
        .D(\q_cnt_buf[5]_i_1_n_0 ),
        .Q(q_cnt_buf[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[6] 
       (.C(i_clk),
        .CE(q_cnt_buf_0),
        .D(\q_cnt_buf[6]_i_1_n_0 ),
        .Q(q_cnt_buf[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[7] 
       (.C(i_clk),
        .CE(q_cnt_buf_0),
        .D(\q_cnt_buf[7]_i_1_n_0 ),
        .Q(q_cnt_buf[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[0] 
       (.C(i_clk),
        .CE(q_valid),
        .D(q_data[0]),
        .Q(q_data_2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[10] 
       (.C(i_clk),
        .CE(q_valid),
        .D(q_data[10]),
        .Q(q_data_2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[11] 
       (.C(i_clk),
        .CE(q_valid),
        .D(q_data[11]),
        .Q(q_data_2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[12] 
       (.C(i_clk),
        .CE(q_valid),
        .D(q_data[12]),
        .Q(q_data_2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[13] 
       (.C(i_clk),
        .CE(q_valid),
        .D(q_data[13]),
        .Q(q_data_2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[14] 
       (.C(i_clk),
        .CE(q_valid),
        .D(q_data[14]),
        .Q(q_data_2[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[15] 
       (.C(i_clk),
        .CE(q_valid),
        .D(q_data[15]),
        .Q(q_data_2[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[1] 
       (.C(i_clk),
        .CE(q_valid),
        .D(q_data[1]),
        .Q(q_data_2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[2] 
       (.C(i_clk),
        .CE(q_valid),
        .D(q_data[2]),
        .Q(q_data_2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[3] 
       (.C(i_clk),
        .CE(q_valid),
        .D(q_data[3]),
        .Q(q_data_2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[4] 
       (.C(i_clk),
        .CE(q_valid),
        .D(q_data[4]),
        .Q(q_data_2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[5] 
       (.C(i_clk),
        .CE(q_valid),
        .D(q_data[5]),
        .Q(q_data_2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[6] 
       (.C(i_clk),
        .CE(q_valid),
        .D(q_data[6]),
        .Q(q_data_2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[7] 
       (.C(i_clk),
        .CE(q_valid),
        .D(q_data[7]),
        .Q(q_data_2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[8] 
       (.C(i_clk),
        .CE(q_valid),
        .D(q_data[8]),
        .Q(q_data_2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[9] 
       (.C(i_clk),
        .CE(q_valid),
        .D(q_data[9]),
        .Q(q_data_2[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[0] 
       (.C(i_clk),
        .CE(\block[0].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[0]_i_1_n_0 ),
        .Q(q_data_cnt_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[1] 
       (.C(i_clk),
        .CE(\block[0].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[1]_i_1_n_0 ),
        .Q(q_data_cnt_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[2] 
       (.C(i_clk),
        .CE(\block[0].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[2]_i_1_n_0 ),
        .Q(q_data_cnt_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[3] 
       (.C(i_clk),
        .CE(\block[0].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[3]_i_1_n_0 ),
        .Q(q_data_cnt_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[4] 
       (.C(i_clk),
        .CE(\block[0].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[4]_i_1_n_0 ),
        .Q(q_data_cnt_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[5] 
       (.C(i_clk),
        .CE(\block[0].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[5]_i_1_n_0 ),
        .Q(q_data_cnt_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[6] 
       (.C(i_clk),
        .CE(\block[0].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[6]_i_1_n_0 ),
        .Q(q_data_cnt_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[7] 
       (.C(i_clk),
        .CE(\block[0].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[7]_i_1_n_0 ),
        .Q(q_data_cnt_reg[7]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 q_data_diff0_carry
       (.CI(1'b0),
        .CO({q_data_diff0_carry_n_0,q_data_diff0_carry_n_1,q_data_diff0_carry_n_2,q_data_diff0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(q_buf[3:0]),
        .O(NLW_q_data_diff0_carry_O_UNCONNECTED[3:0]),
        .S({q_data_diff0_carry_i_1_n_0,q_data_diff0_carry_i_2_n_0,q_data_diff0_carry_i_3_n_0,q_data_diff0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 q_data_diff0_carry__0
       (.CI(q_data_diff0_carry_n_0),
        .CO({q_data_diff0_carry__0_n_0,q_data_diff0_carry__0_n_1,q_data_diff0_carry__0_n_2,q_data_diff0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(q_buf[7:4]),
        .O(NLW_q_data_diff0_carry__0_O_UNCONNECTED[3:0]),
        .S({q_data_diff0_carry__0_i_1_n_0,q_data_diff0_carry__0_i_2_n_0,q_data_diff0_carry__0_i_3_n_0,q_data_diff0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__0_i_1
       (.I0(q_buf[7]),
        .I1(q_data[7]),
        .O(q_data_diff0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__0_i_2
       (.I0(q_buf[6]),
        .I1(q_data[6]),
        .O(q_data_diff0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__0_i_3
       (.I0(q_buf[5]),
        .I1(q_data[5]),
        .O(q_data_diff0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__0_i_4
       (.I0(q_buf[4]),
        .I1(q_data[4]),
        .O(q_data_diff0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 q_data_diff0_carry__1
       (.CI(q_data_diff0_carry__0_n_0),
        .CO({q_data_diff0_carry__1_n_0,q_data_diff0_carry__1_n_1,q_data_diff0_carry__1_n_2,q_data_diff0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(q_buf[11:8]),
        .O(NLW_q_data_diff0_carry__1_O_UNCONNECTED[3:0]),
        .S({q_data_diff0_carry__1_i_1_n_0,q_data_diff0_carry__1_i_2_n_0,q_data_diff0_carry__1_i_3_n_0,q_data_diff0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__1_i_1
       (.I0(q_buf[11]),
        .I1(q_data[11]),
        .O(q_data_diff0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__1_i_2
       (.I0(q_buf[10]),
        .I1(q_data[10]),
        .O(q_data_diff0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__1_i_3
       (.I0(q_buf[9]),
        .I1(q_data[9]),
        .O(q_data_diff0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__1_i_4
       (.I0(q_buf[8]),
        .I1(q_data[8]),
        .O(q_data_diff0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 q_data_diff0_carry__2
       (.CI(q_data_diff0_carry__1_n_0),
        .CO({NLW_q_data_diff0_carry__2_CO_UNCONNECTED[3],q_data_diff0_carry__2_n_1,q_data_diff0_carry__2_n_2,q_data_diff0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,q_buf[14:12]}),
        .O({q_data_diff0,NLW_q_data_diff0_carry__2_O_UNCONNECTED[2:0]}),
        .S({q_data_diff0_carry__2_i_1_n_0,q_data_diff0_carry__2_i_2_n_0,q_data_diff0_carry__2_i_3_n_0,q_data_diff0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__2_i_1
       (.I0(q_buf[15]),
        .I1(q_data[15]),
        .O(q_data_diff0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__2_i_2
       (.I0(q_buf[14]),
        .I1(q_data[14]),
        .O(q_data_diff0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__2_i_3
       (.I0(q_buf[13]),
        .I1(q_data[13]),
        .O(q_data_diff0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__2_i_4
       (.I0(q_buf[12]),
        .I1(q_data[12]),
        .O(q_data_diff0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry_i_1
       (.I0(q_buf[3]),
        .I1(q_data[3]),
        .O(q_data_diff0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry_i_2
       (.I0(q_buf[2]),
        .I1(q_data[2]),
        .O(q_data_diff0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry_i_3
       (.I0(q_buf[1]),
        .I1(q_data[1]),
        .O(q_data_diff0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry_i_4
       (.I0(q_buf[0]),
        .I1(q_data[0]),
        .O(q_data_diff0_carry_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_diff_reg[15] 
       (.C(i_clk),
        .CE(q_valid),
        .D(q_data_diff0),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[0] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[0]),
        .Q(q_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[10] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[10]),
        .Q(q_data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[11] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[11]),
        .Q(q_data[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[12] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[12]),
        .Q(q_data[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[13] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[13]),
        .Q(q_data[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[14] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[14]),
        .Q(q_data[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[15] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[15]),
        .Q(q_data[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[1] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[1]),
        .Q(q_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[2] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[2]),
        .Q(q_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[3] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[3]),
        .Q(q_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[4] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[4]),
        .Q(q_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[5] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[5]),
        .Q(q_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[6] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[6]),
        .Q(q_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[7] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[7]),
        .Q(q_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[8] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[8]),
        .Q(q_data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[9] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[9]),
        .Q(q_data[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q_last_2_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(q_last_reg_0),
        .Q(q_last_2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    q_last_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(q_last),
        .Q(q_last_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    q_valid_2_i_1
       (.I0(\block[0].min_max[1].MIN_MAX/q_valid_2 ),
        .I1(q_valid),
        .O(q_valid_2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_valid_2_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(q_valid_2_i_1_n_0),
        .Q(\block[0].min_max[1].MIN_MAX/q_valid_2 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAAAEA)) 
    q_valid_i_1__0
       (.I0(q_valid),
        .I1(q_valid_reg_0),
        .I2(q_valid_reg_1),
        .I3(q_valid_reg_2),
        .I4(q_valid_reg_3),
        .O(q_valid_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_valid_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(q_valid_i_1__0_n_0),
        .Q(q_valid),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    w_last_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(q_last_2),
        .Q(SR),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "max_min" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_max_min_11
   (o_valid_reg_0,
    \cnt_reg[3] ,
    \cnt_reg[6] ,
    Q,
    \o_res_data_reg[15]_0 ,
    E,
    i_clk,
    q_valid_reg_0,
    q_valid_reg_1,
    s_tvalid,
    q_valid_reg_2,
    \q_sum_buf_reg[0] ,
    \q_sum_buf_reg[0]_0 ,
    \q_sum_buf_reg[0]_1 ,
    \q_sum_buf_reg[0]_2 ,
    q_valid_reg_3,
    q_valid_reg_4,
    q_valid_reg_5,
    \q_data_reg[15]_0 ,
    s_tdata);
  output o_valid_reg_0;
  output \cnt_reg[3] ;
  output \cnt_reg[6] ;
  output [7:0]Q;
  output [15:0]\o_res_data_reg[15]_0 ;
  input [0:0]E;
  input i_clk;
  input q_valid_reg_0;
  input q_valid_reg_1;
  input s_tvalid;
  input q_valid_reg_2;
  input \q_sum_buf_reg[0] ;
  input \q_sum_buf_reg[0]_0 ;
  input \q_sum_buf_reg[0]_1 ;
  input \q_sum_buf_reg[0]_2 ;
  input q_valid_reg_3;
  input q_valid_reg_4;
  input q_valid_reg_5;
  input [0:0]\q_data_reg[15]_0 ;
  input [15:0]s_tdata;

  wire [0:0]E;
  wire [7:0]Q;
  wire \block[3].min_max[1].MIN_MAX/q_valid_2 ;
  wire \cnt_reg[3] ;
  wire \cnt_reg[6] ;
  wire i_clk;
  wire [15:0]\o_res_data_reg[15]_0 ;
  wire o_valid_reg_0;
  wire p_0_in;
  wire \q_buf_reg_n_0_[0] ;
  wire \q_buf_reg_n_0_[10] ;
  wire \q_buf_reg_n_0_[11] ;
  wire \q_buf_reg_n_0_[12] ;
  wire \q_buf_reg_n_0_[13] ;
  wire \q_buf_reg_n_0_[14] ;
  wire \q_buf_reg_n_0_[15] ;
  wire \q_buf_reg_n_0_[1] ;
  wire \q_buf_reg_n_0_[2] ;
  wire \q_buf_reg_n_0_[3] ;
  wire \q_buf_reg_n_0_[4] ;
  wire \q_buf_reg_n_0_[5] ;
  wire \q_buf_reg_n_0_[6] ;
  wire \q_buf_reg_n_0_[7] ;
  wire \q_buf_reg_n_0_[8] ;
  wire \q_buf_reg_n_0_[9] ;
  wire q_cnt_buf;
  wire \q_cnt_buf[0]_i_1__2_n_0 ;
  wire \q_cnt_buf[1]_i_1__2_n_0 ;
  wire \q_cnt_buf[2]_i_1__2_n_0 ;
  wire \q_cnt_buf[3]_i_1__2_n_0 ;
  wire \q_cnt_buf[4]_i_1__2_n_0 ;
  wire \q_cnt_buf[5]_i_1__2_n_0 ;
  wire \q_cnt_buf[6]_i_1__2_n_0 ;
  wire \q_cnt_buf[7]_i_1__2_n_0 ;
  wire \q_cnt_buf[7]_i_2__2_n_0 ;
  wire \q_cnt_buf_reg_n_0_[0] ;
  wire \q_cnt_buf_reg_n_0_[1] ;
  wire \q_cnt_buf_reg_n_0_[2] ;
  wire \q_cnt_buf_reg_n_0_[3] ;
  wire \q_cnt_buf_reg_n_0_[4] ;
  wire \q_cnt_buf_reg_n_0_[5] ;
  wire \q_cnt_buf_reg_n_0_[6] ;
  wire \q_cnt_buf_reg_n_0_[7] ;
  wire \q_data_2_reg_n_0_[0] ;
  wire \q_data_2_reg_n_0_[10] ;
  wire \q_data_2_reg_n_0_[11] ;
  wire \q_data_2_reg_n_0_[12] ;
  wire \q_data_2_reg_n_0_[13] ;
  wire \q_data_2_reg_n_0_[14] ;
  wire \q_data_2_reg_n_0_[15] ;
  wire \q_data_2_reg_n_0_[1] ;
  wire \q_data_2_reg_n_0_[2] ;
  wire \q_data_2_reg_n_0_[3] ;
  wire \q_data_2_reg_n_0_[4] ;
  wire \q_data_2_reg_n_0_[5] ;
  wire \q_data_2_reg_n_0_[6] ;
  wire \q_data_2_reg_n_0_[7] ;
  wire \q_data_2_reg_n_0_[8] ;
  wire \q_data_2_reg_n_0_[9] ;
  wire [7:0]q_data_cnt_reg;
  wire q_data_diff0_carry__0_i_1__2_n_0;
  wire q_data_diff0_carry__0_i_2__2_n_0;
  wire q_data_diff0_carry__0_i_3__2_n_0;
  wire q_data_diff0_carry__0_i_4__2_n_0;
  wire q_data_diff0_carry__0_n_0;
  wire q_data_diff0_carry__0_n_1;
  wire q_data_diff0_carry__0_n_2;
  wire q_data_diff0_carry__0_n_3;
  wire q_data_diff0_carry__1_i_1__2_n_0;
  wire q_data_diff0_carry__1_i_2__2_n_0;
  wire q_data_diff0_carry__1_i_3__2_n_0;
  wire q_data_diff0_carry__1_i_4__2_n_0;
  wire q_data_diff0_carry__1_n_0;
  wire q_data_diff0_carry__1_n_1;
  wire q_data_diff0_carry__1_n_2;
  wire q_data_diff0_carry__1_n_3;
  wire q_data_diff0_carry__2_i_1__2_n_0;
  wire q_data_diff0_carry__2_i_2__2_n_0;
  wire q_data_diff0_carry__2_i_3__2_n_0;
  wire q_data_diff0_carry__2_i_4__2_n_0;
  wire q_data_diff0_carry__2_n_1;
  wire q_data_diff0_carry__2_n_2;
  wire q_data_diff0_carry__2_n_3;
  wire q_data_diff0_carry__2_n_4;
  wire q_data_diff0_carry_i_1__2_n_0;
  wire q_data_diff0_carry_i_2__2_n_0;
  wire q_data_diff0_carry_i_3__2_n_0;
  wire q_data_diff0_carry_i_4__2_n_0;
  wire q_data_diff0_carry_n_0;
  wire q_data_diff0_carry_n_1;
  wire q_data_diff0_carry_n_2;
  wire q_data_diff0_carry_n_3;
  wire [0:0]\q_data_reg[15]_0 ;
  wire \q_data_reg_n_0_[0] ;
  wire \q_data_reg_n_0_[10] ;
  wire \q_data_reg_n_0_[11] ;
  wire \q_data_reg_n_0_[12] ;
  wire \q_data_reg_n_0_[13] ;
  wire \q_data_reg_n_0_[14] ;
  wire \q_data_reg_n_0_[15] ;
  wire \q_data_reg_n_0_[1] ;
  wire \q_data_reg_n_0_[2] ;
  wire \q_data_reg_n_0_[3] ;
  wire \q_data_reg_n_0_[4] ;
  wire \q_data_reg_n_0_[5] ;
  wire \q_data_reg_n_0_[6] ;
  wire \q_data_reg_n_0_[7] ;
  wire \q_data_reg_n_0_[8] ;
  wire \q_data_reg_n_0_[9] ;
  wire \q_sum_buf_reg[0] ;
  wire \q_sum_buf_reg[0]_0 ;
  wire \q_sum_buf_reg[0]_1 ;
  wire \q_sum_buf_reg[0]_2 ;
  wire q_valid_2_i_1__2_n_0;
  wire q_valid_i_1__2_n_0;
  wire q_valid_reg_0;
  wire q_valid_reg_1;
  wire q_valid_reg_2;
  wire q_valid_reg_3;
  wire q_valid_reg_4;
  wire q_valid_reg_5;
  wire q_valid_reg_n_0;
  wire [15:0]s_tdata;
  wire s_tvalid;
  wire w_last_reg_n_0;
  wire [3:0]NLW_q_data_diff0_carry_O_UNCONNECTED;
  wire [3:0]NLW_q_data_diff0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_q_data_diff0_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_q_data_diff0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_q_data_diff0_carry__2_O_UNCONNECTED;

  FDRE \o_indx_data_reg[0] 
       (.C(i_clk),
        .CE(w_last_reg_n_0),
        .D(\q_cnt_buf_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \o_indx_data_reg[1] 
       (.C(i_clk),
        .CE(w_last_reg_n_0),
        .D(\q_cnt_buf_reg_n_0_[1] ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \o_indx_data_reg[2] 
       (.C(i_clk),
        .CE(w_last_reg_n_0),
        .D(\q_cnt_buf_reg_n_0_[2] ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \o_indx_data_reg[3] 
       (.C(i_clk),
        .CE(w_last_reg_n_0),
        .D(\q_cnt_buf_reg_n_0_[3] ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \o_indx_data_reg[4] 
       (.C(i_clk),
        .CE(w_last_reg_n_0),
        .D(\q_cnt_buf_reg_n_0_[4] ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \o_indx_data_reg[5] 
       (.C(i_clk),
        .CE(w_last_reg_n_0),
        .D(\q_cnt_buf_reg_n_0_[5] ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \o_indx_data_reg[6] 
       (.C(i_clk),
        .CE(w_last_reg_n_0),
        .D(\q_cnt_buf_reg_n_0_[6] ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \o_indx_data_reg[7] 
       (.C(i_clk),
        .CE(w_last_reg_n_0),
        .D(\q_cnt_buf_reg_n_0_[7] ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \o_res_data_reg[0] 
       (.C(i_clk),
        .CE(w_last_reg_n_0),
        .D(\q_buf_reg_n_0_[0] ),
        .Q(\o_res_data_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \o_res_data_reg[10] 
       (.C(i_clk),
        .CE(w_last_reg_n_0),
        .D(\q_buf_reg_n_0_[10] ),
        .Q(\o_res_data_reg[15]_0 [10]),
        .R(1'b0));
  FDRE \o_res_data_reg[11] 
       (.C(i_clk),
        .CE(w_last_reg_n_0),
        .D(\q_buf_reg_n_0_[11] ),
        .Q(\o_res_data_reg[15]_0 [11]),
        .R(1'b0));
  FDRE \o_res_data_reg[12] 
       (.C(i_clk),
        .CE(w_last_reg_n_0),
        .D(\q_buf_reg_n_0_[12] ),
        .Q(\o_res_data_reg[15]_0 [12]),
        .R(1'b0));
  FDRE \o_res_data_reg[13] 
       (.C(i_clk),
        .CE(w_last_reg_n_0),
        .D(\q_buf_reg_n_0_[13] ),
        .Q(\o_res_data_reg[15]_0 [13]),
        .R(1'b0));
  FDRE \o_res_data_reg[14] 
       (.C(i_clk),
        .CE(w_last_reg_n_0),
        .D(\q_buf_reg_n_0_[14] ),
        .Q(\o_res_data_reg[15]_0 [14]),
        .R(1'b0));
  FDRE \o_res_data_reg[15] 
       (.C(i_clk),
        .CE(w_last_reg_n_0),
        .D(\q_buf_reg_n_0_[15] ),
        .Q(\o_res_data_reg[15]_0 [15]),
        .R(1'b0));
  FDRE \o_res_data_reg[1] 
       (.C(i_clk),
        .CE(w_last_reg_n_0),
        .D(\q_buf_reg_n_0_[1] ),
        .Q(\o_res_data_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \o_res_data_reg[2] 
       (.C(i_clk),
        .CE(w_last_reg_n_0),
        .D(\q_buf_reg_n_0_[2] ),
        .Q(\o_res_data_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \o_res_data_reg[3] 
       (.C(i_clk),
        .CE(w_last_reg_n_0),
        .D(\q_buf_reg_n_0_[3] ),
        .Q(\o_res_data_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \o_res_data_reg[4] 
       (.C(i_clk),
        .CE(w_last_reg_n_0),
        .D(\q_buf_reg_n_0_[4] ),
        .Q(\o_res_data_reg[15]_0 [4]),
        .R(1'b0));
  FDRE \o_res_data_reg[5] 
       (.C(i_clk),
        .CE(w_last_reg_n_0),
        .D(\q_buf_reg_n_0_[5] ),
        .Q(\o_res_data_reg[15]_0 [5]),
        .R(1'b0));
  FDRE \o_res_data_reg[6] 
       (.C(i_clk),
        .CE(w_last_reg_n_0),
        .D(\q_buf_reg_n_0_[6] ),
        .Q(\o_res_data_reg[15]_0 [6]),
        .R(1'b0));
  FDRE \o_res_data_reg[7] 
       (.C(i_clk),
        .CE(w_last_reg_n_0),
        .D(\q_buf_reg_n_0_[7] ),
        .Q(\o_res_data_reg[15]_0 [7]),
        .R(1'b0));
  FDRE \o_res_data_reg[8] 
       (.C(i_clk),
        .CE(w_last_reg_n_0),
        .D(\q_buf_reg_n_0_[8] ),
        .Q(\o_res_data_reg[15]_0 [8]),
        .R(1'b0));
  FDRE \o_res_data_reg[9] 
       (.C(i_clk),
        .CE(w_last_reg_n_0),
        .D(\q_buf_reg_n_0_[9] ),
        .Q(\o_res_data_reg[15]_0 [9]),
        .R(1'b0));
  FDRE o_valid_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(w_last_reg_n_0),
        .Q(o_valid_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \q_buf[15]_i_1__2 
       (.I0(\block[3].min_max[1].MIN_MAX/q_valid_2 ),
        .I1(p_0_in),
        .O(q_cnt_buf));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[0] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[0] ),
        .Q(\q_buf_reg_n_0_[0] ),
        .S(w_last_reg_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[10] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[10] ),
        .Q(\q_buf_reg_n_0_[10] ),
        .S(w_last_reg_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[11] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[11] ),
        .Q(\q_buf_reg_n_0_[11] ),
        .S(w_last_reg_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[12] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[12] ),
        .Q(\q_buf_reg_n_0_[12] ),
        .S(w_last_reg_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[13] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[13] ),
        .Q(\q_buf_reg_n_0_[13] ),
        .S(w_last_reg_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[14] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[14] ),
        .Q(\q_buf_reg_n_0_[14] ),
        .S(w_last_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \q_buf_reg[15] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[15] ),
        .Q(\q_buf_reg_n_0_[15] ),
        .R(w_last_reg_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[1] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[1] ),
        .Q(\q_buf_reg_n_0_[1] ),
        .S(w_last_reg_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[2] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[2] ),
        .Q(\q_buf_reg_n_0_[2] ),
        .S(w_last_reg_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[3] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[3] ),
        .Q(\q_buf_reg_n_0_[3] ),
        .S(w_last_reg_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[4] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[4] ),
        .Q(\q_buf_reg_n_0_[4] ),
        .S(w_last_reg_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[5] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[5] ),
        .Q(\q_buf_reg_n_0_[5] ),
        .S(w_last_reg_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[6] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[6] ),
        .Q(\q_buf_reg_n_0_[6] ),
        .S(w_last_reg_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[7] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[7] ),
        .Q(\q_buf_reg_n_0_[7] ),
        .S(w_last_reg_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[8] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[8] ),
        .Q(\q_buf_reg_n_0_[8] ),
        .S(w_last_reg_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[9] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[9] ),
        .Q(\q_buf_reg_n_0_[9] ),
        .S(w_last_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \q_cnt_buf[0]_i_1__2 
       (.I0(q_data_cnt_reg[0]),
        .O(\q_cnt_buf[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_cnt_buf[1]_i_1__2 
       (.I0(q_data_cnt_reg[0]),
        .I1(q_data_cnt_reg[1]),
        .O(\q_cnt_buf[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_cnt_buf[2]_i_1__2 
       (.I0(q_data_cnt_reg[0]),
        .I1(q_data_cnt_reg[1]),
        .I2(q_data_cnt_reg[2]),
        .O(\q_cnt_buf[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q_cnt_buf[3]_i_1__2 
       (.I0(q_data_cnt_reg[1]),
        .I1(q_data_cnt_reg[0]),
        .I2(q_data_cnt_reg[2]),
        .I3(q_data_cnt_reg[3]),
        .O(\q_cnt_buf[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q_cnt_buf[4]_i_1__2 
       (.I0(q_data_cnt_reg[2]),
        .I1(q_data_cnt_reg[0]),
        .I2(q_data_cnt_reg[1]),
        .I3(q_data_cnt_reg[3]),
        .I4(q_data_cnt_reg[4]),
        .O(\q_cnt_buf[4]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \q_cnt_buf[5]_i_1__2 
       (.I0(q_data_cnt_reg[3]),
        .I1(q_data_cnt_reg[1]),
        .I2(q_data_cnt_reg[0]),
        .I3(q_data_cnt_reg[2]),
        .I4(q_data_cnt_reg[4]),
        .I5(q_data_cnt_reg[5]),
        .O(\q_cnt_buf[5]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_cnt_buf[6]_i_1__2 
       (.I0(\q_cnt_buf[7]_i_2__2_n_0 ),
        .I1(q_data_cnt_reg[6]),
        .O(\q_cnt_buf[6]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_cnt_buf[7]_i_1__2 
       (.I0(\q_cnt_buf[7]_i_2__2_n_0 ),
        .I1(q_data_cnt_reg[6]),
        .I2(q_data_cnt_reg[7]),
        .O(\q_cnt_buf[7]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \q_cnt_buf[7]_i_2__2 
       (.I0(q_data_cnt_reg[5]),
        .I1(q_data_cnt_reg[3]),
        .I2(q_data_cnt_reg[1]),
        .I3(q_data_cnt_reg[0]),
        .I4(q_data_cnt_reg[2]),
        .I5(q_data_cnt_reg[4]),
        .O(\q_cnt_buf[7]_i_2__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[0] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_cnt_buf[0]_i_1__2_n_0 ),
        .Q(\q_cnt_buf_reg_n_0_[0] ),
        .R(w_last_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[1] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_cnt_buf[1]_i_1__2_n_0 ),
        .Q(\q_cnt_buf_reg_n_0_[1] ),
        .R(w_last_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[2] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_cnt_buf[2]_i_1__2_n_0 ),
        .Q(\q_cnt_buf_reg_n_0_[2] ),
        .R(w_last_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[3] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_cnt_buf[3]_i_1__2_n_0 ),
        .Q(\q_cnt_buf_reg_n_0_[3] ),
        .R(w_last_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[4] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_cnt_buf[4]_i_1__2_n_0 ),
        .Q(\q_cnt_buf_reg_n_0_[4] ),
        .R(w_last_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[5] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_cnt_buf[5]_i_1__2_n_0 ),
        .Q(\q_cnt_buf_reg_n_0_[5] ),
        .R(w_last_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[6] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_cnt_buf[6]_i_1__2_n_0 ),
        .Q(\q_cnt_buf_reg_n_0_[6] ),
        .R(w_last_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[7] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_cnt_buf[7]_i_1__2_n_0 ),
        .Q(\q_cnt_buf_reg_n_0_[7] ),
        .R(w_last_reg_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    \q_data[15]_i_5 
       (.I0(\q_sum_buf_reg[0] ),
        .I1(\q_sum_buf_reg[0]_0 ),
        .I2(\q_sum_buf_reg[0]_1 ),
        .I3(\q_sum_buf_reg[0]_2 ),
        .O(\cnt_reg[6] ));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[0] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[0] ),
        .Q(\q_data_2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[10] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[10] ),
        .Q(\q_data_2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[11] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[11] ),
        .Q(\q_data_2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[12] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[12] ),
        .Q(\q_data_2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[13] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[13] ),
        .Q(\q_data_2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[14] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[14] ),
        .Q(\q_data_2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[15] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[15] ),
        .Q(\q_data_2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[1] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[1] ),
        .Q(\q_data_2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[2] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[2] ),
        .Q(\q_data_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[3] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[3] ),
        .Q(\q_data_2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[4] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[4] ),
        .Q(\q_data_2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[5] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[5] ),
        .Q(\q_data_2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[6] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[6] ),
        .Q(\q_data_2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[7] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[7] ),
        .Q(\q_data_2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[8] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[8] ),
        .Q(\q_data_2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[9] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[9] ),
        .Q(\q_data_2_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[0] 
       (.C(i_clk),
        .CE(\block[3].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[0]_i_1__2_n_0 ),
        .Q(q_data_cnt_reg[0]),
        .R(w_last_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[1] 
       (.C(i_clk),
        .CE(\block[3].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[1]_i_1__2_n_0 ),
        .Q(q_data_cnt_reg[1]),
        .R(w_last_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[2] 
       (.C(i_clk),
        .CE(\block[3].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[2]_i_1__2_n_0 ),
        .Q(q_data_cnt_reg[2]),
        .R(w_last_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[3] 
       (.C(i_clk),
        .CE(\block[3].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[3]_i_1__2_n_0 ),
        .Q(q_data_cnt_reg[3]),
        .R(w_last_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[4] 
       (.C(i_clk),
        .CE(\block[3].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[4]_i_1__2_n_0 ),
        .Q(q_data_cnt_reg[4]),
        .R(w_last_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[5] 
       (.C(i_clk),
        .CE(\block[3].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[5]_i_1__2_n_0 ),
        .Q(q_data_cnt_reg[5]),
        .R(w_last_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[6] 
       (.C(i_clk),
        .CE(\block[3].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[6]_i_1__2_n_0 ),
        .Q(q_data_cnt_reg[6]),
        .R(w_last_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[7] 
       (.C(i_clk),
        .CE(\block[3].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[7]_i_1__2_n_0 ),
        .Q(q_data_cnt_reg[7]),
        .R(w_last_reg_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 q_data_diff0_carry
       (.CI(1'b0),
        .CO({q_data_diff0_carry_n_0,q_data_diff0_carry_n_1,q_data_diff0_carry_n_2,q_data_diff0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({\q_buf_reg_n_0_[3] ,\q_buf_reg_n_0_[2] ,\q_buf_reg_n_0_[1] ,\q_buf_reg_n_0_[0] }),
        .O(NLW_q_data_diff0_carry_O_UNCONNECTED[3:0]),
        .S({q_data_diff0_carry_i_1__2_n_0,q_data_diff0_carry_i_2__2_n_0,q_data_diff0_carry_i_3__2_n_0,q_data_diff0_carry_i_4__2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 q_data_diff0_carry__0
       (.CI(q_data_diff0_carry_n_0),
        .CO({q_data_diff0_carry__0_n_0,q_data_diff0_carry__0_n_1,q_data_diff0_carry__0_n_2,q_data_diff0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\q_buf_reg_n_0_[7] ,\q_buf_reg_n_0_[6] ,\q_buf_reg_n_0_[5] ,\q_buf_reg_n_0_[4] }),
        .O(NLW_q_data_diff0_carry__0_O_UNCONNECTED[3:0]),
        .S({q_data_diff0_carry__0_i_1__2_n_0,q_data_diff0_carry__0_i_2__2_n_0,q_data_diff0_carry__0_i_3__2_n_0,q_data_diff0_carry__0_i_4__2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__0_i_1__2
       (.I0(\q_buf_reg_n_0_[7] ),
        .I1(\q_data_reg_n_0_[7] ),
        .O(q_data_diff0_carry__0_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__0_i_2__2
       (.I0(\q_buf_reg_n_0_[6] ),
        .I1(\q_data_reg_n_0_[6] ),
        .O(q_data_diff0_carry__0_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__0_i_3__2
       (.I0(\q_buf_reg_n_0_[5] ),
        .I1(\q_data_reg_n_0_[5] ),
        .O(q_data_diff0_carry__0_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__0_i_4__2
       (.I0(\q_buf_reg_n_0_[4] ),
        .I1(\q_data_reg_n_0_[4] ),
        .O(q_data_diff0_carry__0_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 q_data_diff0_carry__1
       (.CI(q_data_diff0_carry__0_n_0),
        .CO({q_data_diff0_carry__1_n_0,q_data_diff0_carry__1_n_1,q_data_diff0_carry__1_n_2,q_data_diff0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\q_buf_reg_n_0_[11] ,\q_buf_reg_n_0_[10] ,\q_buf_reg_n_0_[9] ,\q_buf_reg_n_0_[8] }),
        .O(NLW_q_data_diff0_carry__1_O_UNCONNECTED[3:0]),
        .S({q_data_diff0_carry__1_i_1__2_n_0,q_data_diff0_carry__1_i_2__2_n_0,q_data_diff0_carry__1_i_3__2_n_0,q_data_diff0_carry__1_i_4__2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__1_i_1__2
       (.I0(\q_buf_reg_n_0_[11] ),
        .I1(\q_data_reg_n_0_[11] ),
        .O(q_data_diff0_carry__1_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__1_i_2__2
       (.I0(\q_buf_reg_n_0_[10] ),
        .I1(\q_data_reg_n_0_[10] ),
        .O(q_data_diff0_carry__1_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__1_i_3__2
       (.I0(\q_buf_reg_n_0_[9] ),
        .I1(\q_data_reg_n_0_[9] ),
        .O(q_data_diff0_carry__1_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__1_i_4__2
       (.I0(\q_buf_reg_n_0_[8] ),
        .I1(\q_data_reg_n_0_[8] ),
        .O(q_data_diff0_carry__1_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 q_data_diff0_carry__2
       (.CI(q_data_diff0_carry__1_n_0),
        .CO({NLW_q_data_diff0_carry__2_CO_UNCONNECTED[3],q_data_diff0_carry__2_n_1,q_data_diff0_carry__2_n_2,q_data_diff0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\q_buf_reg_n_0_[14] ,\q_buf_reg_n_0_[13] ,\q_buf_reg_n_0_[12] }),
        .O({q_data_diff0_carry__2_n_4,NLW_q_data_diff0_carry__2_O_UNCONNECTED[2:0]}),
        .S({q_data_diff0_carry__2_i_1__2_n_0,q_data_diff0_carry__2_i_2__2_n_0,q_data_diff0_carry__2_i_3__2_n_0,q_data_diff0_carry__2_i_4__2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__2_i_1__2
       (.I0(\q_buf_reg_n_0_[15] ),
        .I1(\q_data_reg_n_0_[15] ),
        .O(q_data_diff0_carry__2_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__2_i_2__2
       (.I0(\q_buf_reg_n_0_[14] ),
        .I1(\q_data_reg_n_0_[14] ),
        .O(q_data_diff0_carry__2_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__2_i_3__2
       (.I0(\q_buf_reg_n_0_[13] ),
        .I1(\q_data_reg_n_0_[13] ),
        .O(q_data_diff0_carry__2_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__2_i_4__2
       (.I0(\q_buf_reg_n_0_[12] ),
        .I1(\q_data_reg_n_0_[12] ),
        .O(q_data_diff0_carry__2_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry_i_1__2
       (.I0(\q_buf_reg_n_0_[3] ),
        .I1(\q_data_reg_n_0_[3] ),
        .O(q_data_diff0_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry_i_2__2
       (.I0(\q_buf_reg_n_0_[2] ),
        .I1(\q_data_reg_n_0_[2] ),
        .O(q_data_diff0_carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry_i_3__2
       (.I0(\q_buf_reg_n_0_[1] ),
        .I1(\q_data_reg_n_0_[1] ),
        .O(q_data_diff0_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry_i_4__2
       (.I0(\q_buf_reg_n_0_[0] ),
        .I1(\q_data_reg_n_0_[0] ),
        .O(q_data_diff0_carry_i_4__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_diff_reg[15] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(q_data_diff0_carry__2_n_4),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[0] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[0]),
        .Q(\q_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[10] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[10]),
        .Q(\q_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[11] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[11]),
        .Q(\q_data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[12] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[12]),
        .Q(\q_data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[13] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[13]),
        .Q(\q_data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[14] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[14]),
        .Q(\q_data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[15] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[15]),
        .Q(\q_data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[1] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[1]),
        .Q(\q_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[2] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[2]),
        .Q(\q_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[3] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[3]),
        .Q(\q_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[4] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[4]),
        .Q(\q_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[5] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[5]),
        .Q(\q_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[6] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[6]),
        .Q(\q_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[7] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[7]),
        .Q(\q_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[8] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[8]),
        .Q(\q_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[9] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[9]),
        .Q(\q_data_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    q_valid_2_i_1__2
       (.I0(\block[3].min_max[1].MIN_MAX/q_valid_2 ),
        .I1(q_valid_reg_n_0),
        .O(q_valid_2_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_valid_2_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(q_valid_2_i_1__2_n_0),
        .Q(\block[3].min_max[1].MIN_MAX/q_valid_2 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    q_valid_i_1__2
       (.I0(q_valid_reg_n_0),
        .I1(q_valid_reg_3),
        .I2(q_valid_reg_4),
        .I3(\cnt_reg[3] ),
        .I4(q_valid_reg_5),
        .O(q_valid_i_1__2_n_0));
  LUT5 #(
    .INIT(32'h00100000)) 
    q_valid_i_2__0
       (.I0(q_valid_reg_0),
        .I1(q_valid_reg_1),
        .I2(s_tvalid),
        .I3(q_valid_reg_2),
        .I4(\cnt_reg[6] ),
        .O(\cnt_reg[3] ));
  FDRE #(
    .INIT(1'b0)) 
    q_valid_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(q_valid_i_1__2_n_0),
        .Q(q_valid_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    w_last_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(E),
        .Q(w_last_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "max_min" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_max_min_3
   (E,
    o_valid_reg_0,
    Q,
    \o_res_data_reg[15]_0 ,
    SR,
    i_clk,
    q_valid_reg_0,
    q_valid_reg_1,
    q_valid_reg_2,
    q_valid_reg_3,
    \q_data_reg[15]_0 ,
    s_tdata);
  output [0:0]E;
  output o_valid_reg_0;
  output [7:0]Q;
  output [15:0]\o_res_data_reg[15]_0 ;
  input [0:0]SR;
  input i_clk;
  input q_valid_reg_0;
  input q_valid_reg_1;
  input q_valid_reg_2;
  input q_valid_reg_3;
  input [0:0]\q_data_reg[15]_0 ;
  input [15:0]s_tdata;

  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]SR;
  wire \block[1].min_max[1].MIN_MAX/q_valid_2 ;
  wire i_clk;
  wire [15:0]\o_res_data_reg[15]_0 ;
  wire o_valid_reg_0;
  wire p_0_in;
  wire \q_buf_reg_n_0_[0] ;
  wire \q_buf_reg_n_0_[10] ;
  wire \q_buf_reg_n_0_[11] ;
  wire \q_buf_reg_n_0_[12] ;
  wire \q_buf_reg_n_0_[13] ;
  wire \q_buf_reg_n_0_[14] ;
  wire \q_buf_reg_n_0_[15] ;
  wire \q_buf_reg_n_0_[1] ;
  wire \q_buf_reg_n_0_[2] ;
  wire \q_buf_reg_n_0_[3] ;
  wire \q_buf_reg_n_0_[4] ;
  wire \q_buf_reg_n_0_[5] ;
  wire \q_buf_reg_n_0_[6] ;
  wire \q_buf_reg_n_0_[7] ;
  wire \q_buf_reg_n_0_[8] ;
  wire \q_buf_reg_n_0_[9] ;
  wire q_cnt_buf;
  wire \q_cnt_buf[0]_i_1__0_n_0 ;
  wire \q_cnt_buf[1]_i_1__0_n_0 ;
  wire \q_cnt_buf[2]_i_1__0_n_0 ;
  wire \q_cnt_buf[3]_i_1__0_n_0 ;
  wire \q_cnt_buf[4]_i_1__0_n_0 ;
  wire \q_cnt_buf[5]_i_1__0_n_0 ;
  wire \q_cnt_buf[6]_i_1__0_n_0 ;
  wire \q_cnt_buf[7]_i_1__0_n_0 ;
  wire \q_cnt_buf[7]_i_2__0_n_0 ;
  wire \q_cnt_buf_reg_n_0_[0] ;
  wire \q_cnt_buf_reg_n_0_[1] ;
  wire \q_cnt_buf_reg_n_0_[2] ;
  wire \q_cnt_buf_reg_n_0_[3] ;
  wire \q_cnt_buf_reg_n_0_[4] ;
  wire \q_cnt_buf_reg_n_0_[5] ;
  wire \q_cnt_buf_reg_n_0_[6] ;
  wire \q_cnt_buf_reg_n_0_[7] ;
  wire \q_data_2_reg_n_0_[0] ;
  wire \q_data_2_reg_n_0_[10] ;
  wire \q_data_2_reg_n_0_[11] ;
  wire \q_data_2_reg_n_0_[12] ;
  wire \q_data_2_reg_n_0_[13] ;
  wire \q_data_2_reg_n_0_[14] ;
  wire \q_data_2_reg_n_0_[15] ;
  wire \q_data_2_reg_n_0_[1] ;
  wire \q_data_2_reg_n_0_[2] ;
  wire \q_data_2_reg_n_0_[3] ;
  wire \q_data_2_reg_n_0_[4] ;
  wire \q_data_2_reg_n_0_[5] ;
  wire \q_data_2_reg_n_0_[6] ;
  wire \q_data_2_reg_n_0_[7] ;
  wire \q_data_2_reg_n_0_[8] ;
  wire \q_data_2_reg_n_0_[9] ;
  wire [7:0]q_data_cnt_reg;
  wire q_data_diff0_carry__0_i_1__0_n_0;
  wire q_data_diff0_carry__0_i_2__0_n_0;
  wire q_data_diff0_carry__0_i_3__0_n_0;
  wire q_data_diff0_carry__0_i_4__0_n_0;
  wire q_data_diff0_carry__0_n_0;
  wire q_data_diff0_carry__0_n_1;
  wire q_data_diff0_carry__0_n_2;
  wire q_data_diff0_carry__0_n_3;
  wire q_data_diff0_carry__1_i_1__0_n_0;
  wire q_data_diff0_carry__1_i_2__0_n_0;
  wire q_data_diff0_carry__1_i_3__0_n_0;
  wire q_data_diff0_carry__1_i_4__0_n_0;
  wire q_data_diff0_carry__1_n_0;
  wire q_data_diff0_carry__1_n_1;
  wire q_data_diff0_carry__1_n_2;
  wire q_data_diff0_carry__1_n_3;
  wire q_data_diff0_carry__2_i_1__0_n_0;
  wire q_data_diff0_carry__2_i_2__0_n_0;
  wire q_data_diff0_carry__2_i_3__0_n_0;
  wire q_data_diff0_carry__2_i_4__0_n_0;
  wire q_data_diff0_carry__2_n_1;
  wire q_data_diff0_carry__2_n_2;
  wire q_data_diff0_carry__2_n_3;
  wire q_data_diff0_carry__2_n_4;
  wire q_data_diff0_carry_i_1__0_n_0;
  wire q_data_diff0_carry_i_2__0_n_0;
  wire q_data_diff0_carry_i_3__0_n_0;
  wire q_data_diff0_carry_i_4__0_n_0;
  wire q_data_diff0_carry_n_0;
  wire q_data_diff0_carry_n_1;
  wire q_data_diff0_carry_n_2;
  wire q_data_diff0_carry_n_3;
  wire [0:0]\q_data_reg[15]_0 ;
  wire \q_data_reg_n_0_[0] ;
  wire \q_data_reg_n_0_[10] ;
  wire \q_data_reg_n_0_[11] ;
  wire \q_data_reg_n_0_[12] ;
  wire \q_data_reg_n_0_[13] ;
  wire \q_data_reg_n_0_[14] ;
  wire \q_data_reg_n_0_[15] ;
  wire \q_data_reg_n_0_[1] ;
  wire \q_data_reg_n_0_[2] ;
  wire \q_data_reg_n_0_[3] ;
  wire \q_data_reg_n_0_[4] ;
  wire \q_data_reg_n_0_[5] ;
  wire \q_data_reg_n_0_[6] ;
  wire \q_data_reg_n_0_[7] ;
  wire \q_data_reg_n_0_[8] ;
  wire \q_data_reg_n_0_[9] ;
  wire q_valid_2_i_1__0_n_0;
  wire q_valid_i_1__1_n_0;
  wire q_valid_reg_0;
  wire q_valid_reg_1;
  wire q_valid_reg_2;
  wire q_valid_reg_3;
  wire q_valid_reg_n_0;
  wire [15:0]s_tdata;
  wire [3:0]NLW_q_data_diff0_carry_O_UNCONNECTED;
  wire [3:0]NLW_q_data_diff0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_q_data_diff0_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_q_data_diff0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_q_data_diff0_carry__2_O_UNCONNECTED;

  FDRE \o_indx_data_reg[0] 
       (.C(i_clk),
        .CE(E),
        .D(\q_cnt_buf_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \o_indx_data_reg[1] 
       (.C(i_clk),
        .CE(E),
        .D(\q_cnt_buf_reg_n_0_[1] ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \o_indx_data_reg[2] 
       (.C(i_clk),
        .CE(E),
        .D(\q_cnt_buf_reg_n_0_[2] ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \o_indx_data_reg[3] 
       (.C(i_clk),
        .CE(E),
        .D(\q_cnt_buf_reg_n_0_[3] ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \o_indx_data_reg[4] 
       (.C(i_clk),
        .CE(E),
        .D(\q_cnt_buf_reg_n_0_[4] ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \o_indx_data_reg[5] 
       (.C(i_clk),
        .CE(E),
        .D(\q_cnt_buf_reg_n_0_[5] ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \o_indx_data_reg[6] 
       (.C(i_clk),
        .CE(E),
        .D(\q_cnt_buf_reg_n_0_[6] ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \o_indx_data_reg[7] 
       (.C(i_clk),
        .CE(E),
        .D(\q_cnt_buf_reg_n_0_[7] ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \o_res_data_reg[0] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[0] ),
        .Q(\o_res_data_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \o_res_data_reg[10] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[10] ),
        .Q(\o_res_data_reg[15]_0 [10]),
        .R(1'b0));
  FDRE \o_res_data_reg[11] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[11] ),
        .Q(\o_res_data_reg[15]_0 [11]),
        .R(1'b0));
  FDRE \o_res_data_reg[12] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[12] ),
        .Q(\o_res_data_reg[15]_0 [12]),
        .R(1'b0));
  FDRE \o_res_data_reg[13] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[13] ),
        .Q(\o_res_data_reg[15]_0 [13]),
        .R(1'b0));
  FDRE \o_res_data_reg[14] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[14] ),
        .Q(\o_res_data_reg[15]_0 [14]),
        .R(1'b0));
  FDRE \o_res_data_reg[15] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[15] ),
        .Q(\o_res_data_reg[15]_0 [15]),
        .R(1'b0));
  FDRE \o_res_data_reg[1] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[1] ),
        .Q(\o_res_data_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \o_res_data_reg[2] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[2] ),
        .Q(\o_res_data_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \o_res_data_reg[3] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[3] ),
        .Q(\o_res_data_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \o_res_data_reg[4] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[4] ),
        .Q(\o_res_data_reg[15]_0 [4]),
        .R(1'b0));
  FDRE \o_res_data_reg[5] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[5] ),
        .Q(\o_res_data_reg[15]_0 [5]),
        .R(1'b0));
  FDRE \o_res_data_reg[6] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[6] ),
        .Q(\o_res_data_reg[15]_0 [6]),
        .R(1'b0));
  FDRE \o_res_data_reg[7] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[7] ),
        .Q(\o_res_data_reg[15]_0 [7]),
        .R(1'b0));
  FDRE \o_res_data_reg[8] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[8] ),
        .Q(\o_res_data_reg[15]_0 [8]),
        .R(1'b0));
  FDRE \o_res_data_reg[9] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[9] ),
        .Q(\o_res_data_reg[15]_0 [9]),
        .R(1'b0));
  FDRE o_valid_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(E),
        .Q(o_valid_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \q_buf[15]_i_1__0 
       (.I0(\block[1].min_max[1].MIN_MAX/q_valid_2 ),
        .I1(p_0_in),
        .O(q_cnt_buf));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[0] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[0] ),
        .Q(\q_buf_reg_n_0_[0] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[10] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[10] ),
        .Q(\q_buf_reg_n_0_[10] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[11] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[11] ),
        .Q(\q_buf_reg_n_0_[11] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[12] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[12] ),
        .Q(\q_buf_reg_n_0_[12] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[13] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[13] ),
        .Q(\q_buf_reg_n_0_[13] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[14] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[14] ),
        .Q(\q_buf_reg_n_0_[14] ),
        .S(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_buf_reg[15] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[15] ),
        .Q(\q_buf_reg_n_0_[15] ),
        .R(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[1] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[1] ),
        .Q(\q_buf_reg_n_0_[1] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[2] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[2] ),
        .Q(\q_buf_reg_n_0_[2] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[3] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[3] ),
        .Q(\q_buf_reg_n_0_[3] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[4] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[4] ),
        .Q(\q_buf_reg_n_0_[4] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[5] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[5] ),
        .Q(\q_buf_reg_n_0_[5] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[6] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[6] ),
        .Q(\q_buf_reg_n_0_[6] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[7] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[7] ),
        .Q(\q_buf_reg_n_0_[7] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[8] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[8] ),
        .Q(\q_buf_reg_n_0_[8] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[9] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[9] ),
        .Q(\q_buf_reg_n_0_[9] ),
        .S(E));
  LUT1 #(
    .INIT(2'h1)) 
    \q_cnt_buf[0]_i_1__0 
       (.I0(q_data_cnt_reg[0]),
        .O(\q_cnt_buf[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_cnt_buf[1]_i_1__0 
       (.I0(q_data_cnt_reg[0]),
        .I1(q_data_cnt_reg[1]),
        .O(\q_cnt_buf[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_cnt_buf[2]_i_1__0 
       (.I0(q_data_cnt_reg[0]),
        .I1(q_data_cnt_reg[1]),
        .I2(q_data_cnt_reg[2]),
        .O(\q_cnt_buf[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q_cnt_buf[3]_i_1__0 
       (.I0(q_data_cnt_reg[1]),
        .I1(q_data_cnt_reg[0]),
        .I2(q_data_cnt_reg[2]),
        .I3(q_data_cnt_reg[3]),
        .O(\q_cnt_buf[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q_cnt_buf[4]_i_1__0 
       (.I0(q_data_cnt_reg[2]),
        .I1(q_data_cnt_reg[0]),
        .I2(q_data_cnt_reg[1]),
        .I3(q_data_cnt_reg[3]),
        .I4(q_data_cnt_reg[4]),
        .O(\q_cnt_buf[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \q_cnt_buf[5]_i_1__0 
       (.I0(q_data_cnt_reg[3]),
        .I1(q_data_cnt_reg[1]),
        .I2(q_data_cnt_reg[0]),
        .I3(q_data_cnt_reg[2]),
        .I4(q_data_cnt_reg[4]),
        .I5(q_data_cnt_reg[5]),
        .O(\q_cnt_buf[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_cnt_buf[6]_i_1__0 
       (.I0(\q_cnt_buf[7]_i_2__0_n_0 ),
        .I1(q_data_cnt_reg[6]),
        .O(\q_cnt_buf[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_cnt_buf[7]_i_1__0 
       (.I0(\q_cnt_buf[7]_i_2__0_n_0 ),
        .I1(q_data_cnt_reg[6]),
        .I2(q_data_cnt_reg[7]),
        .O(\q_cnt_buf[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \q_cnt_buf[7]_i_2__0 
       (.I0(q_data_cnt_reg[5]),
        .I1(q_data_cnt_reg[3]),
        .I2(q_data_cnt_reg[1]),
        .I3(q_data_cnt_reg[0]),
        .I4(q_data_cnt_reg[2]),
        .I5(q_data_cnt_reg[4]),
        .O(\q_cnt_buf[7]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[0] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_cnt_buf[0]_i_1__0_n_0 ),
        .Q(\q_cnt_buf_reg_n_0_[0] ),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[1] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_cnt_buf[1]_i_1__0_n_0 ),
        .Q(\q_cnt_buf_reg_n_0_[1] ),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[2] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_cnt_buf[2]_i_1__0_n_0 ),
        .Q(\q_cnt_buf_reg_n_0_[2] ),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[3] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_cnt_buf[3]_i_1__0_n_0 ),
        .Q(\q_cnt_buf_reg_n_0_[3] ),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[4] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_cnt_buf[4]_i_1__0_n_0 ),
        .Q(\q_cnt_buf_reg_n_0_[4] ),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[5] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_cnt_buf[5]_i_1__0_n_0 ),
        .Q(\q_cnt_buf_reg_n_0_[5] ),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[6] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_cnt_buf[6]_i_1__0_n_0 ),
        .Q(\q_cnt_buf_reg_n_0_[6] ),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[7] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_cnt_buf[7]_i_1__0_n_0 ),
        .Q(\q_cnt_buf_reg_n_0_[7] ),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[0] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[0] ),
        .Q(\q_data_2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[10] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[10] ),
        .Q(\q_data_2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[11] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[11] ),
        .Q(\q_data_2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[12] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[12] ),
        .Q(\q_data_2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[13] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[13] ),
        .Q(\q_data_2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[14] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[14] ),
        .Q(\q_data_2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[15] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[15] ),
        .Q(\q_data_2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[1] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[1] ),
        .Q(\q_data_2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[2] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[2] ),
        .Q(\q_data_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[3] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[3] ),
        .Q(\q_data_2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[4] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[4] ),
        .Q(\q_data_2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[5] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[5] ),
        .Q(\q_data_2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[6] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[6] ),
        .Q(\q_data_2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[7] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[7] ),
        .Q(\q_data_2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[8] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[8] ),
        .Q(\q_data_2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[9] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[9] ),
        .Q(\q_data_2_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[0] 
       (.C(i_clk),
        .CE(\block[1].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[0]_i_1__0_n_0 ),
        .Q(q_data_cnt_reg[0]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[1] 
       (.C(i_clk),
        .CE(\block[1].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[1]_i_1__0_n_0 ),
        .Q(q_data_cnt_reg[1]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[2] 
       (.C(i_clk),
        .CE(\block[1].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[2]_i_1__0_n_0 ),
        .Q(q_data_cnt_reg[2]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[3] 
       (.C(i_clk),
        .CE(\block[1].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[3]_i_1__0_n_0 ),
        .Q(q_data_cnt_reg[3]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[4] 
       (.C(i_clk),
        .CE(\block[1].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[4]_i_1__0_n_0 ),
        .Q(q_data_cnt_reg[4]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[5] 
       (.C(i_clk),
        .CE(\block[1].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[5]_i_1__0_n_0 ),
        .Q(q_data_cnt_reg[5]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[6] 
       (.C(i_clk),
        .CE(\block[1].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[6]_i_1__0_n_0 ),
        .Q(q_data_cnt_reg[6]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[7] 
       (.C(i_clk),
        .CE(\block[1].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[7]_i_1__0_n_0 ),
        .Q(q_data_cnt_reg[7]),
        .R(E));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 q_data_diff0_carry
       (.CI(1'b0),
        .CO({q_data_diff0_carry_n_0,q_data_diff0_carry_n_1,q_data_diff0_carry_n_2,q_data_diff0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({\q_buf_reg_n_0_[3] ,\q_buf_reg_n_0_[2] ,\q_buf_reg_n_0_[1] ,\q_buf_reg_n_0_[0] }),
        .O(NLW_q_data_diff0_carry_O_UNCONNECTED[3:0]),
        .S({q_data_diff0_carry_i_1__0_n_0,q_data_diff0_carry_i_2__0_n_0,q_data_diff0_carry_i_3__0_n_0,q_data_diff0_carry_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 q_data_diff0_carry__0
       (.CI(q_data_diff0_carry_n_0),
        .CO({q_data_diff0_carry__0_n_0,q_data_diff0_carry__0_n_1,q_data_diff0_carry__0_n_2,q_data_diff0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\q_buf_reg_n_0_[7] ,\q_buf_reg_n_0_[6] ,\q_buf_reg_n_0_[5] ,\q_buf_reg_n_0_[4] }),
        .O(NLW_q_data_diff0_carry__0_O_UNCONNECTED[3:0]),
        .S({q_data_diff0_carry__0_i_1__0_n_0,q_data_diff0_carry__0_i_2__0_n_0,q_data_diff0_carry__0_i_3__0_n_0,q_data_diff0_carry__0_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__0_i_1__0
       (.I0(\q_buf_reg_n_0_[7] ),
        .I1(\q_data_reg_n_0_[7] ),
        .O(q_data_diff0_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__0_i_2__0
       (.I0(\q_buf_reg_n_0_[6] ),
        .I1(\q_data_reg_n_0_[6] ),
        .O(q_data_diff0_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__0_i_3__0
       (.I0(\q_buf_reg_n_0_[5] ),
        .I1(\q_data_reg_n_0_[5] ),
        .O(q_data_diff0_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__0_i_4__0
       (.I0(\q_buf_reg_n_0_[4] ),
        .I1(\q_data_reg_n_0_[4] ),
        .O(q_data_diff0_carry__0_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 q_data_diff0_carry__1
       (.CI(q_data_diff0_carry__0_n_0),
        .CO({q_data_diff0_carry__1_n_0,q_data_diff0_carry__1_n_1,q_data_diff0_carry__1_n_2,q_data_diff0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\q_buf_reg_n_0_[11] ,\q_buf_reg_n_0_[10] ,\q_buf_reg_n_0_[9] ,\q_buf_reg_n_0_[8] }),
        .O(NLW_q_data_diff0_carry__1_O_UNCONNECTED[3:0]),
        .S({q_data_diff0_carry__1_i_1__0_n_0,q_data_diff0_carry__1_i_2__0_n_0,q_data_diff0_carry__1_i_3__0_n_0,q_data_diff0_carry__1_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__1_i_1__0
       (.I0(\q_buf_reg_n_0_[11] ),
        .I1(\q_data_reg_n_0_[11] ),
        .O(q_data_diff0_carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__1_i_2__0
       (.I0(\q_buf_reg_n_0_[10] ),
        .I1(\q_data_reg_n_0_[10] ),
        .O(q_data_diff0_carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__1_i_3__0
       (.I0(\q_buf_reg_n_0_[9] ),
        .I1(\q_data_reg_n_0_[9] ),
        .O(q_data_diff0_carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__1_i_4__0
       (.I0(\q_buf_reg_n_0_[8] ),
        .I1(\q_data_reg_n_0_[8] ),
        .O(q_data_diff0_carry__1_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 q_data_diff0_carry__2
       (.CI(q_data_diff0_carry__1_n_0),
        .CO({NLW_q_data_diff0_carry__2_CO_UNCONNECTED[3],q_data_diff0_carry__2_n_1,q_data_diff0_carry__2_n_2,q_data_diff0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\q_buf_reg_n_0_[14] ,\q_buf_reg_n_0_[13] ,\q_buf_reg_n_0_[12] }),
        .O({q_data_diff0_carry__2_n_4,NLW_q_data_diff0_carry__2_O_UNCONNECTED[2:0]}),
        .S({q_data_diff0_carry__2_i_1__0_n_0,q_data_diff0_carry__2_i_2__0_n_0,q_data_diff0_carry__2_i_3__0_n_0,q_data_diff0_carry__2_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__2_i_1__0
       (.I0(\q_buf_reg_n_0_[15] ),
        .I1(\q_data_reg_n_0_[15] ),
        .O(q_data_diff0_carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__2_i_2__0
       (.I0(\q_buf_reg_n_0_[14] ),
        .I1(\q_data_reg_n_0_[14] ),
        .O(q_data_diff0_carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__2_i_3__0
       (.I0(\q_buf_reg_n_0_[13] ),
        .I1(\q_data_reg_n_0_[13] ),
        .O(q_data_diff0_carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__2_i_4__0
       (.I0(\q_buf_reg_n_0_[12] ),
        .I1(\q_data_reg_n_0_[12] ),
        .O(q_data_diff0_carry__2_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry_i_1__0
       (.I0(\q_buf_reg_n_0_[3] ),
        .I1(\q_data_reg_n_0_[3] ),
        .O(q_data_diff0_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry_i_2__0
       (.I0(\q_buf_reg_n_0_[2] ),
        .I1(\q_data_reg_n_0_[2] ),
        .O(q_data_diff0_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry_i_3__0
       (.I0(\q_buf_reg_n_0_[1] ),
        .I1(\q_data_reg_n_0_[1] ),
        .O(q_data_diff0_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry_i_4__0
       (.I0(\q_buf_reg_n_0_[0] ),
        .I1(\q_data_reg_n_0_[0] ),
        .O(q_data_diff0_carry_i_4__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_diff_reg[15] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(q_data_diff0_carry__2_n_4),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[0] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[0]),
        .Q(\q_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[10] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[10]),
        .Q(\q_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[11] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[11]),
        .Q(\q_data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[12] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[12]),
        .Q(\q_data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[13] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[13]),
        .Q(\q_data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[14] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[14]),
        .Q(\q_data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[15] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[15]),
        .Q(\q_data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[1] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[1]),
        .Q(\q_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[2] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[2]),
        .Q(\q_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[3] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[3]),
        .Q(\q_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[4] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[4]),
        .Q(\q_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[5] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[5]),
        .Q(\q_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[6] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[6]),
        .Q(\q_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[7] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[7]),
        .Q(\q_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[8] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[8]),
        .Q(\q_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[9] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[9]),
        .Q(\q_data_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    q_valid_2_i_1__0
       (.I0(\block[1].min_max[1].MIN_MAX/q_valid_2 ),
        .I1(q_valid_reg_n_0),
        .O(q_valid_2_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_valid_2_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(q_valid_2_i_1__0_n_0),
        .Q(\block[1].min_max[1].MIN_MAX/q_valid_2 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAEAAA)) 
    q_valid_i_1__1
       (.I0(q_valid_reg_n_0),
        .I1(q_valid_reg_0),
        .I2(q_valid_reg_1),
        .I3(q_valid_reg_2),
        .I4(q_valid_reg_3),
        .O(q_valid_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_valid_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(q_valid_i_1__1_n_0),
        .Q(q_valid_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    w_last_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(SR),
        .Q(E),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "max_min" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_max_min_7
   (E,
    o_valid_reg_0,
    Q,
    \o_res_data_reg[15]_0 ,
    w_last_reg_0,
    i_clk,
    q_valid_reg_0,
    q_valid_reg_1,
    q_valid_reg_2,
    q_valid_reg_3,
    s_tvalid,
    q_valid_reg_4,
    q_valid_reg_5,
    q_valid_reg_6,
    q_valid_reg_7,
    q_valid_reg_8,
    \q_data_reg[15]_0 ,
    s_tdata);
  output [0:0]E;
  output o_valid_reg_0;
  output [7:0]Q;
  output [15:0]\o_res_data_reg[15]_0 ;
  input [0:0]w_last_reg_0;
  input i_clk;
  input q_valid_reg_0;
  input q_valid_reg_1;
  input q_valid_reg_2;
  input q_valid_reg_3;
  input s_tvalid;
  input q_valid_reg_4;
  input q_valid_reg_5;
  input q_valid_reg_6;
  input q_valid_reg_7;
  input q_valid_reg_8;
  input [0:0]\q_data_reg[15]_0 ;
  input [15:0]s_tdata;

  wire [0:0]E;
  wire [7:0]Q;
  wire \block[2].min_max[1].MIN_MAX/q_valid_2 ;
  wire i_clk;
  wire [15:0]\o_res_data_reg[15]_0 ;
  wire o_valid_reg_0;
  wire p_0_in;
  wire \q_buf_reg_n_0_[0] ;
  wire \q_buf_reg_n_0_[10] ;
  wire \q_buf_reg_n_0_[11] ;
  wire \q_buf_reg_n_0_[12] ;
  wire \q_buf_reg_n_0_[13] ;
  wire \q_buf_reg_n_0_[14] ;
  wire \q_buf_reg_n_0_[15] ;
  wire \q_buf_reg_n_0_[1] ;
  wire \q_buf_reg_n_0_[2] ;
  wire \q_buf_reg_n_0_[3] ;
  wire \q_buf_reg_n_0_[4] ;
  wire \q_buf_reg_n_0_[5] ;
  wire \q_buf_reg_n_0_[6] ;
  wire \q_buf_reg_n_0_[7] ;
  wire \q_buf_reg_n_0_[8] ;
  wire \q_buf_reg_n_0_[9] ;
  wire q_cnt_buf;
  wire \q_cnt_buf[0]_i_1__1_n_0 ;
  wire \q_cnt_buf[1]_i_1__1_n_0 ;
  wire \q_cnt_buf[2]_i_1__1_n_0 ;
  wire \q_cnt_buf[3]_i_1__1_n_0 ;
  wire \q_cnt_buf[4]_i_1__1_n_0 ;
  wire \q_cnt_buf[5]_i_1__1_n_0 ;
  wire \q_cnt_buf[6]_i_1__1_n_0 ;
  wire \q_cnt_buf[7]_i_1__1_n_0 ;
  wire \q_cnt_buf[7]_i_2__1_n_0 ;
  wire \q_cnt_buf_reg_n_0_[0] ;
  wire \q_cnt_buf_reg_n_0_[1] ;
  wire \q_cnt_buf_reg_n_0_[2] ;
  wire \q_cnt_buf_reg_n_0_[3] ;
  wire \q_cnt_buf_reg_n_0_[4] ;
  wire \q_cnt_buf_reg_n_0_[5] ;
  wire \q_cnt_buf_reg_n_0_[6] ;
  wire \q_cnt_buf_reg_n_0_[7] ;
  wire \q_data_2_reg_n_0_[0] ;
  wire \q_data_2_reg_n_0_[10] ;
  wire \q_data_2_reg_n_0_[11] ;
  wire \q_data_2_reg_n_0_[12] ;
  wire \q_data_2_reg_n_0_[13] ;
  wire \q_data_2_reg_n_0_[14] ;
  wire \q_data_2_reg_n_0_[15] ;
  wire \q_data_2_reg_n_0_[1] ;
  wire \q_data_2_reg_n_0_[2] ;
  wire \q_data_2_reg_n_0_[3] ;
  wire \q_data_2_reg_n_0_[4] ;
  wire \q_data_2_reg_n_0_[5] ;
  wire \q_data_2_reg_n_0_[6] ;
  wire \q_data_2_reg_n_0_[7] ;
  wire \q_data_2_reg_n_0_[8] ;
  wire \q_data_2_reg_n_0_[9] ;
  wire [7:0]q_data_cnt_reg;
  wire q_data_diff0_carry__0_i_1__1_n_0;
  wire q_data_diff0_carry__0_i_2__1_n_0;
  wire q_data_diff0_carry__0_i_3__1_n_0;
  wire q_data_diff0_carry__0_i_4__1_n_0;
  wire q_data_diff0_carry__0_n_0;
  wire q_data_diff0_carry__0_n_1;
  wire q_data_diff0_carry__0_n_2;
  wire q_data_diff0_carry__0_n_3;
  wire q_data_diff0_carry__1_i_1__1_n_0;
  wire q_data_diff0_carry__1_i_2__1_n_0;
  wire q_data_diff0_carry__1_i_3__1_n_0;
  wire q_data_diff0_carry__1_i_4__1_n_0;
  wire q_data_diff0_carry__1_n_0;
  wire q_data_diff0_carry__1_n_1;
  wire q_data_diff0_carry__1_n_2;
  wire q_data_diff0_carry__1_n_3;
  wire q_data_diff0_carry__2_i_1__1_n_0;
  wire q_data_diff0_carry__2_i_2__1_n_0;
  wire q_data_diff0_carry__2_i_3__1_n_0;
  wire q_data_diff0_carry__2_i_4__1_n_0;
  wire q_data_diff0_carry__2_n_1;
  wire q_data_diff0_carry__2_n_2;
  wire q_data_diff0_carry__2_n_3;
  wire q_data_diff0_carry__2_n_4;
  wire q_data_diff0_carry_i_1__1_n_0;
  wire q_data_diff0_carry_i_2__1_n_0;
  wire q_data_diff0_carry_i_3__1_n_0;
  wire q_data_diff0_carry_i_4__1_n_0;
  wire q_data_diff0_carry_n_0;
  wire q_data_diff0_carry_n_1;
  wire q_data_diff0_carry_n_2;
  wire q_data_diff0_carry_n_3;
  wire [0:0]\q_data_reg[15]_0 ;
  wire \q_data_reg_n_0_[0] ;
  wire \q_data_reg_n_0_[10] ;
  wire \q_data_reg_n_0_[11] ;
  wire \q_data_reg_n_0_[12] ;
  wire \q_data_reg_n_0_[13] ;
  wire \q_data_reg_n_0_[14] ;
  wire \q_data_reg_n_0_[15] ;
  wire \q_data_reg_n_0_[1] ;
  wire \q_data_reg_n_0_[2] ;
  wire \q_data_reg_n_0_[3] ;
  wire \q_data_reg_n_0_[4] ;
  wire \q_data_reg_n_0_[5] ;
  wire \q_data_reg_n_0_[6] ;
  wire \q_data_reg_n_0_[7] ;
  wire \q_data_reg_n_0_[8] ;
  wire \q_data_reg_n_0_[9] ;
  wire q_valid_2_i_1__1_n_0;
  wire q_valid_i_1_n_0;
  wire q_valid_i_2_n_0;
  wire q_valid_reg_0;
  wire q_valid_reg_1;
  wire q_valid_reg_2;
  wire q_valid_reg_3;
  wire q_valid_reg_4;
  wire q_valid_reg_5;
  wire q_valid_reg_6;
  wire q_valid_reg_7;
  wire q_valid_reg_8;
  wire q_valid_reg_n_0;
  wire [15:0]s_tdata;
  wire s_tvalid;
  wire [0:0]w_last_reg_0;
  wire [3:0]NLW_q_data_diff0_carry_O_UNCONNECTED;
  wire [3:0]NLW_q_data_diff0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_q_data_diff0_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_q_data_diff0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_q_data_diff0_carry__2_O_UNCONNECTED;

  FDRE \o_indx_data_reg[0] 
       (.C(i_clk),
        .CE(E),
        .D(\q_cnt_buf_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \o_indx_data_reg[1] 
       (.C(i_clk),
        .CE(E),
        .D(\q_cnt_buf_reg_n_0_[1] ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \o_indx_data_reg[2] 
       (.C(i_clk),
        .CE(E),
        .D(\q_cnt_buf_reg_n_0_[2] ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \o_indx_data_reg[3] 
       (.C(i_clk),
        .CE(E),
        .D(\q_cnt_buf_reg_n_0_[3] ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \o_indx_data_reg[4] 
       (.C(i_clk),
        .CE(E),
        .D(\q_cnt_buf_reg_n_0_[4] ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \o_indx_data_reg[5] 
       (.C(i_clk),
        .CE(E),
        .D(\q_cnt_buf_reg_n_0_[5] ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \o_indx_data_reg[6] 
       (.C(i_clk),
        .CE(E),
        .D(\q_cnt_buf_reg_n_0_[6] ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \o_indx_data_reg[7] 
       (.C(i_clk),
        .CE(E),
        .D(\q_cnt_buf_reg_n_0_[7] ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \o_res_data_reg[0] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[0] ),
        .Q(\o_res_data_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \o_res_data_reg[10] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[10] ),
        .Q(\o_res_data_reg[15]_0 [10]),
        .R(1'b0));
  FDRE \o_res_data_reg[11] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[11] ),
        .Q(\o_res_data_reg[15]_0 [11]),
        .R(1'b0));
  FDRE \o_res_data_reg[12] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[12] ),
        .Q(\o_res_data_reg[15]_0 [12]),
        .R(1'b0));
  FDRE \o_res_data_reg[13] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[13] ),
        .Q(\o_res_data_reg[15]_0 [13]),
        .R(1'b0));
  FDRE \o_res_data_reg[14] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[14] ),
        .Q(\o_res_data_reg[15]_0 [14]),
        .R(1'b0));
  FDRE \o_res_data_reg[15] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[15] ),
        .Q(\o_res_data_reg[15]_0 [15]),
        .R(1'b0));
  FDRE \o_res_data_reg[1] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[1] ),
        .Q(\o_res_data_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \o_res_data_reg[2] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[2] ),
        .Q(\o_res_data_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \o_res_data_reg[3] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[3] ),
        .Q(\o_res_data_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \o_res_data_reg[4] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[4] ),
        .Q(\o_res_data_reg[15]_0 [4]),
        .R(1'b0));
  FDRE \o_res_data_reg[5] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[5] ),
        .Q(\o_res_data_reg[15]_0 [5]),
        .R(1'b0));
  FDRE \o_res_data_reg[6] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[6] ),
        .Q(\o_res_data_reg[15]_0 [6]),
        .R(1'b0));
  FDRE \o_res_data_reg[7] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[7] ),
        .Q(\o_res_data_reg[15]_0 [7]),
        .R(1'b0));
  FDRE \o_res_data_reg[8] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[8] ),
        .Q(\o_res_data_reg[15]_0 [8]),
        .R(1'b0));
  FDRE \o_res_data_reg[9] 
       (.C(i_clk),
        .CE(E),
        .D(\q_buf_reg_n_0_[9] ),
        .Q(\o_res_data_reg[15]_0 [9]),
        .R(1'b0));
  FDRE o_valid_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(E),
        .Q(o_valid_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \q_buf[15]_i_1__1 
       (.I0(\block[2].min_max[1].MIN_MAX/q_valid_2 ),
        .I1(p_0_in),
        .O(q_cnt_buf));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[0] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[0] ),
        .Q(\q_buf_reg_n_0_[0] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[10] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[10] ),
        .Q(\q_buf_reg_n_0_[10] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[11] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[11] ),
        .Q(\q_buf_reg_n_0_[11] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[12] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[12] ),
        .Q(\q_buf_reg_n_0_[12] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[13] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[13] ),
        .Q(\q_buf_reg_n_0_[13] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[14] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[14] ),
        .Q(\q_buf_reg_n_0_[14] ),
        .S(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_buf_reg[15] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[15] ),
        .Q(\q_buf_reg_n_0_[15] ),
        .R(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[1] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[1] ),
        .Q(\q_buf_reg_n_0_[1] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[2] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[2] ),
        .Q(\q_buf_reg_n_0_[2] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[3] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[3] ),
        .Q(\q_buf_reg_n_0_[3] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[4] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[4] ),
        .Q(\q_buf_reg_n_0_[4] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[5] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[5] ),
        .Q(\q_buf_reg_n_0_[5] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[6] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[6] ),
        .Q(\q_buf_reg_n_0_[6] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[7] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[7] ),
        .Q(\q_buf_reg_n_0_[7] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[8] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[8] ),
        .Q(\q_buf_reg_n_0_[8] ),
        .S(E));
  FDSE #(
    .INIT(1'b1)) 
    \q_buf_reg[9] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_data_2_reg_n_0_[9] ),
        .Q(\q_buf_reg_n_0_[9] ),
        .S(E));
  LUT1 #(
    .INIT(2'h1)) 
    \q_cnt_buf[0]_i_1__1 
       (.I0(q_data_cnt_reg[0]),
        .O(\q_cnt_buf[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_cnt_buf[1]_i_1__1 
       (.I0(q_data_cnt_reg[0]),
        .I1(q_data_cnt_reg[1]),
        .O(\q_cnt_buf[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_cnt_buf[2]_i_1__1 
       (.I0(q_data_cnt_reg[0]),
        .I1(q_data_cnt_reg[1]),
        .I2(q_data_cnt_reg[2]),
        .O(\q_cnt_buf[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q_cnt_buf[3]_i_1__1 
       (.I0(q_data_cnt_reg[1]),
        .I1(q_data_cnt_reg[0]),
        .I2(q_data_cnt_reg[2]),
        .I3(q_data_cnt_reg[3]),
        .O(\q_cnt_buf[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q_cnt_buf[4]_i_1__1 
       (.I0(q_data_cnt_reg[2]),
        .I1(q_data_cnt_reg[0]),
        .I2(q_data_cnt_reg[1]),
        .I3(q_data_cnt_reg[3]),
        .I4(q_data_cnt_reg[4]),
        .O(\q_cnt_buf[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \q_cnt_buf[5]_i_1__1 
       (.I0(q_data_cnt_reg[3]),
        .I1(q_data_cnt_reg[1]),
        .I2(q_data_cnt_reg[0]),
        .I3(q_data_cnt_reg[2]),
        .I4(q_data_cnt_reg[4]),
        .I5(q_data_cnt_reg[5]),
        .O(\q_cnt_buf[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_cnt_buf[6]_i_1__1 
       (.I0(\q_cnt_buf[7]_i_2__1_n_0 ),
        .I1(q_data_cnt_reg[6]),
        .O(\q_cnt_buf[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_cnt_buf[7]_i_1__1 
       (.I0(\q_cnt_buf[7]_i_2__1_n_0 ),
        .I1(q_data_cnt_reg[6]),
        .I2(q_data_cnt_reg[7]),
        .O(\q_cnt_buf[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \q_cnt_buf[7]_i_2__1 
       (.I0(q_data_cnt_reg[5]),
        .I1(q_data_cnt_reg[3]),
        .I2(q_data_cnt_reg[1]),
        .I3(q_data_cnt_reg[0]),
        .I4(q_data_cnt_reg[2]),
        .I5(q_data_cnt_reg[4]),
        .O(\q_cnt_buf[7]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[0] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_cnt_buf[0]_i_1__1_n_0 ),
        .Q(\q_cnt_buf_reg_n_0_[0] ),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[1] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_cnt_buf[1]_i_1__1_n_0 ),
        .Q(\q_cnt_buf_reg_n_0_[1] ),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[2] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_cnt_buf[2]_i_1__1_n_0 ),
        .Q(\q_cnt_buf_reg_n_0_[2] ),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[3] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_cnt_buf[3]_i_1__1_n_0 ),
        .Q(\q_cnt_buf_reg_n_0_[3] ),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[4] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_cnt_buf[4]_i_1__1_n_0 ),
        .Q(\q_cnt_buf_reg_n_0_[4] ),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[5] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_cnt_buf[5]_i_1__1_n_0 ),
        .Q(\q_cnt_buf_reg_n_0_[5] ),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[6] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_cnt_buf[6]_i_1__1_n_0 ),
        .Q(\q_cnt_buf_reg_n_0_[6] ),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_cnt_buf_reg[7] 
       (.C(i_clk),
        .CE(q_cnt_buf),
        .D(\q_cnt_buf[7]_i_1__1_n_0 ),
        .Q(\q_cnt_buf_reg_n_0_[7] ),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[0] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[0] ),
        .Q(\q_data_2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[10] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[10] ),
        .Q(\q_data_2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[11] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[11] ),
        .Q(\q_data_2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[12] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[12] ),
        .Q(\q_data_2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[13] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[13] ),
        .Q(\q_data_2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[14] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[14] ),
        .Q(\q_data_2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[15] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[15] ),
        .Q(\q_data_2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[1] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[1] ),
        .Q(\q_data_2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[2] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[2] ),
        .Q(\q_data_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[3] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[3] ),
        .Q(\q_data_2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[4] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[4] ),
        .Q(\q_data_2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[5] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[5] ),
        .Q(\q_data_2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[6] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[6] ),
        .Q(\q_data_2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[7] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[7] ),
        .Q(\q_data_2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[8] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[8] ),
        .Q(\q_data_2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_2_reg[9] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(\q_data_reg_n_0_[9] ),
        .Q(\q_data_2_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[0] 
       (.C(i_clk),
        .CE(\block[2].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[0]_i_1__1_n_0 ),
        .Q(q_data_cnt_reg[0]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[1] 
       (.C(i_clk),
        .CE(\block[2].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[1]_i_1__1_n_0 ),
        .Q(q_data_cnt_reg[1]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[2] 
       (.C(i_clk),
        .CE(\block[2].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[2]_i_1__1_n_0 ),
        .Q(q_data_cnt_reg[2]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[3] 
       (.C(i_clk),
        .CE(\block[2].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[3]_i_1__1_n_0 ),
        .Q(q_data_cnt_reg[3]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[4] 
       (.C(i_clk),
        .CE(\block[2].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[4]_i_1__1_n_0 ),
        .Q(q_data_cnt_reg[4]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[5] 
       (.C(i_clk),
        .CE(\block[2].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[5]_i_1__1_n_0 ),
        .Q(q_data_cnt_reg[5]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[6] 
       (.C(i_clk),
        .CE(\block[2].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[6]_i_1__1_n_0 ),
        .Q(q_data_cnt_reg[6]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_cnt_reg[7] 
       (.C(i_clk),
        .CE(\block[2].min_max[1].MIN_MAX/q_valid_2 ),
        .D(\q_cnt_buf[7]_i_1__1_n_0 ),
        .Q(q_data_cnt_reg[7]),
        .R(E));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 q_data_diff0_carry
       (.CI(1'b0),
        .CO({q_data_diff0_carry_n_0,q_data_diff0_carry_n_1,q_data_diff0_carry_n_2,q_data_diff0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({\q_buf_reg_n_0_[3] ,\q_buf_reg_n_0_[2] ,\q_buf_reg_n_0_[1] ,\q_buf_reg_n_0_[0] }),
        .O(NLW_q_data_diff0_carry_O_UNCONNECTED[3:0]),
        .S({q_data_diff0_carry_i_1__1_n_0,q_data_diff0_carry_i_2__1_n_0,q_data_diff0_carry_i_3__1_n_0,q_data_diff0_carry_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 q_data_diff0_carry__0
       (.CI(q_data_diff0_carry_n_0),
        .CO({q_data_diff0_carry__0_n_0,q_data_diff0_carry__0_n_1,q_data_diff0_carry__0_n_2,q_data_diff0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\q_buf_reg_n_0_[7] ,\q_buf_reg_n_0_[6] ,\q_buf_reg_n_0_[5] ,\q_buf_reg_n_0_[4] }),
        .O(NLW_q_data_diff0_carry__0_O_UNCONNECTED[3:0]),
        .S({q_data_diff0_carry__0_i_1__1_n_0,q_data_diff0_carry__0_i_2__1_n_0,q_data_diff0_carry__0_i_3__1_n_0,q_data_diff0_carry__0_i_4__1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__0_i_1__1
       (.I0(\q_buf_reg_n_0_[7] ),
        .I1(\q_data_reg_n_0_[7] ),
        .O(q_data_diff0_carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__0_i_2__1
       (.I0(\q_buf_reg_n_0_[6] ),
        .I1(\q_data_reg_n_0_[6] ),
        .O(q_data_diff0_carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__0_i_3__1
       (.I0(\q_buf_reg_n_0_[5] ),
        .I1(\q_data_reg_n_0_[5] ),
        .O(q_data_diff0_carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__0_i_4__1
       (.I0(\q_buf_reg_n_0_[4] ),
        .I1(\q_data_reg_n_0_[4] ),
        .O(q_data_diff0_carry__0_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 q_data_diff0_carry__1
       (.CI(q_data_diff0_carry__0_n_0),
        .CO({q_data_diff0_carry__1_n_0,q_data_diff0_carry__1_n_1,q_data_diff0_carry__1_n_2,q_data_diff0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\q_buf_reg_n_0_[11] ,\q_buf_reg_n_0_[10] ,\q_buf_reg_n_0_[9] ,\q_buf_reg_n_0_[8] }),
        .O(NLW_q_data_diff0_carry__1_O_UNCONNECTED[3:0]),
        .S({q_data_diff0_carry__1_i_1__1_n_0,q_data_diff0_carry__1_i_2__1_n_0,q_data_diff0_carry__1_i_3__1_n_0,q_data_diff0_carry__1_i_4__1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__1_i_1__1
       (.I0(\q_buf_reg_n_0_[11] ),
        .I1(\q_data_reg_n_0_[11] ),
        .O(q_data_diff0_carry__1_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__1_i_2__1
       (.I0(\q_buf_reg_n_0_[10] ),
        .I1(\q_data_reg_n_0_[10] ),
        .O(q_data_diff0_carry__1_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__1_i_3__1
       (.I0(\q_buf_reg_n_0_[9] ),
        .I1(\q_data_reg_n_0_[9] ),
        .O(q_data_diff0_carry__1_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__1_i_4__1
       (.I0(\q_buf_reg_n_0_[8] ),
        .I1(\q_data_reg_n_0_[8] ),
        .O(q_data_diff0_carry__1_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 q_data_diff0_carry__2
       (.CI(q_data_diff0_carry__1_n_0),
        .CO({NLW_q_data_diff0_carry__2_CO_UNCONNECTED[3],q_data_diff0_carry__2_n_1,q_data_diff0_carry__2_n_2,q_data_diff0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\q_buf_reg_n_0_[14] ,\q_buf_reg_n_0_[13] ,\q_buf_reg_n_0_[12] }),
        .O({q_data_diff0_carry__2_n_4,NLW_q_data_diff0_carry__2_O_UNCONNECTED[2:0]}),
        .S({q_data_diff0_carry__2_i_1__1_n_0,q_data_diff0_carry__2_i_2__1_n_0,q_data_diff0_carry__2_i_3__1_n_0,q_data_diff0_carry__2_i_4__1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__2_i_1__1
       (.I0(\q_buf_reg_n_0_[15] ),
        .I1(\q_data_reg_n_0_[15] ),
        .O(q_data_diff0_carry__2_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__2_i_2__1
       (.I0(\q_buf_reg_n_0_[14] ),
        .I1(\q_data_reg_n_0_[14] ),
        .O(q_data_diff0_carry__2_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__2_i_3__1
       (.I0(\q_buf_reg_n_0_[13] ),
        .I1(\q_data_reg_n_0_[13] ),
        .O(q_data_diff0_carry__2_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry__2_i_4__1
       (.I0(\q_buf_reg_n_0_[12] ),
        .I1(\q_data_reg_n_0_[12] ),
        .O(q_data_diff0_carry__2_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry_i_1__1
       (.I0(\q_buf_reg_n_0_[3] ),
        .I1(\q_data_reg_n_0_[3] ),
        .O(q_data_diff0_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry_i_2__1
       (.I0(\q_buf_reg_n_0_[2] ),
        .I1(\q_data_reg_n_0_[2] ),
        .O(q_data_diff0_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry_i_3__1
       (.I0(\q_buf_reg_n_0_[1] ),
        .I1(\q_data_reg_n_0_[1] ),
        .O(q_data_diff0_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q_data_diff0_carry_i_4__1
       (.I0(\q_buf_reg_n_0_[0] ),
        .I1(\q_data_reg_n_0_[0] ),
        .O(q_data_diff0_carry_i_4__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_diff_reg[15] 
       (.C(i_clk),
        .CE(q_valid_reg_n_0),
        .D(q_data_diff0_carry__2_n_4),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[0] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[0]),
        .Q(\q_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[10] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[10]),
        .Q(\q_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[11] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[11]),
        .Q(\q_data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[12] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[12]),
        .Q(\q_data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[13] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[13]),
        .Q(\q_data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[14] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[14]),
        .Q(\q_data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[15] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[15]),
        .Q(\q_data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[1] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[1]),
        .Q(\q_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[2] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[2]),
        .Q(\q_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[3] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[3]),
        .Q(\q_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[4] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[4]),
        .Q(\q_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[5] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[5]),
        .Q(\q_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[6] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[6]),
        .Q(\q_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[7] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[7]),
        .Q(\q_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[8] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[8]),
        .Q(\q_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_data_reg[9] 
       (.C(i_clk),
        .CE(\q_data_reg[15]_0 ),
        .D(s_tdata[9]),
        .Q(\q_data_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    q_valid_2_i_1__1
       (.I0(\block[2].min_max[1].MIN_MAX/q_valid_2 ),
        .I1(q_valid_reg_n_0),
        .O(q_valid_2_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_valid_2_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(q_valid_2_i_1__1_n_0),
        .Q(\block[2].min_max[1].MIN_MAX/q_valid_2 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    q_valid_i_1
       (.I0(q_valid_reg_n_0),
        .I1(q_valid_reg_5),
        .I2(q_valid_reg_6),
        .I3(q_valid_reg_7),
        .I4(q_valid_reg_8),
        .I5(q_valid_i_2_n_0),
        .O(q_valid_i_1_n_0));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    q_valid_i_2
       (.I0(q_valid_reg_0),
        .I1(q_valid_reg_1),
        .I2(q_valid_reg_2),
        .I3(q_valid_reg_3),
        .I4(s_tvalid),
        .I5(q_valid_reg_4),
        .O(q_valid_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_valid_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(q_valid_i_1_n_0),
        .Q(q_valid_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    w_last_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(w_last_reg_0),
        .Q(E),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mem
   (\o_rd_data_reg[25]_0 ,
    i_clk,
    i_wr_data,
    E,
    Q);
  output [23:0]\o_rd_data_reg[25]_0 ;
  input i_clk;
  input [23:0]i_wr_data;
  input [0:0]E;
  input [0:0]Q;

  wire [0:0]E;
  wire [0:0]Q;
  wire i_clk;
  wire [23:0]i_wr_data;
  wire [25:0]o_rd_data0;
  wire [23:0]\o_rd_data_reg[25]_0 ;
  wire [4:0]p_0_in;
  wire [4:0]q_r_addr;
  wire \q_r_addr[0]_i_1_n_0 ;
  wire \q_r_addr[1]_i_1_n_0 ;
  wire \q_r_addr[2]_i_1_n_0 ;
  wire \q_r_addr[3]_i_1_n_0 ;
  wire \q_r_addr[4]_i_1_n_0 ;
  wire \q_r_addr[4]_i_2_n_0 ;
  wire \q_r_addr[4]_i_3_n_0 ;
  wire [4:0]q_wr_addr_prev;
  wire [4:0]q_wr_addr_reg;
  wire [1:0]NLW_q_mem_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_18_23_DOD_UNCONNECTED;
  wire NLW_q_mem_reg_0_31_24_25_SPO_UNCONNECTED;
  wire NLW_q_mem_reg_0_31_24_25__0_SPO_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_6_11_DOB_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_6_11_DOD_UNCONNECTED;

  FDRE \o_rd_data_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0[0]),
        .Q(\o_rd_data_reg[25]_0 [0]),
        .R(1'b0));
  FDRE \o_rd_data_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0[10]),
        .Q(\o_rd_data_reg[25]_0 [8]),
        .R(1'b0));
  FDRE \o_rd_data_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0[11]),
        .Q(\o_rd_data_reg[25]_0 [9]),
        .R(1'b0));
  FDRE \o_rd_data_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0[12]),
        .Q(\o_rd_data_reg[25]_0 [10]),
        .R(1'b0));
  FDRE \o_rd_data_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0[13]),
        .Q(\o_rd_data_reg[25]_0 [11]),
        .R(1'b0));
  FDRE \o_rd_data_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0[14]),
        .Q(\o_rd_data_reg[25]_0 [12]),
        .R(1'b0));
  FDRE \o_rd_data_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0[15]),
        .Q(\o_rd_data_reg[25]_0 [13]),
        .R(1'b0));
  FDRE \o_rd_data_reg[16] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0[16]),
        .Q(\o_rd_data_reg[25]_0 [14]),
        .R(1'b0));
  FDRE \o_rd_data_reg[17] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0[17]),
        .Q(\o_rd_data_reg[25]_0 [15]),
        .R(1'b0));
  FDRE \o_rd_data_reg[18] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0[18]),
        .Q(\o_rd_data_reg[25]_0 [16]),
        .R(1'b0));
  FDRE \o_rd_data_reg[19] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0[19]),
        .Q(\o_rd_data_reg[25]_0 [17]),
        .R(1'b0));
  FDRE \o_rd_data_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0[1]),
        .Q(\o_rd_data_reg[25]_0 [1]),
        .R(1'b0));
  FDRE \o_rd_data_reg[20] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0[20]),
        .Q(\o_rd_data_reg[25]_0 [18]),
        .R(1'b0));
  FDRE \o_rd_data_reg[21] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0[21]),
        .Q(\o_rd_data_reg[25]_0 [19]),
        .R(1'b0));
  FDRE \o_rd_data_reg[22] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0[22]),
        .Q(\o_rd_data_reg[25]_0 [20]),
        .R(1'b0));
  FDRE \o_rd_data_reg[23] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0[23]),
        .Q(\o_rd_data_reg[25]_0 [21]),
        .R(1'b0));
  FDRE \o_rd_data_reg[24] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0[24]),
        .Q(\o_rd_data_reg[25]_0 [22]),
        .R(1'b0));
  FDRE \o_rd_data_reg[25] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0[25]),
        .Q(\o_rd_data_reg[25]_0 [23]),
        .R(1'b0));
  FDRE \o_rd_data_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0[2]),
        .Q(\o_rd_data_reg[25]_0 [2]),
        .R(1'b0));
  FDRE \o_rd_data_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0[3]),
        .Q(\o_rd_data_reg[25]_0 [3]),
        .R(1'b0));
  FDRE \o_rd_data_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0[4]),
        .Q(\o_rd_data_reg[25]_0 [4]),
        .R(1'b0));
  FDRE \o_rd_data_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0[5]),
        .Q(\o_rd_data_reg[25]_0 [5]),
        .R(1'b0));
  FDRE \o_rd_data_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0[6]),
        .Q(\o_rd_data_reg[25]_0 [6]),
        .R(1'b0));
  FDRE \o_rd_data_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0[7]),
        .Q(\o_rd_data_reg[25]_0 [7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "832" *) 
  (* RTL_RAM_NAME = "inst/block[0].min_max[0].MEM_MIN_MAX/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_0_5
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD(q_wr_addr_reg),
        .DIA(i_wr_data[1:0]),
        .DIB(i_wr_data[3:2]),
        .DIC(i_wr_data[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0[1:0]),
        .DOB(o_rd_data0[3:2]),
        .DOC(o_rd_data0[5:4]),
        .DOD(NLW_q_mem_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "832" *) 
  (* RTL_RAM_NAME = "inst/block[0].min_max[0].MEM_MIN_MAX/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_12_17
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD(q_wr_addr_reg),
        .DIA(i_wr_data[11:10]),
        .DIB(i_wr_data[13:12]),
        .DIC(i_wr_data[15:14]),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0[13:12]),
        .DOB(o_rd_data0[15:14]),
        .DOC(o_rd_data0[17:16]),
        .DOD(NLW_q_mem_reg_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "832" *) 
  (* RTL_RAM_NAME = "inst/block[0].min_max[0].MEM_MIN_MAX/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_18_23
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD(q_wr_addr_reg),
        .DIA(i_wr_data[17:16]),
        .DIB(i_wr_data[19:18]),
        .DIC(i_wr_data[21:20]),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0[19:18]),
        .DOB(o_rd_data0[21:20]),
        .DOC(o_rd_data0[23:22]),
        .DOD(NLW_q_mem_reg_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "832" *) 
  (* RTL_RAM_NAME = "inst/block[0].min_max[0].MEM_MIN_MAX/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "25" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    q_mem_reg_0_31_24_25
       (.A0(q_wr_addr_reg[0]),
        .A1(q_wr_addr_reg[1]),
        .A2(q_wr_addr_reg[2]),
        .A3(q_wr_addr_reg[3]),
        .A4(q_wr_addr_reg[4]),
        .D(i_wr_data[22]),
        .DPO(o_rd_data0[24]),
        .DPRA0(q_r_addr[0]),
        .DPRA1(q_r_addr[1]),
        .DPRA2(q_r_addr[2]),
        .DPRA3(q_r_addr[3]),
        .DPRA4(q_r_addr[4]),
        .SPO(NLW_q_mem_reg_0_31_24_25_SPO_UNCONNECTED),
        .WCLK(i_clk),
        .WE(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "832" *) 
  (* RTL_RAM_NAME = "inst/block[0].min_max[0].MEM_MIN_MAX/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "25" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    q_mem_reg_0_31_24_25__0
       (.A0(q_wr_addr_reg[0]),
        .A1(q_wr_addr_reg[1]),
        .A2(q_wr_addr_reg[2]),
        .A3(q_wr_addr_reg[3]),
        .A4(q_wr_addr_reg[4]),
        .D(i_wr_data[23]),
        .DPO(o_rd_data0[25]),
        .DPRA0(q_r_addr[0]),
        .DPRA1(q_r_addr[1]),
        .DPRA2(q_r_addr[2]),
        .DPRA3(q_r_addr[3]),
        .DPRA4(q_r_addr[4]),
        .SPO(NLW_q_mem_reg_0_31_24_25__0_SPO_UNCONNECTED),
        .WCLK(i_clk),
        .WE(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "832" *) 
  (* RTL_RAM_NAME = "inst/block[0].min_max[0].MEM_MIN_MAX/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_6_11
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD(q_wr_addr_reg),
        .DIA(i_wr_data[7:6]),
        .DIB({1'b0,1'b0}),
        .DIC(i_wr_data[9:8]),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0[7:6]),
        .DOB(NLW_q_mem_reg_0_31_6_11_DOB_UNCONNECTED[1:0]),
        .DOC(o_rd_data0[11:10]),
        .DOD(NLW_q_mem_reg_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(E));
  LUT1 #(
    .INIT(2'h1)) 
    \q_r_addr[0]_i_1 
       (.I0(q_r_addr[0]),
        .O(\q_r_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_r_addr[1]_i_1 
       (.I0(q_r_addr[0]),
        .I1(q_r_addr[1]),
        .O(\q_r_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_r_addr[2]_i_1 
       (.I0(q_r_addr[0]),
        .I1(q_r_addr[1]),
        .I2(q_r_addr[2]),
        .O(\q_r_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q_r_addr[3]_i_1 
       (.I0(q_r_addr[1]),
        .I1(q_r_addr[0]),
        .I2(q_r_addr[2]),
        .I3(q_r_addr[3]),
        .O(\q_r_addr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80A80000AAAA80A8)) 
    \q_r_addr[4]_i_1 
       (.I0(Q),
        .I1(\q_r_addr[4]_i_3_n_0 ),
        .I2(q_wr_addr_prev[3]),
        .I3(q_r_addr[3]),
        .I4(q_wr_addr_prev[4]),
        .I5(q_r_addr[4]),
        .O(\q_r_addr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q_r_addr[4]_i_2 
       (.I0(q_r_addr[2]),
        .I1(q_r_addr[0]),
        .I2(q_r_addr[1]),
        .I3(q_r_addr[3]),
        .I4(q_r_addr[4]),
        .O(\q_r_addr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44D444D4D4DD44D4)) 
    \q_r_addr[4]_i_3 
       (.I0(q_r_addr[2]),
        .I1(q_wr_addr_prev[2]),
        .I2(q_wr_addr_prev[1]),
        .I3(q_r_addr[1]),
        .I4(q_wr_addr_prev[0]),
        .I5(q_r_addr[0]),
        .O(\q_r_addr[4]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[0] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1_n_0 ),
        .D(\q_r_addr[0]_i_1_n_0 ),
        .Q(q_r_addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[1] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1_n_0 ),
        .D(\q_r_addr[1]_i_1_n_0 ),
        .Q(q_r_addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[2] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1_n_0 ),
        .D(\q_r_addr[2]_i_1_n_0 ),
        .Q(q_r_addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[3] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1_n_0 ),
        .D(\q_r_addr[3]_i_1_n_0 ),
        .Q(q_r_addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[4] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1_n_0 ),
        .D(\q_r_addr[4]_i_2_n_0 ),
        .Q(q_r_addr[4]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \q_wr_addr[0]_i_1 
       (.I0(q_wr_addr_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_wr_addr[1]_i_1 
       (.I0(q_wr_addr_reg[0]),
        .I1(q_wr_addr_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_wr_addr[2]_i_1 
       (.I0(q_wr_addr_reg[0]),
        .I1(q_wr_addr_reg[1]),
        .I2(q_wr_addr_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q_wr_addr[3]_i_1 
       (.I0(q_wr_addr_reg[1]),
        .I1(q_wr_addr_reg[0]),
        .I2(q_wr_addr_reg[2]),
        .I3(q_wr_addr_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q_wr_addr[4]_i_1 
       (.I0(q_wr_addr_reg[2]),
        .I1(q_wr_addr_reg[0]),
        .I2(q_wr_addr_reg[1]),
        .I3(q_wr_addr_reg[3]),
        .I4(q_wr_addr_reg[4]),
        .O(p_0_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[0] 
       (.C(i_clk),
        .CE(E),
        .D(q_wr_addr_reg[0]),
        .Q(q_wr_addr_prev[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[1] 
       (.C(i_clk),
        .CE(E),
        .D(q_wr_addr_reg[1]),
        .Q(q_wr_addr_prev[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[2] 
       (.C(i_clk),
        .CE(E),
        .D(q_wr_addr_reg[2]),
        .Q(q_wr_addr_prev[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[3] 
       (.C(i_clk),
        .CE(E),
        .D(q_wr_addr_reg[3]),
        .Q(q_wr_addr_prev[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[4] 
       (.C(i_clk),
        .CE(E),
        .D(q_wr_addr_reg[4]),
        .Q(q_wr_addr_prev[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[0] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in[0]),
        .Q(q_wr_addr_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[1] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in[1]),
        .Q(q_wr_addr_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[2] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in[2]),
        .Q(q_wr_addr_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[3] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in[3]),
        .Q(q_wr_addr_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[4] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in[4]),
        .Q(q_wr_addr_reg[4]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mem" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mem_10
   (\o_rd_data_reg[25]_0 ,
    i_clk,
    Q,
    \q_wr_addr_reg[0]_0 ,
    \q_r_addr_reg[4]_0 ,
    \o_rd_data_reg[7]_0 );
  output [23:0]\o_rd_data_reg[25]_0 ;
  input i_clk;
  input [15:0]Q;
  input \q_wr_addr_reg[0]_0 ;
  input [0:0]\q_r_addr_reg[4]_0 ;
  input [7:0]\o_rd_data_reg[7]_0 ;

  wire [15:0]Q;
  wire i_clk;
  wire [25:0]o_rd_data0__2;
  wire [23:0]\o_rd_data_reg[25]_0 ;
  wire [7:0]\o_rd_data_reg[7]_0 ;
  wire [4:0]p_0_in__5;
  wire [4:0]q_r_addr;
  wire \q_r_addr[0]_i_1__2_n_0 ;
  wire \q_r_addr[1]_i_1__2_n_0 ;
  wire \q_r_addr[2]_i_1__2_n_0 ;
  wire \q_r_addr[3]_i_1__2_n_0 ;
  wire \q_r_addr[4]_i_1__5_n_0 ;
  wire \q_r_addr[4]_i_2__2_n_0 ;
  wire \q_r_addr[4]_i_3__5_n_0 ;
  wire [0:0]\q_r_addr_reg[4]_0 ;
  wire \q_wr_addr_prev_reg_n_0_[0] ;
  wire \q_wr_addr_prev_reg_n_0_[1] ;
  wire \q_wr_addr_prev_reg_n_0_[2] ;
  wire \q_wr_addr_prev_reg_n_0_[3] ;
  wire \q_wr_addr_prev_reg_n_0_[4] ;
  wire \q_wr_addr_reg[0]_0 ;
  wire \q_wr_addr_reg_n_0_[0] ;
  wire \q_wr_addr_reg_n_0_[1] ;
  wire \q_wr_addr_reg_n_0_[2] ;
  wire \q_wr_addr_reg_n_0_[3] ;
  wire \q_wr_addr_reg_n_0_[4] ;
  wire [1:0]NLW_q_mem_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_18_23_DOD_UNCONNECTED;
  wire NLW_q_mem_reg_0_31_24_25_SPO_UNCONNECTED;
  wire NLW_q_mem_reg_0_31_24_25__0_SPO_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_6_11_DOB_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_6_11_DOD_UNCONNECTED;

  FDRE \o_rd_data_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__2[0]),
        .Q(\o_rd_data_reg[25]_0 [0]),
        .R(1'b0));
  FDRE \o_rd_data_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__2[10]),
        .Q(\o_rd_data_reg[25]_0 [8]),
        .R(1'b0));
  FDRE \o_rd_data_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__2[11]),
        .Q(\o_rd_data_reg[25]_0 [9]),
        .R(1'b0));
  FDRE \o_rd_data_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__2[12]),
        .Q(\o_rd_data_reg[25]_0 [10]),
        .R(1'b0));
  FDRE \o_rd_data_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__2[13]),
        .Q(\o_rd_data_reg[25]_0 [11]),
        .R(1'b0));
  FDRE \o_rd_data_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__2[14]),
        .Q(\o_rd_data_reg[25]_0 [12]),
        .R(1'b0));
  FDRE \o_rd_data_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__2[15]),
        .Q(\o_rd_data_reg[25]_0 [13]),
        .R(1'b0));
  FDRE \o_rd_data_reg[16] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__2[16]),
        .Q(\o_rd_data_reg[25]_0 [14]),
        .R(1'b0));
  FDRE \o_rd_data_reg[17] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__2[17]),
        .Q(\o_rd_data_reg[25]_0 [15]),
        .R(1'b0));
  FDRE \o_rd_data_reg[18] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__2[18]),
        .Q(\o_rd_data_reg[25]_0 [16]),
        .R(1'b0));
  FDRE \o_rd_data_reg[19] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__2[19]),
        .Q(\o_rd_data_reg[25]_0 [17]),
        .R(1'b0));
  FDRE \o_rd_data_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__2[1]),
        .Q(\o_rd_data_reg[25]_0 [1]),
        .R(1'b0));
  FDRE \o_rd_data_reg[20] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__2[20]),
        .Q(\o_rd_data_reg[25]_0 [18]),
        .R(1'b0));
  FDRE \o_rd_data_reg[21] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__2[21]),
        .Q(\o_rd_data_reg[25]_0 [19]),
        .R(1'b0));
  FDRE \o_rd_data_reg[22] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__2[22]),
        .Q(\o_rd_data_reg[25]_0 [20]),
        .R(1'b0));
  FDRE \o_rd_data_reg[23] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__2[23]),
        .Q(\o_rd_data_reg[25]_0 [21]),
        .R(1'b0));
  FDRE \o_rd_data_reg[24] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__2[24]),
        .Q(\o_rd_data_reg[25]_0 [22]),
        .R(1'b0));
  FDRE \o_rd_data_reg[25] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__2[25]),
        .Q(\o_rd_data_reg[25]_0 [23]),
        .R(1'b0));
  FDRE \o_rd_data_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__2[2]),
        .Q(\o_rd_data_reg[25]_0 [2]),
        .R(1'b0));
  FDRE \o_rd_data_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__2[3]),
        .Q(\o_rd_data_reg[25]_0 [3]),
        .R(1'b0));
  FDRE \o_rd_data_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__2[4]),
        .Q(\o_rd_data_reg[25]_0 [4]),
        .R(1'b0));
  FDRE \o_rd_data_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__2[5]),
        .Q(\o_rd_data_reg[25]_0 [5]),
        .R(1'b0));
  FDRE \o_rd_data_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__2[6]),
        .Q(\o_rd_data_reg[25]_0 [6]),
        .R(1'b0));
  FDRE \o_rd_data_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__2[7]),
        .Q(\o_rd_data_reg[25]_0 [7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "832" *) 
  (* RTL_RAM_NAME = "inst/block[3].min_max[0].MEM_MIN_MAX/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_0_5
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD({\q_wr_addr_reg_n_0_[4] ,\q_wr_addr_reg_n_0_[3] ,\q_wr_addr_reg_n_0_[2] ,\q_wr_addr_reg_n_0_[1] ,\q_wr_addr_reg_n_0_[0] }),
        .DIA(\o_rd_data_reg[7]_0 [1:0]),
        .DIB(\o_rd_data_reg[7]_0 [3:2]),
        .DIC(\o_rd_data_reg[7]_0 [5:4]),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0__2[1:0]),
        .DOB(o_rd_data0__2[3:2]),
        .DOC(o_rd_data0__2[5:4]),
        .DOD(NLW_q_mem_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(\q_wr_addr_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "832" *) 
  (* RTL_RAM_NAME = "inst/block[3].min_max[0].MEM_MIN_MAX/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_12_17
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD({\q_wr_addr_reg_n_0_[4] ,\q_wr_addr_reg_n_0_[3] ,\q_wr_addr_reg_n_0_[2] ,\q_wr_addr_reg_n_0_[1] ,\q_wr_addr_reg_n_0_[0] }),
        .DIA(Q[3:2]),
        .DIB(Q[5:4]),
        .DIC(Q[7:6]),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0__2[13:12]),
        .DOB(o_rd_data0__2[15:14]),
        .DOC(o_rd_data0__2[17:16]),
        .DOD(NLW_q_mem_reg_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(\q_wr_addr_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "832" *) 
  (* RTL_RAM_NAME = "inst/block[3].min_max[0].MEM_MIN_MAX/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_18_23
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD({\q_wr_addr_reg_n_0_[4] ,\q_wr_addr_reg_n_0_[3] ,\q_wr_addr_reg_n_0_[2] ,\q_wr_addr_reg_n_0_[1] ,\q_wr_addr_reg_n_0_[0] }),
        .DIA(Q[9:8]),
        .DIB(Q[11:10]),
        .DIC(Q[13:12]),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0__2[19:18]),
        .DOB(o_rd_data0__2[21:20]),
        .DOC(o_rd_data0__2[23:22]),
        .DOD(NLW_q_mem_reg_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(\q_wr_addr_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "832" *) 
  (* RTL_RAM_NAME = "inst/block[3].min_max[0].MEM_MIN_MAX/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "25" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    q_mem_reg_0_31_24_25
       (.A0(\q_wr_addr_reg_n_0_[0] ),
        .A1(\q_wr_addr_reg_n_0_[1] ),
        .A2(\q_wr_addr_reg_n_0_[2] ),
        .A3(\q_wr_addr_reg_n_0_[3] ),
        .A4(\q_wr_addr_reg_n_0_[4] ),
        .D(Q[14]),
        .DPO(o_rd_data0__2[24]),
        .DPRA0(q_r_addr[0]),
        .DPRA1(q_r_addr[1]),
        .DPRA2(q_r_addr[2]),
        .DPRA3(q_r_addr[3]),
        .DPRA4(q_r_addr[4]),
        .SPO(NLW_q_mem_reg_0_31_24_25_SPO_UNCONNECTED),
        .WCLK(i_clk),
        .WE(\q_wr_addr_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "832" *) 
  (* RTL_RAM_NAME = "inst/block[3].min_max[0].MEM_MIN_MAX/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "25" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    q_mem_reg_0_31_24_25__0
       (.A0(\q_wr_addr_reg_n_0_[0] ),
        .A1(\q_wr_addr_reg_n_0_[1] ),
        .A2(\q_wr_addr_reg_n_0_[2] ),
        .A3(\q_wr_addr_reg_n_0_[3] ),
        .A4(\q_wr_addr_reg_n_0_[4] ),
        .D(Q[15]),
        .DPO(o_rd_data0__2[25]),
        .DPRA0(q_r_addr[0]),
        .DPRA1(q_r_addr[1]),
        .DPRA2(q_r_addr[2]),
        .DPRA3(q_r_addr[3]),
        .DPRA4(q_r_addr[4]),
        .SPO(NLW_q_mem_reg_0_31_24_25__0_SPO_UNCONNECTED),
        .WCLK(i_clk),
        .WE(\q_wr_addr_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "832" *) 
  (* RTL_RAM_NAME = "inst/block[3].min_max[0].MEM_MIN_MAX/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_6_11
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD({\q_wr_addr_reg_n_0_[4] ,\q_wr_addr_reg_n_0_[3] ,\q_wr_addr_reg_n_0_[2] ,\q_wr_addr_reg_n_0_[1] ,\q_wr_addr_reg_n_0_[0] }),
        .DIA(\o_rd_data_reg[7]_0 [7:6]),
        .DIB({1'b0,1'b0}),
        .DIC(Q[1:0]),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0__2[7:6]),
        .DOB(NLW_q_mem_reg_0_31_6_11_DOB_UNCONNECTED[1:0]),
        .DOC(o_rd_data0__2[11:10]),
        .DOD(NLW_q_mem_reg_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(\q_wr_addr_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_r_addr[0]_i_1__2 
       (.I0(q_r_addr[0]),
        .O(\q_r_addr[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_r_addr[1]_i_1__2 
       (.I0(q_r_addr[0]),
        .I1(q_r_addr[1]),
        .O(\q_r_addr[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_r_addr[2]_i_1__2 
       (.I0(q_r_addr[0]),
        .I1(q_r_addr[1]),
        .I2(q_r_addr[2]),
        .O(\q_r_addr[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q_r_addr[3]_i_1__2 
       (.I0(q_r_addr[1]),
        .I1(q_r_addr[0]),
        .I2(q_r_addr[2]),
        .I3(q_r_addr[3]),
        .O(\q_r_addr[3]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h80A80000AAAA80A8)) 
    \q_r_addr[4]_i_1__5 
       (.I0(\q_r_addr_reg[4]_0 ),
        .I1(\q_r_addr[4]_i_3__5_n_0 ),
        .I2(\q_wr_addr_prev_reg_n_0_[3] ),
        .I3(q_r_addr[3]),
        .I4(\q_wr_addr_prev_reg_n_0_[4] ),
        .I5(q_r_addr[4]),
        .O(\q_r_addr[4]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q_r_addr[4]_i_2__2 
       (.I0(q_r_addr[2]),
        .I1(q_r_addr[0]),
        .I2(q_r_addr[1]),
        .I3(q_r_addr[3]),
        .I4(q_r_addr[4]),
        .O(\q_r_addr[4]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'h44D444D4D4DD44D4)) 
    \q_r_addr[4]_i_3__5 
       (.I0(q_r_addr[2]),
        .I1(\q_wr_addr_prev_reg_n_0_[2] ),
        .I2(\q_wr_addr_prev_reg_n_0_[1] ),
        .I3(q_r_addr[1]),
        .I4(\q_wr_addr_prev_reg_n_0_[0] ),
        .I5(q_r_addr[0]),
        .O(\q_r_addr[4]_i_3__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[0] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__5_n_0 ),
        .D(\q_r_addr[0]_i_1__2_n_0 ),
        .Q(q_r_addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[1] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__5_n_0 ),
        .D(\q_r_addr[1]_i_1__2_n_0 ),
        .Q(q_r_addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[2] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__5_n_0 ),
        .D(\q_r_addr[2]_i_1__2_n_0 ),
        .Q(q_r_addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[3] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__5_n_0 ),
        .D(\q_r_addr[3]_i_1__2_n_0 ),
        .Q(q_r_addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[4] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__5_n_0 ),
        .D(\q_r_addr[4]_i_2__2_n_0 ),
        .Q(q_r_addr[4]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \q_wr_addr[0]_i_1__5 
       (.I0(\q_wr_addr_reg_n_0_[0] ),
        .O(p_0_in__5[0]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_wr_addr[1]_i_1__5 
       (.I0(\q_wr_addr_reg_n_0_[0] ),
        .I1(\q_wr_addr_reg_n_0_[1] ),
        .O(p_0_in__5[1]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_wr_addr[2]_i_1__5 
       (.I0(\q_wr_addr_reg_n_0_[0] ),
        .I1(\q_wr_addr_reg_n_0_[1] ),
        .I2(\q_wr_addr_reg_n_0_[2] ),
        .O(p_0_in__5[2]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q_wr_addr[3]_i_1__5 
       (.I0(\q_wr_addr_reg_n_0_[1] ),
        .I1(\q_wr_addr_reg_n_0_[0] ),
        .I2(\q_wr_addr_reg_n_0_[2] ),
        .I3(\q_wr_addr_reg_n_0_[3] ),
        .O(p_0_in__5[3]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q_wr_addr[4]_i_1__5 
       (.I0(\q_wr_addr_reg_n_0_[2] ),
        .I1(\q_wr_addr_reg_n_0_[0] ),
        .I2(\q_wr_addr_reg_n_0_[1] ),
        .I3(\q_wr_addr_reg_n_0_[3] ),
        .I4(\q_wr_addr_reg_n_0_[4] ),
        .O(p_0_in__5[4]));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[0] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(\q_wr_addr_reg_n_0_[0] ),
        .Q(\q_wr_addr_prev_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[1] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(\q_wr_addr_reg_n_0_[1] ),
        .Q(\q_wr_addr_prev_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[2] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(\q_wr_addr_reg_n_0_[2] ),
        .Q(\q_wr_addr_prev_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[3] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(\q_wr_addr_reg_n_0_[3] ),
        .Q(\q_wr_addr_prev_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[4] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(\q_wr_addr_reg_n_0_[4] ),
        .Q(\q_wr_addr_prev_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[0] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(p_0_in__5[0]),
        .Q(\q_wr_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[1] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(p_0_in__5[1]),
        .Q(\q_wr_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[2] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(p_0_in__5[2]),
        .Q(\q_wr_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[3] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(p_0_in__5[3]),
        .Q(\q_wr_addr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[4] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(p_0_in__5[4]),
        .Q(\q_wr_addr_reg_n_0_[4] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mem" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mem_2
   (\o_rd_data_reg[25]_0 ,
    i_clk,
    Q,
    \q_wr_addr_reg[0]_0 ,
    \q_r_addr_reg[4]_0 ,
    \o_rd_data_reg[7]_0 );
  output [23:0]\o_rd_data_reg[25]_0 ;
  input i_clk;
  input [15:0]Q;
  input \q_wr_addr_reg[0]_0 ;
  input [0:0]\q_r_addr_reg[4]_0 ;
  input [7:0]\o_rd_data_reg[7]_0 ;

  wire [15:0]Q;
  wire i_clk;
  wire [25:0]o_rd_data0__0;
  wire [23:0]\o_rd_data_reg[25]_0 ;
  wire [7:0]\o_rd_data_reg[7]_0 ;
  wire [4:0]p_0_in__1;
  wire [4:0]q_r_addr;
  wire \q_r_addr[0]_i_1__0_n_0 ;
  wire \q_r_addr[1]_i_1__0_n_0 ;
  wire \q_r_addr[2]_i_1__0_n_0 ;
  wire \q_r_addr[3]_i_1__0_n_0 ;
  wire \q_r_addr[4]_i_1__1_n_0 ;
  wire \q_r_addr[4]_i_2__0_n_0 ;
  wire \q_r_addr[4]_i_3__1_n_0 ;
  wire [0:0]\q_r_addr_reg[4]_0 ;
  wire \q_wr_addr_prev_reg_n_0_[0] ;
  wire \q_wr_addr_prev_reg_n_0_[1] ;
  wire \q_wr_addr_prev_reg_n_0_[2] ;
  wire \q_wr_addr_prev_reg_n_0_[3] ;
  wire \q_wr_addr_prev_reg_n_0_[4] ;
  wire \q_wr_addr_reg[0]_0 ;
  wire \q_wr_addr_reg_n_0_[0] ;
  wire \q_wr_addr_reg_n_0_[1] ;
  wire \q_wr_addr_reg_n_0_[2] ;
  wire \q_wr_addr_reg_n_0_[3] ;
  wire \q_wr_addr_reg_n_0_[4] ;
  wire [1:0]NLW_q_mem_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_18_23_DOD_UNCONNECTED;
  wire NLW_q_mem_reg_0_31_24_25_SPO_UNCONNECTED;
  wire NLW_q_mem_reg_0_31_24_25__0_SPO_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_6_11_DOB_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_6_11_DOD_UNCONNECTED;

  FDRE \o_rd_data_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__0[0]),
        .Q(\o_rd_data_reg[25]_0 [0]),
        .R(1'b0));
  FDRE \o_rd_data_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__0[10]),
        .Q(\o_rd_data_reg[25]_0 [8]),
        .R(1'b0));
  FDRE \o_rd_data_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__0[11]),
        .Q(\o_rd_data_reg[25]_0 [9]),
        .R(1'b0));
  FDRE \o_rd_data_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__0[12]),
        .Q(\o_rd_data_reg[25]_0 [10]),
        .R(1'b0));
  FDRE \o_rd_data_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__0[13]),
        .Q(\o_rd_data_reg[25]_0 [11]),
        .R(1'b0));
  FDRE \o_rd_data_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__0[14]),
        .Q(\o_rd_data_reg[25]_0 [12]),
        .R(1'b0));
  FDRE \o_rd_data_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__0[15]),
        .Q(\o_rd_data_reg[25]_0 [13]),
        .R(1'b0));
  FDRE \o_rd_data_reg[16] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__0[16]),
        .Q(\o_rd_data_reg[25]_0 [14]),
        .R(1'b0));
  FDRE \o_rd_data_reg[17] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__0[17]),
        .Q(\o_rd_data_reg[25]_0 [15]),
        .R(1'b0));
  FDRE \o_rd_data_reg[18] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__0[18]),
        .Q(\o_rd_data_reg[25]_0 [16]),
        .R(1'b0));
  FDRE \o_rd_data_reg[19] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__0[19]),
        .Q(\o_rd_data_reg[25]_0 [17]),
        .R(1'b0));
  FDRE \o_rd_data_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__0[1]),
        .Q(\o_rd_data_reg[25]_0 [1]),
        .R(1'b0));
  FDRE \o_rd_data_reg[20] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__0[20]),
        .Q(\o_rd_data_reg[25]_0 [18]),
        .R(1'b0));
  FDRE \o_rd_data_reg[21] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__0[21]),
        .Q(\o_rd_data_reg[25]_0 [19]),
        .R(1'b0));
  FDRE \o_rd_data_reg[22] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__0[22]),
        .Q(\o_rd_data_reg[25]_0 [20]),
        .R(1'b0));
  FDRE \o_rd_data_reg[23] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__0[23]),
        .Q(\o_rd_data_reg[25]_0 [21]),
        .R(1'b0));
  FDRE \o_rd_data_reg[24] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__0[24]),
        .Q(\o_rd_data_reg[25]_0 [22]),
        .R(1'b0));
  FDRE \o_rd_data_reg[25] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__0[25]),
        .Q(\o_rd_data_reg[25]_0 [23]),
        .R(1'b0));
  FDRE \o_rd_data_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__0[2]),
        .Q(\o_rd_data_reg[25]_0 [2]),
        .R(1'b0));
  FDRE \o_rd_data_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__0[3]),
        .Q(\o_rd_data_reg[25]_0 [3]),
        .R(1'b0));
  FDRE \o_rd_data_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__0[4]),
        .Q(\o_rd_data_reg[25]_0 [4]),
        .R(1'b0));
  FDRE \o_rd_data_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__0[5]),
        .Q(\o_rd_data_reg[25]_0 [5]),
        .R(1'b0));
  FDRE \o_rd_data_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__0[6]),
        .Q(\o_rd_data_reg[25]_0 [6]),
        .R(1'b0));
  FDRE \o_rd_data_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__0[7]),
        .Q(\o_rd_data_reg[25]_0 [7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "832" *) 
  (* RTL_RAM_NAME = "inst/block[1].min_max[0].MEM_MIN_MAX/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_0_5
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD({\q_wr_addr_reg_n_0_[4] ,\q_wr_addr_reg_n_0_[3] ,\q_wr_addr_reg_n_0_[2] ,\q_wr_addr_reg_n_0_[1] ,\q_wr_addr_reg_n_0_[0] }),
        .DIA(\o_rd_data_reg[7]_0 [1:0]),
        .DIB(\o_rd_data_reg[7]_0 [3:2]),
        .DIC(\o_rd_data_reg[7]_0 [5:4]),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0__0[1:0]),
        .DOB(o_rd_data0__0[3:2]),
        .DOC(o_rd_data0__0[5:4]),
        .DOD(NLW_q_mem_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(\q_wr_addr_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "832" *) 
  (* RTL_RAM_NAME = "inst/block[1].min_max[0].MEM_MIN_MAX/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_12_17
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD({\q_wr_addr_reg_n_0_[4] ,\q_wr_addr_reg_n_0_[3] ,\q_wr_addr_reg_n_0_[2] ,\q_wr_addr_reg_n_0_[1] ,\q_wr_addr_reg_n_0_[0] }),
        .DIA(Q[3:2]),
        .DIB(Q[5:4]),
        .DIC(Q[7:6]),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0__0[13:12]),
        .DOB(o_rd_data0__0[15:14]),
        .DOC(o_rd_data0__0[17:16]),
        .DOD(NLW_q_mem_reg_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(\q_wr_addr_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "832" *) 
  (* RTL_RAM_NAME = "inst/block[1].min_max[0].MEM_MIN_MAX/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_18_23
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD({\q_wr_addr_reg_n_0_[4] ,\q_wr_addr_reg_n_0_[3] ,\q_wr_addr_reg_n_0_[2] ,\q_wr_addr_reg_n_0_[1] ,\q_wr_addr_reg_n_0_[0] }),
        .DIA(Q[9:8]),
        .DIB(Q[11:10]),
        .DIC(Q[13:12]),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0__0[19:18]),
        .DOB(o_rd_data0__0[21:20]),
        .DOC(o_rd_data0__0[23:22]),
        .DOD(NLW_q_mem_reg_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(\q_wr_addr_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "832" *) 
  (* RTL_RAM_NAME = "inst/block[1].min_max[0].MEM_MIN_MAX/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "25" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    q_mem_reg_0_31_24_25
       (.A0(\q_wr_addr_reg_n_0_[0] ),
        .A1(\q_wr_addr_reg_n_0_[1] ),
        .A2(\q_wr_addr_reg_n_0_[2] ),
        .A3(\q_wr_addr_reg_n_0_[3] ),
        .A4(\q_wr_addr_reg_n_0_[4] ),
        .D(Q[14]),
        .DPO(o_rd_data0__0[24]),
        .DPRA0(q_r_addr[0]),
        .DPRA1(q_r_addr[1]),
        .DPRA2(q_r_addr[2]),
        .DPRA3(q_r_addr[3]),
        .DPRA4(q_r_addr[4]),
        .SPO(NLW_q_mem_reg_0_31_24_25_SPO_UNCONNECTED),
        .WCLK(i_clk),
        .WE(\q_wr_addr_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "832" *) 
  (* RTL_RAM_NAME = "inst/block[1].min_max[0].MEM_MIN_MAX/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "25" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    q_mem_reg_0_31_24_25__0
       (.A0(\q_wr_addr_reg_n_0_[0] ),
        .A1(\q_wr_addr_reg_n_0_[1] ),
        .A2(\q_wr_addr_reg_n_0_[2] ),
        .A3(\q_wr_addr_reg_n_0_[3] ),
        .A4(\q_wr_addr_reg_n_0_[4] ),
        .D(Q[15]),
        .DPO(o_rd_data0__0[25]),
        .DPRA0(q_r_addr[0]),
        .DPRA1(q_r_addr[1]),
        .DPRA2(q_r_addr[2]),
        .DPRA3(q_r_addr[3]),
        .DPRA4(q_r_addr[4]),
        .SPO(NLW_q_mem_reg_0_31_24_25__0_SPO_UNCONNECTED),
        .WCLK(i_clk),
        .WE(\q_wr_addr_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "832" *) 
  (* RTL_RAM_NAME = "inst/block[1].min_max[0].MEM_MIN_MAX/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_6_11
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD({\q_wr_addr_reg_n_0_[4] ,\q_wr_addr_reg_n_0_[3] ,\q_wr_addr_reg_n_0_[2] ,\q_wr_addr_reg_n_0_[1] ,\q_wr_addr_reg_n_0_[0] }),
        .DIA(\o_rd_data_reg[7]_0 [7:6]),
        .DIB({1'b0,1'b0}),
        .DIC(Q[1:0]),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0__0[7:6]),
        .DOB(NLW_q_mem_reg_0_31_6_11_DOB_UNCONNECTED[1:0]),
        .DOC(o_rd_data0__0[11:10]),
        .DOD(NLW_q_mem_reg_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(\q_wr_addr_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_r_addr[0]_i_1__0 
       (.I0(q_r_addr[0]),
        .O(\q_r_addr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_r_addr[1]_i_1__0 
       (.I0(q_r_addr[0]),
        .I1(q_r_addr[1]),
        .O(\q_r_addr[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_r_addr[2]_i_1__0 
       (.I0(q_r_addr[0]),
        .I1(q_r_addr[1]),
        .I2(q_r_addr[2]),
        .O(\q_r_addr[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q_r_addr[3]_i_1__0 
       (.I0(q_r_addr[1]),
        .I1(q_r_addr[0]),
        .I2(q_r_addr[2]),
        .I3(q_r_addr[3]),
        .O(\q_r_addr[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h80A80000AAAA80A8)) 
    \q_r_addr[4]_i_1__1 
       (.I0(\q_r_addr_reg[4]_0 ),
        .I1(\q_r_addr[4]_i_3__1_n_0 ),
        .I2(\q_wr_addr_prev_reg_n_0_[3] ),
        .I3(q_r_addr[3]),
        .I4(\q_wr_addr_prev_reg_n_0_[4] ),
        .I5(q_r_addr[4]),
        .O(\q_r_addr[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q_r_addr[4]_i_2__0 
       (.I0(q_r_addr[2]),
        .I1(q_r_addr[0]),
        .I2(q_r_addr[1]),
        .I3(q_r_addr[3]),
        .I4(q_r_addr[4]),
        .O(\q_r_addr[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h44D444D4D4DD44D4)) 
    \q_r_addr[4]_i_3__1 
       (.I0(q_r_addr[2]),
        .I1(\q_wr_addr_prev_reg_n_0_[2] ),
        .I2(\q_wr_addr_prev_reg_n_0_[1] ),
        .I3(q_r_addr[1]),
        .I4(\q_wr_addr_prev_reg_n_0_[0] ),
        .I5(q_r_addr[0]),
        .O(\q_r_addr[4]_i_3__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[0] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__1_n_0 ),
        .D(\q_r_addr[0]_i_1__0_n_0 ),
        .Q(q_r_addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[1] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__1_n_0 ),
        .D(\q_r_addr[1]_i_1__0_n_0 ),
        .Q(q_r_addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[2] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__1_n_0 ),
        .D(\q_r_addr[2]_i_1__0_n_0 ),
        .Q(q_r_addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[3] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__1_n_0 ),
        .D(\q_r_addr[3]_i_1__0_n_0 ),
        .Q(q_r_addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[4] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__1_n_0 ),
        .D(\q_r_addr[4]_i_2__0_n_0 ),
        .Q(q_r_addr[4]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \q_wr_addr[0]_i_1__1 
       (.I0(\q_wr_addr_reg_n_0_[0] ),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_wr_addr[1]_i_1__1 
       (.I0(\q_wr_addr_reg_n_0_[0] ),
        .I1(\q_wr_addr_reg_n_0_[1] ),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_wr_addr[2]_i_1__1 
       (.I0(\q_wr_addr_reg_n_0_[0] ),
        .I1(\q_wr_addr_reg_n_0_[1] ),
        .I2(\q_wr_addr_reg_n_0_[2] ),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q_wr_addr[3]_i_1__1 
       (.I0(\q_wr_addr_reg_n_0_[1] ),
        .I1(\q_wr_addr_reg_n_0_[0] ),
        .I2(\q_wr_addr_reg_n_0_[2] ),
        .I3(\q_wr_addr_reg_n_0_[3] ),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q_wr_addr[4]_i_1__1 
       (.I0(\q_wr_addr_reg_n_0_[2] ),
        .I1(\q_wr_addr_reg_n_0_[0] ),
        .I2(\q_wr_addr_reg_n_0_[1] ),
        .I3(\q_wr_addr_reg_n_0_[3] ),
        .I4(\q_wr_addr_reg_n_0_[4] ),
        .O(p_0_in__1[4]));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[0] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(\q_wr_addr_reg_n_0_[0] ),
        .Q(\q_wr_addr_prev_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[1] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(\q_wr_addr_reg_n_0_[1] ),
        .Q(\q_wr_addr_prev_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[2] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(\q_wr_addr_reg_n_0_[2] ),
        .Q(\q_wr_addr_prev_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[3] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(\q_wr_addr_reg_n_0_[3] ),
        .Q(\q_wr_addr_prev_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[4] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(\q_wr_addr_reg_n_0_[4] ),
        .Q(\q_wr_addr_prev_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[0] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(p_0_in__1[0]),
        .Q(\q_wr_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[1] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(p_0_in__1[1]),
        .Q(\q_wr_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[2] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(p_0_in__1[2]),
        .Q(\q_wr_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[3] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(p_0_in__1[3]),
        .Q(\q_wr_addr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[4] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(p_0_in__1[4]),
        .Q(\q_wr_addr_reg_n_0_[4] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mem" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mem_6
   (\o_rd_data_reg[25]_0 ,
    i_clk,
    Q,
    \q_wr_addr_reg[0]_0 ,
    \q_r_addr_reg[4]_0 ,
    \o_rd_data_reg[7]_0 );
  output [23:0]\o_rd_data_reg[25]_0 ;
  input i_clk;
  input [15:0]Q;
  input \q_wr_addr_reg[0]_0 ;
  input [0:0]\q_r_addr_reg[4]_0 ;
  input [7:0]\o_rd_data_reg[7]_0 ;

  wire [15:0]Q;
  wire i_clk;
  wire [25:0]o_rd_data0__1;
  wire [23:0]\o_rd_data_reg[25]_0 ;
  wire [7:0]\o_rd_data_reg[7]_0 ;
  wire [4:0]p_0_in__3;
  wire [4:0]q_r_addr;
  wire \q_r_addr[0]_i_1__1_n_0 ;
  wire \q_r_addr[1]_i_1__1_n_0 ;
  wire \q_r_addr[2]_i_1__1_n_0 ;
  wire \q_r_addr[3]_i_1__1_n_0 ;
  wire \q_r_addr[4]_i_1__3_n_0 ;
  wire \q_r_addr[4]_i_2__1_n_0 ;
  wire \q_r_addr[4]_i_3__3_n_0 ;
  wire [0:0]\q_r_addr_reg[4]_0 ;
  wire \q_wr_addr_prev_reg_n_0_[0] ;
  wire \q_wr_addr_prev_reg_n_0_[1] ;
  wire \q_wr_addr_prev_reg_n_0_[2] ;
  wire \q_wr_addr_prev_reg_n_0_[3] ;
  wire \q_wr_addr_prev_reg_n_0_[4] ;
  wire \q_wr_addr_reg[0]_0 ;
  wire \q_wr_addr_reg_n_0_[0] ;
  wire \q_wr_addr_reg_n_0_[1] ;
  wire \q_wr_addr_reg_n_0_[2] ;
  wire \q_wr_addr_reg_n_0_[3] ;
  wire \q_wr_addr_reg_n_0_[4] ;
  wire [1:0]NLW_q_mem_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_18_23_DOD_UNCONNECTED;
  wire NLW_q_mem_reg_0_31_24_25_SPO_UNCONNECTED;
  wire NLW_q_mem_reg_0_31_24_25__0_SPO_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_6_11_DOB_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_6_11_DOD_UNCONNECTED;

  FDRE \o_rd_data_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__1[0]),
        .Q(\o_rd_data_reg[25]_0 [0]),
        .R(1'b0));
  FDRE \o_rd_data_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__1[10]),
        .Q(\o_rd_data_reg[25]_0 [8]),
        .R(1'b0));
  FDRE \o_rd_data_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__1[11]),
        .Q(\o_rd_data_reg[25]_0 [9]),
        .R(1'b0));
  FDRE \o_rd_data_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__1[12]),
        .Q(\o_rd_data_reg[25]_0 [10]),
        .R(1'b0));
  FDRE \o_rd_data_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__1[13]),
        .Q(\o_rd_data_reg[25]_0 [11]),
        .R(1'b0));
  FDRE \o_rd_data_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__1[14]),
        .Q(\o_rd_data_reg[25]_0 [12]),
        .R(1'b0));
  FDRE \o_rd_data_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__1[15]),
        .Q(\o_rd_data_reg[25]_0 [13]),
        .R(1'b0));
  FDRE \o_rd_data_reg[16] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__1[16]),
        .Q(\o_rd_data_reg[25]_0 [14]),
        .R(1'b0));
  FDRE \o_rd_data_reg[17] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__1[17]),
        .Q(\o_rd_data_reg[25]_0 [15]),
        .R(1'b0));
  FDRE \o_rd_data_reg[18] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__1[18]),
        .Q(\o_rd_data_reg[25]_0 [16]),
        .R(1'b0));
  FDRE \o_rd_data_reg[19] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__1[19]),
        .Q(\o_rd_data_reg[25]_0 [17]),
        .R(1'b0));
  FDRE \o_rd_data_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__1[1]),
        .Q(\o_rd_data_reg[25]_0 [1]),
        .R(1'b0));
  FDRE \o_rd_data_reg[20] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__1[20]),
        .Q(\o_rd_data_reg[25]_0 [18]),
        .R(1'b0));
  FDRE \o_rd_data_reg[21] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__1[21]),
        .Q(\o_rd_data_reg[25]_0 [19]),
        .R(1'b0));
  FDRE \o_rd_data_reg[22] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__1[22]),
        .Q(\o_rd_data_reg[25]_0 [20]),
        .R(1'b0));
  FDRE \o_rd_data_reg[23] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__1[23]),
        .Q(\o_rd_data_reg[25]_0 [21]),
        .R(1'b0));
  FDRE \o_rd_data_reg[24] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__1[24]),
        .Q(\o_rd_data_reg[25]_0 [22]),
        .R(1'b0));
  FDRE \o_rd_data_reg[25] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__1[25]),
        .Q(\o_rd_data_reg[25]_0 [23]),
        .R(1'b0));
  FDRE \o_rd_data_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__1[2]),
        .Q(\o_rd_data_reg[25]_0 [2]),
        .R(1'b0));
  FDRE \o_rd_data_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__1[3]),
        .Q(\o_rd_data_reg[25]_0 [3]),
        .R(1'b0));
  FDRE \o_rd_data_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__1[4]),
        .Q(\o_rd_data_reg[25]_0 [4]),
        .R(1'b0));
  FDRE \o_rd_data_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__1[5]),
        .Q(\o_rd_data_reg[25]_0 [5]),
        .R(1'b0));
  FDRE \o_rd_data_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__1[6]),
        .Q(\o_rd_data_reg[25]_0 [6]),
        .R(1'b0));
  FDRE \o_rd_data_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__1[7]),
        .Q(\o_rd_data_reg[25]_0 [7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "832" *) 
  (* RTL_RAM_NAME = "inst/block[2].min_max[0].MEM_MIN_MAX/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_0_5
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD({\q_wr_addr_reg_n_0_[4] ,\q_wr_addr_reg_n_0_[3] ,\q_wr_addr_reg_n_0_[2] ,\q_wr_addr_reg_n_0_[1] ,\q_wr_addr_reg_n_0_[0] }),
        .DIA(\o_rd_data_reg[7]_0 [1:0]),
        .DIB(\o_rd_data_reg[7]_0 [3:2]),
        .DIC(\o_rd_data_reg[7]_0 [5:4]),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0__1[1:0]),
        .DOB(o_rd_data0__1[3:2]),
        .DOC(o_rd_data0__1[5:4]),
        .DOD(NLW_q_mem_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(\q_wr_addr_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "832" *) 
  (* RTL_RAM_NAME = "inst/block[2].min_max[0].MEM_MIN_MAX/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_12_17
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD({\q_wr_addr_reg_n_0_[4] ,\q_wr_addr_reg_n_0_[3] ,\q_wr_addr_reg_n_0_[2] ,\q_wr_addr_reg_n_0_[1] ,\q_wr_addr_reg_n_0_[0] }),
        .DIA(Q[3:2]),
        .DIB(Q[5:4]),
        .DIC(Q[7:6]),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0__1[13:12]),
        .DOB(o_rd_data0__1[15:14]),
        .DOC(o_rd_data0__1[17:16]),
        .DOD(NLW_q_mem_reg_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(\q_wr_addr_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "832" *) 
  (* RTL_RAM_NAME = "inst/block[2].min_max[0].MEM_MIN_MAX/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_18_23
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD({\q_wr_addr_reg_n_0_[4] ,\q_wr_addr_reg_n_0_[3] ,\q_wr_addr_reg_n_0_[2] ,\q_wr_addr_reg_n_0_[1] ,\q_wr_addr_reg_n_0_[0] }),
        .DIA(Q[9:8]),
        .DIB(Q[11:10]),
        .DIC(Q[13:12]),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0__1[19:18]),
        .DOB(o_rd_data0__1[21:20]),
        .DOC(o_rd_data0__1[23:22]),
        .DOD(NLW_q_mem_reg_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(\q_wr_addr_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "832" *) 
  (* RTL_RAM_NAME = "inst/block[2].min_max[0].MEM_MIN_MAX/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "25" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    q_mem_reg_0_31_24_25
       (.A0(\q_wr_addr_reg_n_0_[0] ),
        .A1(\q_wr_addr_reg_n_0_[1] ),
        .A2(\q_wr_addr_reg_n_0_[2] ),
        .A3(\q_wr_addr_reg_n_0_[3] ),
        .A4(\q_wr_addr_reg_n_0_[4] ),
        .D(Q[14]),
        .DPO(o_rd_data0__1[24]),
        .DPRA0(q_r_addr[0]),
        .DPRA1(q_r_addr[1]),
        .DPRA2(q_r_addr[2]),
        .DPRA3(q_r_addr[3]),
        .DPRA4(q_r_addr[4]),
        .SPO(NLW_q_mem_reg_0_31_24_25_SPO_UNCONNECTED),
        .WCLK(i_clk),
        .WE(\q_wr_addr_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "832" *) 
  (* RTL_RAM_NAME = "inst/block[2].min_max[0].MEM_MIN_MAX/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "25" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    q_mem_reg_0_31_24_25__0
       (.A0(\q_wr_addr_reg_n_0_[0] ),
        .A1(\q_wr_addr_reg_n_0_[1] ),
        .A2(\q_wr_addr_reg_n_0_[2] ),
        .A3(\q_wr_addr_reg_n_0_[3] ),
        .A4(\q_wr_addr_reg_n_0_[4] ),
        .D(Q[15]),
        .DPO(o_rd_data0__1[25]),
        .DPRA0(q_r_addr[0]),
        .DPRA1(q_r_addr[1]),
        .DPRA2(q_r_addr[2]),
        .DPRA3(q_r_addr[3]),
        .DPRA4(q_r_addr[4]),
        .SPO(NLW_q_mem_reg_0_31_24_25__0_SPO_UNCONNECTED),
        .WCLK(i_clk),
        .WE(\q_wr_addr_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "832" *) 
  (* RTL_RAM_NAME = "inst/block[2].min_max[0].MEM_MIN_MAX/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_6_11
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD({\q_wr_addr_reg_n_0_[4] ,\q_wr_addr_reg_n_0_[3] ,\q_wr_addr_reg_n_0_[2] ,\q_wr_addr_reg_n_0_[1] ,\q_wr_addr_reg_n_0_[0] }),
        .DIA(\o_rd_data_reg[7]_0 [7:6]),
        .DIB({1'b0,1'b0}),
        .DIC(Q[1:0]),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0__1[7:6]),
        .DOB(NLW_q_mem_reg_0_31_6_11_DOB_UNCONNECTED[1:0]),
        .DOC(o_rd_data0__1[11:10]),
        .DOD(NLW_q_mem_reg_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(\q_wr_addr_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_r_addr[0]_i_1__1 
       (.I0(q_r_addr[0]),
        .O(\q_r_addr[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_r_addr[1]_i_1__1 
       (.I0(q_r_addr[0]),
        .I1(q_r_addr[1]),
        .O(\q_r_addr[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_r_addr[2]_i_1__1 
       (.I0(q_r_addr[0]),
        .I1(q_r_addr[1]),
        .I2(q_r_addr[2]),
        .O(\q_r_addr[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q_r_addr[3]_i_1__1 
       (.I0(q_r_addr[1]),
        .I1(q_r_addr[0]),
        .I2(q_r_addr[2]),
        .I3(q_r_addr[3]),
        .O(\q_r_addr[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h80A80000AAAA80A8)) 
    \q_r_addr[4]_i_1__3 
       (.I0(\q_r_addr_reg[4]_0 ),
        .I1(\q_r_addr[4]_i_3__3_n_0 ),
        .I2(\q_wr_addr_prev_reg_n_0_[3] ),
        .I3(q_r_addr[3]),
        .I4(\q_wr_addr_prev_reg_n_0_[4] ),
        .I5(q_r_addr[4]),
        .O(\q_r_addr[4]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q_r_addr[4]_i_2__1 
       (.I0(q_r_addr[2]),
        .I1(q_r_addr[0]),
        .I2(q_r_addr[1]),
        .I3(q_r_addr[3]),
        .I4(q_r_addr[4]),
        .O(\q_r_addr[4]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h44D444D4D4DD44D4)) 
    \q_r_addr[4]_i_3__3 
       (.I0(q_r_addr[2]),
        .I1(\q_wr_addr_prev_reg_n_0_[2] ),
        .I2(\q_wr_addr_prev_reg_n_0_[1] ),
        .I3(q_r_addr[1]),
        .I4(\q_wr_addr_prev_reg_n_0_[0] ),
        .I5(q_r_addr[0]),
        .O(\q_r_addr[4]_i_3__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[0] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__3_n_0 ),
        .D(\q_r_addr[0]_i_1__1_n_0 ),
        .Q(q_r_addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[1] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__3_n_0 ),
        .D(\q_r_addr[1]_i_1__1_n_0 ),
        .Q(q_r_addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[2] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__3_n_0 ),
        .D(\q_r_addr[2]_i_1__1_n_0 ),
        .Q(q_r_addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[3] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__3_n_0 ),
        .D(\q_r_addr[3]_i_1__1_n_0 ),
        .Q(q_r_addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[4] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__3_n_0 ),
        .D(\q_r_addr[4]_i_2__1_n_0 ),
        .Q(q_r_addr[4]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \q_wr_addr[0]_i_1__3 
       (.I0(\q_wr_addr_reg_n_0_[0] ),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_wr_addr[1]_i_1__3 
       (.I0(\q_wr_addr_reg_n_0_[0] ),
        .I1(\q_wr_addr_reg_n_0_[1] ),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_wr_addr[2]_i_1__3 
       (.I0(\q_wr_addr_reg_n_0_[0] ),
        .I1(\q_wr_addr_reg_n_0_[1] ),
        .I2(\q_wr_addr_reg_n_0_[2] ),
        .O(p_0_in__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q_wr_addr[3]_i_1__3 
       (.I0(\q_wr_addr_reg_n_0_[1] ),
        .I1(\q_wr_addr_reg_n_0_[0] ),
        .I2(\q_wr_addr_reg_n_0_[2] ),
        .I3(\q_wr_addr_reg_n_0_[3] ),
        .O(p_0_in__3[3]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q_wr_addr[4]_i_1__3 
       (.I0(\q_wr_addr_reg_n_0_[2] ),
        .I1(\q_wr_addr_reg_n_0_[0] ),
        .I2(\q_wr_addr_reg_n_0_[1] ),
        .I3(\q_wr_addr_reg_n_0_[3] ),
        .I4(\q_wr_addr_reg_n_0_[4] ),
        .O(p_0_in__3[4]));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[0] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(\q_wr_addr_reg_n_0_[0] ),
        .Q(\q_wr_addr_prev_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[1] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(\q_wr_addr_reg_n_0_[1] ),
        .Q(\q_wr_addr_prev_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[2] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(\q_wr_addr_reg_n_0_[2] ),
        .Q(\q_wr_addr_prev_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[3] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(\q_wr_addr_reg_n_0_[3] ),
        .Q(\q_wr_addr_prev_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[4] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(\q_wr_addr_reg_n_0_[4] ),
        .Q(\q_wr_addr_prev_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[0] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(p_0_in__3[0]),
        .Q(\q_wr_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[1] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(p_0_in__3[1]),
        .Q(\q_wr_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[2] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(p_0_in__3[2]),
        .Q(\q_wr_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[3] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(p_0_in__3[3]),
        .Q(\q_wr_addr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[4] 
       (.C(i_clk),
        .CE(\q_wr_addr_reg[0]_0 ),
        .D(p_0_in__3[4]),
        .Q(\q_wr_addr_reg_n_0_[4] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mem" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mem__parameterized0
   (Q,
    i_clk,
    \q_r_addr_reg[4]_0 ,
    E,
    o_avg_data);
  output [15:0]Q;
  input i_clk;
  input [0:0]\q_r_addr_reg[4]_0 ;
  input [0:0]E;
  input [15:0]o_avg_data;

  wire [0:0]E;
  wire [15:0]Q;
  wire i_clk;
  wire [15:0]o_avg_data;
  wire [15:0]o_rd_data0__3;
  wire [4:0]p_0_in__0;
  wire [4:0]q_r_addr;
  wire \q_r_addr[0]_i_1__3_n_0 ;
  wire \q_r_addr[1]_i_1__3_n_0 ;
  wire \q_r_addr[2]_i_1__3_n_0 ;
  wire \q_r_addr[3]_i_1__3_n_0 ;
  wire \q_r_addr[4]_i_1__0_n_0 ;
  wire \q_r_addr[4]_i_2__3_n_0 ;
  wire \q_r_addr[4]_i_3__0_n_0 ;
  wire [0:0]\q_r_addr_reg[4]_0 ;
  wire \q_wr_addr_prev_reg_n_0_[0] ;
  wire \q_wr_addr_prev_reg_n_0_[1] ;
  wire \q_wr_addr_prev_reg_n_0_[2] ;
  wire \q_wr_addr_prev_reg_n_0_[3] ;
  wire \q_wr_addr_prev_reg_n_0_[4] ;
  wire \q_wr_addr_reg_n_0_[0] ;
  wire \q_wr_addr_reg_n_0_[1] ;
  wire \q_wr_addr_reg_n_0_[2] ;
  wire \q_wr_addr_reg_n_0_[3] ;
  wire \q_wr_addr_reg_n_0_[4] ;
  wire [1:0]NLW_q_mem_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_12_15_DOC_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_12_15_DOD_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_6_11_DOD_UNCONNECTED;

  FDRE \o_rd_data_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__3[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \o_rd_data_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__3[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \o_rd_data_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__3[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \o_rd_data_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__3[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \o_rd_data_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__3[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \o_rd_data_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__3[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \o_rd_data_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__3[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \o_rd_data_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__3[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \o_rd_data_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__3[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \o_rd_data_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__3[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \o_rd_data_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__3[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \o_rd_data_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__3[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \o_rd_data_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__3[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \o_rd_data_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__3[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \o_rd_data_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__3[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \o_rd_data_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__3[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/block[0].MEM_AVG/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_0_5
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD({\q_wr_addr_reg_n_0_[4] ,\q_wr_addr_reg_n_0_[3] ,\q_wr_addr_reg_n_0_[2] ,\q_wr_addr_reg_n_0_[1] ,\q_wr_addr_reg_n_0_[0] }),
        .DIA(o_avg_data[1:0]),
        .DIB(o_avg_data[3:2]),
        .DIC(o_avg_data[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0__3[1:0]),
        .DOB(o_rd_data0__3[3:2]),
        .DOC(o_rd_data0__3[5:4]),
        .DOD(NLW_q_mem_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/block[0].MEM_AVG/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "15" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_12_15
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD({\q_wr_addr_reg_n_0_[4] ,\q_wr_addr_reg_n_0_[3] ,\q_wr_addr_reg_n_0_[2] ,\q_wr_addr_reg_n_0_[1] ,\q_wr_addr_reg_n_0_[0] }),
        .DIA(o_avg_data[13:12]),
        .DIB(o_avg_data[15:14]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0__3[13:12]),
        .DOB(o_rd_data0__3[15:14]),
        .DOC(NLW_q_mem_reg_0_31_12_15_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_q_mem_reg_0_31_12_15_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/block[0].MEM_AVG/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_6_11
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD({\q_wr_addr_reg_n_0_[4] ,\q_wr_addr_reg_n_0_[3] ,\q_wr_addr_reg_n_0_[2] ,\q_wr_addr_reg_n_0_[1] ,\q_wr_addr_reg_n_0_[0] }),
        .DIA(o_avg_data[7:6]),
        .DIB(o_avg_data[9:8]),
        .DIC(o_avg_data[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0__3[7:6]),
        .DOB(o_rd_data0__3[9:8]),
        .DOC(o_rd_data0__3[11:10]),
        .DOD(NLW_q_mem_reg_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(E));
  LUT1 #(
    .INIT(2'h1)) 
    \q_r_addr[0]_i_1__3 
       (.I0(q_r_addr[0]),
        .O(\q_r_addr[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_r_addr[1]_i_1__3 
       (.I0(q_r_addr[0]),
        .I1(q_r_addr[1]),
        .O(\q_r_addr[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_r_addr[2]_i_1__3 
       (.I0(q_r_addr[0]),
        .I1(q_r_addr[1]),
        .I2(q_r_addr[2]),
        .O(\q_r_addr[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q_r_addr[3]_i_1__3 
       (.I0(q_r_addr[1]),
        .I1(q_r_addr[0]),
        .I2(q_r_addr[2]),
        .I3(q_r_addr[3]),
        .O(\q_r_addr[3]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h80A80000AAAA80A8)) 
    \q_r_addr[4]_i_1__0 
       (.I0(\q_r_addr_reg[4]_0 ),
        .I1(\q_r_addr[4]_i_3__0_n_0 ),
        .I2(\q_wr_addr_prev_reg_n_0_[3] ),
        .I3(q_r_addr[3]),
        .I4(\q_wr_addr_prev_reg_n_0_[4] ),
        .I5(q_r_addr[4]),
        .O(\q_r_addr[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q_r_addr[4]_i_2__3 
       (.I0(q_r_addr[2]),
        .I1(q_r_addr[0]),
        .I2(q_r_addr[1]),
        .I3(q_r_addr[3]),
        .I4(q_r_addr[4]),
        .O(\q_r_addr[4]_i_2__3_n_0 ));
  LUT6 #(
    .INIT(64'h44D444D4D4DD44D4)) 
    \q_r_addr[4]_i_3__0 
       (.I0(q_r_addr[2]),
        .I1(\q_wr_addr_prev_reg_n_0_[2] ),
        .I2(\q_wr_addr_prev_reg_n_0_[1] ),
        .I3(q_r_addr[1]),
        .I4(\q_wr_addr_prev_reg_n_0_[0] ),
        .I5(q_r_addr[0]),
        .O(\q_r_addr[4]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[0] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__0_n_0 ),
        .D(\q_r_addr[0]_i_1__3_n_0 ),
        .Q(q_r_addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[1] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__0_n_0 ),
        .D(\q_r_addr[1]_i_1__3_n_0 ),
        .Q(q_r_addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[2] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__0_n_0 ),
        .D(\q_r_addr[2]_i_1__3_n_0 ),
        .Q(q_r_addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[3] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__0_n_0 ),
        .D(\q_r_addr[3]_i_1__3_n_0 ),
        .Q(q_r_addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[4] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__0_n_0 ),
        .D(\q_r_addr[4]_i_2__3_n_0 ),
        .Q(q_r_addr[4]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \q_wr_addr[0]_i_1__0 
       (.I0(\q_wr_addr_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_wr_addr[1]_i_1__0 
       (.I0(\q_wr_addr_reg_n_0_[0] ),
        .I1(\q_wr_addr_reg_n_0_[1] ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_wr_addr[2]_i_1__0 
       (.I0(\q_wr_addr_reg_n_0_[0] ),
        .I1(\q_wr_addr_reg_n_0_[1] ),
        .I2(\q_wr_addr_reg_n_0_[2] ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q_wr_addr[3]_i_1__0 
       (.I0(\q_wr_addr_reg_n_0_[1] ),
        .I1(\q_wr_addr_reg_n_0_[0] ),
        .I2(\q_wr_addr_reg_n_0_[2] ),
        .I3(\q_wr_addr_reg_n_0_[3] ),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q_wr_addr[4]_i_1__0 
       (.I0(\q_wr_addr_reg_n_0_[2] ),
        .I1(\q_wr_addr_reg_n_0_[0] ),
        .I2(\q_wr_addr_reg_n_0_[1] ),
        .I3(\q_wr_addr_reg_n_0_[3] ),
        .I4(\q_wr_addr_reg_n_0_[4] ),
        .O(p_0_in__0[4]));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[0] 
       (.C(i_clk),
        .CE(E),
        .D(\q_wr_addr_reg_n_0_[0] ),
        .Q(\q_wr_addr_prev_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[1] 
       (.C(i_clk),
        .CE(E),
        .D(\q_wr_addr_reg_n_0_[1] ),
        .Q(\q_wr_addr_prev_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[2] 
       (.C(i_clk),
        .CE(E),
        .D(\q_wr_addr_reg_n_0_[2] ),
        .Q(\q_wr_addr_prev_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[3] 
       (.C(i_clk),
        .CE(E),
        .D(\q_wr_addr_reg_n_0_[3] ),
        .Q(\q_wr_addr_prev_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[4] 
       (.C(i_clk),
        .CE(E),
        .D(\q_wr_addr_reg_n_0_[4] ),
        .Q(\q_wr_addr_prev_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[0] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in__0[0]),
        .Q(\q_wr_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[1] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in__0[1]),
        .Q(\q_wr_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[2] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in__0[2]),
        .Q(\q_wr_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[3] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in__0[3]),
        .Q(\q_wr_addr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[4] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in__0[4]),
        .Q(\q_wr_addr_reg_n_0_[4] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mem" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mem__parameterized0_1
   (Q,
    i_clk,
    \q_r_addr_reg[4]_0 ,
    E,
    o_avg_data);
  output [15:0]Q;
  input i_clk;
  input [0:0]\q_r_addr_reg[4]_0 ;
  input [0:0]E;
  input [15:0]o_avg_data;

  wire [0:0]E;
  wire [15:0]Q;
  wire i_clk;
  wire [15:0]o_avg_data;
  wire [15:0]o_rd_data0__4;
  wire [4:0]p_0_in__2;
  wire [4:0]q_r_addr;
  wire \q_r_addr[0]_i_1__4_n_0 ;
  wire \q_r_addr[1]_i_1__4_n_0 ;
  wire \q_r_addr[2]_i_1__4_n_0 ;
  wire \q_r_addr[3]_i_1__4_n_0 ;
  wire \q_r_addr[4]_i_1__2_n_0 ;
  wire \q_r_addr[4]_i_2__4_n_0 ;
  wire \q_r_addr[4]_i_3__2_n_0 ;
  wire [0:0]\q_r_addr_reg[4]_0 ;
  wire \q_wr_addr_prev_reg_n_0_[0] ;
  wire \q_wr_addr_prev_reg_n_0_[1] ;
  wire \q_wr_addr_prev_reg_n_0_[2] ;
  wire \q_wr_addr_prev_reg_n_0_[3] ;
  wire \q_wr_addr_prev_reg_n_0_[4] ;
  wire \q_wr_addr_reg_n_0_[0] ;
  wire \q_wr_addr_reg_n_0_[1] ;
  wire \q_wr_addr_reg_n_0_[2] ;
  wire \q_wr_addr_reg_n_0_[3] ;
  wire \q_wr_addr_reg_n_0_[4] ;
  wire [1:0]NLW_q_mem_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_12_15_DOC_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_12_15_DOD_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_6_11_DOD_UNCONNECTED;

  FDRE \o_rd_data_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__4[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \o_rd_data_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__4[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \o_rd_data_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__4[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \o_rd_data_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__4[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \o_rd_data_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__4[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \o_rd_data_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__4[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \o_rd_data_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__4[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \o_rd_data_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__4[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \o_rd_data_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__4[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \o_rd_data_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__4[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \o_rd_data_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__4[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \o_rd_data_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__4[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \o_rd_data_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__4[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \o_rd_data_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__4[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \o_rd_data_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__4[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \o_rd_data_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__4[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/block[1].MEM_AVG/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_0_5
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD({\q_wr_addr_reg_n_0_[4] ,\q_wr_addr_reg_n_0_[3] ,\q_wr_addr_reg_n_0_[2] ,\q_wr_addr_reg_n_0_[1] ,\q_wr_addr_reg_n_0_[0] }),
        .DIA(o_avg_data[1:0]),
        .DIB(o_avg_data[3:2]),
        .DIC(o_avg_data[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0__4[1:0]),
        .DOB(o_rd_data0__4[3:2]),
        .DOC(o_rd_data0__4[5:4]),
        .DOD(NLW_q_mem_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/block[1].MEM_AVG/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "15" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_12_15
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD({\q_wr_addr_reg_n_0_[4] ,\q_wr_addr_reg_n_0_[3] ,\q_wr_addr_reg_n_0_[2] ,\q_wr_addr_reg_n_0_[1] ,\q_wr_addr_reg_n_0_[0] }),
        .DIA(o_avg_data[13:12]),
        .DIB(o_avg_data[15:14]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0__4[13:12]),
        .DOB(o_rd_data0__4[15:14]),
        .DOC(NLW_q_mem_reg_0_31_12_15_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_q_mem_reg_0_31_12_15_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/block[1].MEM_AVG/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_6_11
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD({\q_wr_addr_reg_n_0_[4] ,\q_wr_addr_reg_n_0_[3] ,\q_wr_addr_reg_n_0_[2] ,\q_wr_addr_reg_n_0_[1] ,\q_wr_addr_reg_n_0_[0] }),
        .DIA(o_avg_data[7:6]),
        .DIB(o_avg_data[9:8]),
        .DIC(o_avg_data[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0__4[7:6]),
        .DOB(o_rd_data0__4[9:8]),
        .DOC(o_rd_data0__4[11:10]),
        .DOD(NLW_q_mem_reg_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(E));
  LUT1 #(
    .INIT(2'h1)) 
    \q_r_addr[0]_i_1__4 
       (.I0(q_r_addr[0]),
        .O(\q_r_addr[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_r_addr[1]_i_1__4 
       (.I0(q_r_addr[0]),
        .I1(q_r_addr[1]),
        .O(\q_r_addr[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_r_addr[2]_i_1__4 
       (.I0(q_r_addr[0]),
        .I1(q_r_addr[1]),
        .I2(q_r_addr[2]),
        .O(\q_r_addr[2]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q_r_addr[3]_i_1__4 
       (.I0(q_r_addr[1]),
        .I1(q_r_addr[0]),
        .I2(q_r_addr[2]),
        .I3(q_r_addr[3]),
        .O(\q_r_addr[3]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h80A80000AAAA80A8)) 
    \q_r_addr[4]_i_1__2 
       (.I0(\q_r_addr_reg[4]_0 ),
        .I1(\q_r_addr[4]_i_3__2_n_0 ),
        .I2(\q_wr_addr_prev_reg_n_0_[3] ),
        .I3(q_r_addr[3]),
        .I4(\q_wr_addr_prev_reg_n_0_[4] ),
        .I5(q_r_addr[4]),
        .O(\q_r_addr[4]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q_r_addr[4]_i_2__4 
       (.I0(q_r_addr[2]),
        .I1(q_r_addr[0]),
        .I2(q_r_addr[1]),
        .I3(q_r_addr[3]),
        .I4(q_r_addr[4]),
        .O(\q_r_addr[4]_i_2__4_n_0 ));
  LUT6 #(
    .INIT(64'h44D444D4D4DD44D4)) 
    \q_r_addr[4]_i_3__2 
       (.I0(q_r_addr[2]),
        .I1(\q_wr_addr_prev_reg_n_0_[2] ),
        .I2(\q_wr_addr_prev_reg_n_0_[1] ),
        .I3(q_r_addr[1]),
        .I4(\q_wr_addr_prev_reg_n_0_[0] ),
        .I5(q_r_addr[0]),
        .O(\q_r_addr[4]_i_3__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[0] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__2_n_0 ),
        .D(\q_r_addr[0]_i_1__4_n_0 ),
        .Q(q_r_addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[1] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__2_n_0 ),
        .D(\q_r_addr[1]_i_1__4_n_0 ),
        .Q(q_r_addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[2] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__2_n_0 ),
        .D(\q_r_addr[2]_i_1__4_n_0 ),
        .Q(q_r_addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[3] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__2_n_0 ),
        .D(\q_r_addr[3]_i_1__4_n_0 ),
        .Q(q_r_addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[4] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__2_n_0 ),
        .D(\q_r_addr[4]_i_2__4_n_0 ),
        .Q(q_r_addr[4]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \q_wr_addr[0]_i_1__2 
       (.I0(\q_wr_addr_reg_n_0_[0] ),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_wr_addr[1]_i_1__2 
       (.I0(\q_wr_addr_reg_n_0_[0] ),
        .I1(\q_wr_addr_reg_n_0_[1] ),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_wr_addr[2]_i_1__2 
       (.I0(\q_wr_addr_reg_n_0_[0] ),
        .I1(\q_wr_addr_reg_n_0_[1] ),
        .I2(\q_wr_addr_reg_n_0_[2] ),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q_wr_addr[3]_i_1__2 
       (.I0(\q_wr_addr_reg_n_0_[1] ),
        .I1(\q_wr_addr_reg_n_0_[0] ),
        .I2(\q_wr_addr_reg_n_0_[2] ),
        .I3(\q_wr_addr_reg_n_0_[3] ),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q_wr_addr[4]_i_1__2 
       (.I0(\q_wr_addr_reg_n_0_[2] ),
        .I1(\q_wr_addr_reg_n_0_[0] ),
        .I2(\q_wr_addr_reg_n_0_[1] ),
        .I3(\q_wr_addr_reg_n_0_[3] ),
        .I4(\q_wr_addr_reg_n_0_[4] ),
        .O(p_0_in__2[4]));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[0] 
       (.C(i_clk),
        .CE(E),
        .D(\q_wr_addr_reg_n_0_[0] ),
        .Q(\q_wr_addr_prev_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[1] 
       (.C(i_clk),
        .CE(E),
        .D(\q_wr_addr_reg_n_0_[1] ),
        .Q(\q_wr_addr_prev_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[2] 
       (.C(i_clk),
        .CE(E),
        .D(\q_wr_addr_reg_n_0_[2] ),
        .Q(\q_wr_addr_prev_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[3] 
       (.C(i_clk),
        .CE(E),
        .D(\q_wr_addr_reg_n_0_[3] ),
        .Q(\q_wr_addr_prev_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[4] 
       (.C(i_clk),
        .CE(E),
        .D(\q_wr_addr_reg_n_0_[4] ),
        .Q(\q_wr_addr_prev_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[0] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in__2[0]),
        .Q(\q_wr_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[1] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in__2[1]),
        .Q(\q_wr_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[2] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in__2[2]),
        .Q(\q_wr_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[3] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in__2[3]),
        .Q(\q_wr_addr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[4] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in__2[4]),
        .Q(\q_wr_addr_reg_n_0_[4] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mem" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mem__parameterized0_5
   (Q,
    i_clk,
    \q_r_addr_reg[4]_0 ,
    E,
    o_avg_data);
  output [15:0]Q;
  input i_clk;
  input [0:0]\q_r_addr_reg[4]_0 ;
  input [0:0]E;
  input [15:0]o_avg_data;

  wire [0:0]E;
  wire [15:0]Q;
  wire i_clk;
  wire [15:0]o_avg_data;
  wire [15:0]o_rd_data0__5;
  wire [4:0]p_0_in__4;
  wire [4:0]q_r_addr;
  wire \q_r_addr[0]_i_1__5_n_0 ;
  wire \q_r_addr[1]_i_1__5_n_0 ;
  wire \q_r_addr[2]_i_1__5_n_0 ;
  wire \q_r_addr[3]_i_1__5_n_0 ;
  wire \q_r_addr[4]_i_1__4_n_0 ;
  wire \q_r_addr[4]_i_2__5_n_0 ;
  wire \q_r_addr[4]_i_3__4_n_0 ;
  wire [0:0]\q_r_addr_reg[4]_0 ;
  wire \q_wr_addr_prev_reg_n_0_[0] ;
  wire \q_wr_addr_prev_reg_n_0_[1] ;
  wire \q_wr_addr_prev_reg_n_0_[2] ;
  wire \q_wr_addr_prev_reg_n_0_[3] ;
  wire \q_wr_addr_prev_reg_n_0_[4] ;
  wire \q_wr_addr_reg_n_0_[0] ;
  wire \q_wr_addr_reg_n_0_[1] ;
  wire \q_wr_addr_reg_n_0_[2] ;
  wire \q_wr_addr_reg_n_0_[3] ;
  wire \q_wr_addr_reg_n_0_[4] ;
  wire [1:0]NLW_q_mem_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_12_15_DOC_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_12_15_DOD_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_6_11_DOD_UNCONNECTED;

  FDRE \o_rd_data_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__5[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \o_rd_data_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__5[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \o_rd_data_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__5[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \o_rd_data_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__5[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \o_rd_data_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__5[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \o_rd_data_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__5[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \o_rd_data_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__5[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \o_rd_data_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__5[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \o_rd_data_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__5[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \o_rd_data_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__5[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \o_rd_data_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__5[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \o_rd_data_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__5[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \o_rd_data_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__5[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \o_rd_data_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__5[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \o_rd_data_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__5[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \o_rd_data_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__5[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/block[2].MEM_AVG/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_0_5
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD({\q_wr_addr_reg_n_0_[4] ,\q_wr_addr_reg_n_0_[3] ,\q_wr_addr_reg_n_0_[2] ,\q_wr_addr_reg_n_0_[1] ,\q_wr_addr_reg_n_0_[0] }),
        .DIA(o_avg_data[1:0]),
        .DIB(o_avg_data[3:2]),
        .DIC(o_avg_data[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0__5[1:0]),
        .DOB(o_rd_data0__5[3:2]),
        .DOC(o_rd_data0__5[5:4]),
        .DOD(NLW_q_mem_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/block[2].MEM_AVG/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "15" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_12_15
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD({\q_wr_addr_reg_n_0_[4] ,\q_wr_addr_reg_n_0_[3] ,\q_wr_addr_reg_n_0_[2] ,\q_wr_addr_reg_n_0_[1] ,\q_wr_addr_reg_n_0_[0] }),
        .DIA(o_avg_data[13:12]),
        .DIB(o_avg_data[15:14]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0__5[13:12]),
        .DOB(o_rd_data0__5[15:14]),
        .DOC(NLW_q_mem_reg_0_31_12_15_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_q_mem_reg_0_31_12_15_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/block[2].MEM_AVG/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_6_11
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD({\q_wr_addr_reg_n_0_[4] ,\q_wr_addr_reg_n_0_[3] ,\q_wr_addr_reg_n_0_[2] ,\q_wr_addr_reg_n_0_[1] ,\q_wr_addr_reg_n_0_[0] }),
        .DIA(o_avg_data[7:6]),
        .DIB(o_avg_data[9:8]),
        .DIC(o_avg_data[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0__5[7:6]),
        .DOB(o_rd_data0__5[9:8]),
        .DOC(o_rd_data0__5[11:10]),
        .DOD(NLW_q_mem_reg_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(E));
  LUT1 #(
    .INIT(2'h1)) 
    \q_r_addr[0]_i_1__5 
       (.I0(q_r_addr[0]),
        .O(\q_r_addr[0]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_r_addr[1]_i_1__5 
       (.I0(q_r_addr[0]),
        .I1(q_r_addr[1]),
        .O(\q_r_addr[1]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_r_addr[2]_i_1__5 
       (.I0(q_r_addr[0]),
        .I1(q_r_addr[1]),
        .I2(q_r_addr[2]),
        .O(\q_r_addr[2]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q_r_addr[3]_i_1__5 
       (.I0(q_r_addr[1]),
        .I1(q_r_addr[0]),
        .I2(q_r_addr[2]),
        .I3(q_r_addr[3]),
        .O(\q_r_addr[3]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'h80A80000AAAA80A8)) 
    \q_r_addr[4]_i_1__4 
       (.I0(\q_r_addr_reg[4]_0 ),
        .I1(\q_r_addr[4]_i_3__4_n_0 ),
        .I2(\q_wr_addr_prev_reg_n_0_[3] ),
        .I3(q_r_addr[3]),
        .I4(\q_wr_addr_prev_reg_n_0_[4] ),
        .I5(q_r_addr[4]),
        .O(\q_r_addr[4]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q_r_addr[4]_i_2__5 
       (.I0(q_r_addr[2]),
        .I1(q_r_addr[0]),
        .I2(q_r_addr[1]),
        .I3(q_r_addr[3]),
        .I4(q_r_addr[4]),
        .O(\q_r_addr[4]_i_2__5_n_0 ));
  LUT6 #(
    .INIT(64'h44D444D4D4DD44D4)) 
    \q_r_addr[4]_i_3__4 
       (.I0(q_r_addr[2]),
        .I1(\q_wr_addr_prev_reg_n_0_[2] ),
        .I2(\q_wr_addr_prev_reg_n_0_[1] ),
        .I3(q_r_addr[1]),
        .I4(\q_wr_addr_prev_reg_n_0_[0] ),
        .I5(q_r_addr[0]),
        .O(\q_r_addr[4]_i_3__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[0] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__4_n_0 ),
        .D(\q_r_addr[0]_i_1__5_n_0 ),
        .Q(q_r_addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[1] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__4_n_0 ),
        .D(\q_r_addr[1]_i_1__5_n_0 ),
        .Q(q_r_addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[2] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__4_n_0 ),
        .D(\q_r_addr[2]_i_1__5_n_0 ),
        .Q(q_r_addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[3] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__4_n_0 ),
        .D(\q_r_addr[3]_i_1__5_n_0 ),
        .Q(q_r_addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[4] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__4_n_0 ),
        .D(\q_r_addr[4]_i_2__5_n_0 ),
        .Q(q_r_addr[4]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \q_wr_addr[0]_i_1__4 
       (.I0(\q_wr_addr_reg_n_0_[0] ),
        .O(p_0_in__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_wr_addr[1]_i_1__4 
       (.I0(\q_wr_addr_reg_n_0_[0] ),
        .I1(\q_wr_addr_reg_n_0_[1] ),
        .O(p_0_in__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_wr_addr[2]_i_1__4 
       (.I0(\q_wr_addr_reg_n_0_[0] ),
        .I1(\q_wr_addr_reg_n_0_[1] ),
        .I2(\q_wr_addr_reg_n_0_[2] ),
        .O(p_0_in__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q_wr_addr[3]_i_1__4 
       (.I0(\q_wr_addr_reg_n_0_[1] ),
        .I1(\q_wr_addr_reg_n_0_[0] ),
        .I2(\q_wr_addr_reg_n_0_[2] ),
        .I3(\q_wr_addr_reg_n_0_[3] ),
        .O(p_0_in__4[3]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q_wr_addr[4]_i_1__4 
       (.I0(\q_wr_addr_reg_n_0_[2] ),
        .I1(\q_wr_addr_reg_n_0_[0] ),
        .I2(\q_wr_addr_reg_n_0_[1] ),
        .I3(\q_wr_addr_reg_n_0_[3] ),
        .I4(\q_wr_addr_reg_n_0_[4] ),
        .O(p_0_in__4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[0] 
       (.C(i_clk),
        .CE(E),
        .D(\q_wr_addr_reg_n_0_[0] ),
        .Q(\q_wr_addr_prev_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[1] 
       (.C(i_clk),
        .CE(E),
        .D(\q_wr_addr_reg_n_0_[1] ),
        .Q(\q_wr_addr_prev_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[2] 
       (.C(i_clk),
        .CE(E),
        .D(\q_wr_addr_reg_n_0_[2] ),
        .Q(\q_wr_addr_prev_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[3] 
       (.C(i_clk),
        .CE(E),
        .D(\q_wr_addr_reg_n_0_[3] ),
        .Q(\q_wr_addr_prev_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[4] 
       (.C(i_clk),
        .CE(E),
        .D(\q_wr_addr_reg_n_0_[4] ),
        .Q(\q_wr_addr_prev_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[0] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in__4[0]),
        .Q(\q_wr_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[1] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in__4[1]),
        .Q(\q_wr_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[2] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in__4[2]),
        .Q(\q_wr_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[3] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in__4[3]),
        .Q(\q_wr_addr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[4] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in__4[4]),
        .Q(\q_wr_addr_reg_n_0_[4] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mem" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mem__parameterized0_9
   (Q,
    i_clk,
    \q_r_addr_reg[4]_0 ,
    E,
    o_avg_data);
  output [15:0]Q;
  input i_clk;
  input [0:0]\q_r_addr_reg[4]_0 ;
  input [0:0]E;
  input [15:0]o_avg_data;

  wire [0:0]E;
  wire [15:0]Q;
  wire i_clk;
  wire [15:0]o_avg_data;
  wire [15:0]o_rd_data0__6;
  wire [4:0]p_0_in__6;
  wire [4:0]q_r_addr;
  wire \q_r_addr[0]_i_1__6_n_0 ;
  wire \q_r_addr[1]_i_1__6_n_0 ;
  wire \q_r_addr[2]_i_1__6_n_0 ;
  wire \q_r_addr[3]_i_1__6_n_0 ;
  wire \q_r_addr[4]_i_1__6_n_0 ;
  wire \q_r_addr[4]_i_2__6_n_0 ;
  wire \q_r_addr[4]_i_3__6_n_0 ;
  wire [0:0]\q_r_addr_reg[4]_0 ;
  wire \q_wr_addr_prev_reg_n_0_[0] ;
  wire \q_wr_addr_prev_reg_n_0_[1] ;
  wire \q_wr_addr_prev_reg_n_0_[2] ;
  wire \q_wr_addr_prev_reg_n_0_[3] ;
  wire \q_wr_addr_prev_reg_n_0_[4] ;
  wire \q_wr_addr_reg_n_0_[0] ;
  wire \q_wr_addr_reg_n_0_[1] ;
  wire \q_wr_addr_reg_n_0_[2] ;
  wire \q_wr_addr_reg_n_0_[3] ;
  wire \q_wr_addr_reg_n_0_[4] ;
  wire [1:0]NLW_q_mem_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_12_15_DOC_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_12_15_DOD_UNCONNECTED;
  wire [1:0]NLW_q_mem_reg_0_31_6_11_DOD_UNCONNECTED;

  FDRE \o_rd_data_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__6[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \o_rd_data_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__6[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \o_rd_data_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__6[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \o_rd_data_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__6[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \o_rd_data_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__6[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \o_rd_data_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__6[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \o_rd_data_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__6[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \o_rd_data_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__6[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \o_rd_data_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__6[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \o_rd_data_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__6[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \o_rd_data_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__6[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \o_rd_data_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__6[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \o_rd_data_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__6[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \o_rd_data_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__6[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \o_rd_data_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__6[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \o_rd_data_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rd_data0__6[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/block[3].MEM_AVG/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_0_5
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD({\q_wr_addr_reg_n_0_[4] ,\q_wr_addr_reg_n_0_[3] ,\q_wr_addr_reg_n_0_[2] ,\q_wr_addr_reg_n_0_[1] ,\q_wr_addr_reg_n_0_[0] }),
        .DIA(o_avg_data[1:0]),
        .DIB(o_avg_data[3:2]),
        .DIC(o_avg_data[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0__6[1:0]),
        .DOB(o_rd_data0__6[3:2]),
        .DOC(o_rd_data0__6[5:4]),
        .DOD(NLW_q_mem_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/block[3].MEM_AVG/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "15" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_12_15
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD({\q_wr_addr_reg_n_0_[4] ,\q_wr_addr_reg_n_0_[3] ,\q_wr_addr_reg_n_0_[2] ,\q_wr_addr_reg_n_0_[1] ,\q_wr_addr_reg_n_0_[0] }),
        .DIA(o_avg_data[13:12]),
        .DIB(o_avg_data[15:14]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0__6[13:12]),
        .DOB(o_rd_data0__6[15:14]),
        .DOC(NLW_q_mem_reg_0_31_12_15_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_q_mem_reg_0_31_12_15_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/block[3].MEM_AVG/q_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    q_mem_reg_0_31_6_11
       (.ADDRA(q_r_addr),
        .ADDRB(q_r_addr),
        .ADDRC(q_r_addr),
        .ADDRD({\q_wr_addr_reg_n_0_[4] ,\q_wr_addr_reg_n_0_[3] ,\q_wr_addr_reg_n_0_[2] ,\q_wr_addr_reg_n_0_[1] ,\q_wr_addr_reg_n_0_[0] }),
        .DIA(o_avg_data[7:6]),
        .DIB(o_avg_data[9:8]),
        .DIC(o_avg_data[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(o_rd_data0__6[7:6]),
        .DOB(o_rd_data0__6[9:8]),
        .DOC(o_rd_data0__6[11:10]),
        .DOD(NLW_q_mem_reg_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk),
        .WE(E));
  LUT1 #(
    .INIT(2'h1)) 
    \q_r_addr[0]_i_1__6 
       (.I0(q_r_addr[0]),
        .O(\q_r_addr[0]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_r_addr[1]_i_1__6 
       (.I0(q_r_addr[0]),
        .I1(q_r_addr[1]),
        .O(\q_r_addr[1]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_r_addr[2]_i_1__6 
       (.I0(q_r_addr[0]),
        .I1(q_r_addr[1]),
        .I2(q_r_addr[2]),
        .O(\q_r_addr[2]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q_r_addr[3]_i_1__6 
       (.I0(q_r_addr[1]),
        .I1(q_r_addr[0]),
        .I2(q_r_addr[2]),
        .I3(q_r_addr[3]),
        .O(\q_r_addr[3]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'h80A80000AAAA80A8)) 
    \q_r_addr[4]_i_1__6 
       (.I0(\q_r_addr_reg[4]_0 ),
        .I1(\q_r_addr[4]_i_3__6_n_0 ),
        .I2(\q_wr_addr_prev_reg_n_0_[3] ),
        .I3(q_r_addr[3]),
        .I4(\q_wr_addr_prev_reg_n_0_[4] ),
        .I5(q_r_addr[4]),
        .O(\q_r_addr[4]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q_r_addr[4]_i_2__6 
       (.I0(q_r_addr[2]),
        .I1(q_r_addr[0]),
        .I2(q_r_addr[1]),
        .I3(q_r_addr[3]),
        .I4(q_r_addr[4]),
        .O(\q_r_addr[4]_i_2__6_n_0 ));
  LUT6 #(
    .INIT(64'h44D444D4D4DD44D4)) 
    \q_r_addr[4]_i_3__6 
       (.I0(q_r_addr[2]),
        .I1(\q_wr_addr_prev_reg_n_0_[2] ),
        .I2(\q_wr_addr_prev_reg_n_0_[1] ),
        .I3(q_r_addr[1]),
        .I4(\q_wr_addr_prev_reg_n_0_[0] ),
        .I5(q_r_addr[0]),
        .O(\q_r_addr[4]_i_3__6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[0] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__6_n_0 ),
        .D(\q_r_addr[0]_i_1__6_n_0 ),
        .Q(q_r_addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[1] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__6_n_0 ),
        .D(\q_r_addr[1]_i_1__6_n_0 ),
        .Q(q_r_addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[2] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__6_n_0 ),
        .D(\q_r_addr[2]_i_1__6_n_0 ),
        .Q(q_r_addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[3] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__6_n_0 ),
        .D(\q_r_addr[3]_i_1__6_n_0 ),
        .Q(q_r_addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_addr_reg[4] 
       (.C(i_clk),
        .CE(\q_r_addr[4]_i_1__6_n_0 ),
        .D(\q_r_addr[4]_i_2__6_n_0 ),
        .Q(q_r_addr[4]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \q_wr_addr[0]_i_1__6 
       (.I0(\q_wr_addr_reg_n_0_[0] ),
        .O(p_0_in__6[0]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_wr_addr[1]_i_1__6 
       (.I0(\q_wr_addr_reg_n_0_[0] ),
        .I1(\q_wr_addr_reg_n_0_[1] ),
        .O(p_0_in__6[1]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_wr_addr[2]_i_1__6 
       (.I0(\q_wr_addr_reg_n_0_[0] ),
        .I1(\q_wr_addr_reg_n_0_[1] ),
        .I2(\q_wr_addr_reg_n_0_[2] ),
        .O(p_0_in__6[2]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q_wr_addr[3]_i_1__6 
       (.I0(\q_wr_addr_reg_n_0_[1] ),
        .I1(\q_wr_addr_reg_n_0_[0] ),
        .I2(\q_wr_addr_reg_n_0_[2] ),
        .I3(\q_wr_addr_reg_n_0_[3] ),
        .O(p_0_in__6[3]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q_wr_addr[4]_i_1__6 
       (.I0(\q_wr_addr_reg_n_0_[2] ),
        .I1(\q_wr_addr_reg_n_0_[0] ),
        .I2(\q_wr_addr_reg_n_0_[1] ),
        .I3(\q_wr_addr_reg_n_0_[3] ),
        .I4(\q_wr_addr_reg_n_0_[4] ),
        .O(p_0_in__6[4]));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[0] 
       (.C(i_clk),
        .CE(E),
        .D(\q_wr_addr_reg_n_0_[0] ),
        .Q(\q_wr_addr_prev_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[1] 
       (.C(i_clk),
        .CE(E),
        .D(\q_wr_addr_reg_n_0_[1] ),
        .Q(\q_wr_addr_prev_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[2] 
       (.C(i_clk),
        .CE(E),
        .D(\q_wr_addr_reg_n_0_[2] ),
        .Q(\q_wr_addr_prev_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[3] 
       (.C(i_clk),
        .CE(E),
        .D(\q_wr_addr_reg_n_0_[3] ),
        .Q(\q_wr_addr_prev_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_prev_reg[4] 
       (.C(i_clk),
        .CE(E),
        .D(\q_wr_addr_reg_n_0_[4] ),
        .Q(\q_wr_addr_prev_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[0] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in__6[0]),
        .Q(\q_wr_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[1] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in__6[1]),
        .Q(\q_wr_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[2] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in__6[2]),
        .Q(\q_wr_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[3] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in__6[3]),
        .Q(\q_wr_addr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_wr_addr_reg[4] 
       (.C(i_clk),
        .CE(E),
        .D(p_0_in__6[4]),
        .Q(\q_wr_addr_reg_n_0_[4] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_proc_reg_map
   (s_axil_arready_reg_0,
    s_axil_rvalid,
    Q,
    \o_mem_ready_avg_reg[3]_0 ,
    s_axil_rdata,
    i_clk,
    i_resetn,
    s_axil_arvalid,
    s_axil_rready,
    s_axil_araddr,
    o_rd_data,
    \q_rd_data_reg[15]_0 ,
    \q_rd_data_reg[15]_1 ,
    \q_rd_data_reg[15]_2 ,
    \q_rd_data_reg[15]_3 ,
    \q_rd_data_reg[15]_4 ,
    \q_rd_data_reg[15]_5 ,
    \q_rd_data_reg[15]_6 );
  output s_axil_arready_reg_0;
  output s_axil_rvalid;
  output [3:0]Q;
  output [3:0]\o_mem_ready_avg_reg[3]_0 ;
  output [23:0]s_axil_rdata;
  input i_clk;
  input i_resetn;
  input s_axil_arvalid;
  input s_axil_rready;
  input [4:0]s_axil_araddr;
  input [23:0]o_rd_data;
  input [23:0]\q_rd_data_reg[15]_0 ;
  input [23:0]\q_rd_data_reg[15]_1 ;
  input [23:0]\q_rd_data_reg[15]_2 ;
  input [15:0]\q_rd_data_reg[15]_3 ;
  input [15:0]\q_rd_data_reg[15]_4 ;
  input [15:0]\q_rd_data_reg[15]_5 ;
  input [15:0]\q_rd_data_reg[15]_6 ;

  wire [3:0]Q;
  wire RADDR;
  wire i_clk;
  wire i_resetn;
  wire \o_mem_ready_avg[0]_i_1_n_0 ;
  wire \o_mem_ready_avg[1]_i_1_n_0 ;
  wire \o_mem_ready_avg[2]_i_1_n_0 ;
  wire \o_mem_ready_avg[3]_i_1_n_0 ;
  wire [3:0]\o_mem_ready_avg_reg[3]_0 ;
  wire \o_mem_ready_min_max[0]_i_1_n_0 ;
  wire \o_mem_ready_min_max[1]_i_1_n_0 ;
  wire \o_mem_ready_min_max[2]_i_1_n_0 ;
  wire \o_mem_ready_min_max[3]_i_1_n_0 ;
  wire [23:0]o_rd_data;
  wire [4:0]p_0_in;
  wire [55:0]q_rd_data;
  wire \q_rd_data[0]_i_1_n_0 ;
  wire \q_rd_data[0]_i_2_n_0 ;
  wire \q_rd_data[0]_i_3_n_0 ;
  wire \q_rd_data[10]_i_1_n_0 ;
  wire \q_rd_data[10]_i_2_n_0 ;
  wire \q_rd_data[10]_i_3_n_0 ;
  wire \q_rd_data[11]_i_1_n_0 ;
  wire \q_rd_data[11]_i_2_n_0 ;
  wire \q_rd_data[11]_i_3_n_0 ;
  wire \q_rd_data[12]_i_1_n_0 ;
  wire \q_rd_data[12]_i_2_n_0 ;
  wire \q_rd_data[12]_i_3_n_0 ;
  wire \q_rd_data[13]_i_1_n_0 ;
  wire \q_rd_data[13]_i_2_n_0 ;
  wire \q_rd_data[13]_i_3_n_0 ;
  wire \q_rd_data[14]_i_1_n_0 ;
  wire \q_rd_data[14]_i_2_n_0 ;
  wire \q_rd_data[14]_i_3_n_0 ;
  wire \q_rd_data[15]_i_1_n_0 ;
  wire \q_rd_data[15]_i_2_n_0 ;
  wire \q_rd_data[15]_i_3_n_0 ;
  wire \q_rd_data[1]_i_1_n_0 ;
  wire \q_rd_data[1]_i_2_n_0 ;
  wire \q_rd_data[1]_i_3_n_0 ;
  wire \q_rd_data[2]_i_1_n_0 ;
  wire \q_rd_data[2]_i_2_n_0 ;
  wire \q_rd_data[2]_i_3_n_0 ;
  wire \q_rd_data[3]_i_1_n_0 ;
  wire \q_rd_data[3]_i_2_n_0 ;
  wire \q_rd_data[3]_i_3_n_0 ;
  wire \q_rd_data[48]_i_1_n_0 ;
  wire \q_rd_data[48]_i_2_n_0 ;
  wire \q_rd_data[49]_i_1_n_0 ;
  wire \q_rd_data[49]_i_2_n_0 ;
  wire \q_rd_data[4]_i_1_n_0 ;
  wire \q_rd_data[4]_i_2_n_0 ;
  wire \q_rd_data[4]_i_3_n_0 ;
  wire \q_rd_data[50]_i_1_n_0 ;
  wire \q_rd_data[50]_i_2_n_0 ;
  wire \q_rd_data[51]_i_1_n_0 ;
  wire \q_rd_data[51]_i_2_n_0 ;
  wire \q_rd_data[52]_i_1_n_0 ;
  wire \q_rd_data[52]_i_2_n_0 ;
  wire \q_rd_data[53]_i_1_n_0 ;
  wire \q_rd_data[53]_i_2_n_0 ;
  wire \q_rd_data[54]_i_1_n_0 ;
  wire \q_rd_data[54]_i_2_n_0 ;
  wire \q_rd_data[55]_i_1_n_0 ;
  wire \q_rd_data[55]_i_2_n_0 ;
  wire \q_rd_data[55]_i_3_n_0 ;
  wire \q_rd_data[5]_i_1_n_0 ;
  wire \q_rd_data[5]_i_2_n_0 ;
  wire \q_rd_data[5]_i_3_n_0 ;
  wire \q_rd_data[6]_i_1_n_0 ;
  wire \q_rd_data[6]_i_2_n_0 ;
  wire \q_rd_data[6]_i_3_n_0 ;
  wire \q_rd_data[7]_i_1_n_0 ;
  wire \q_rd_data[7]_i_2_n_0 ;
  wire \q_rd_data[7]_i_3_n_0 ;
  wire \q_rd_data[8]_i_1_n_0 ;
  wire \q_rd_data[8]_i_2_n_0 ;
  wire \q_rd_data[8]_i_3_n_0 ;
  wire \q_rd_data[9]_i_1_n_0 ;
  wire \q_rd_data[9]_i_2_n_0 ;
  wire \q_rd_data[9]_i_3_n_0 ;
  wire q_rd_data_0;
  wire [23:0]\q_rd_data_reg[15]_0 ;
  wire [23:0]\q_rd_data_reg[15]_1 ;
  wire [23:0]\q_rd_data_reg[15]_2 ;
  wire [15:0]\q_rd_data_reg[15]_3 ;
  wire [15:0]\q_rd_data_reg[15]_4 ;
  wire [15:0]\q_rd_data_reg[15]_5 ;
  wire [15:0]\q_rd_data_reg[15]_6 ;
  wire q_rena_i_1_n_0;
  wire q_rena_reg_n_0;
  wire [4:0]s_axil_araddr;
  wire s_axil_arready_i_1_n_0;
  wire s_axil_arready_reg_0;
  wire s_axil_arvalid;
  wire [23:0]s_axil_rdata;
  wire s_axil_rready;
  wire s_axil_rvalid;
  wire s_axil_rvalid_i_1_n_0;

  LUT3 #(
    .INIT(8'h80)) 
    \RADDR[7]_i_1 
       (.I0(i_resetn),
        .I1(s_axil_arvalid),
        .I2(s_axil_arready_reg_0),
        .O(RADDR));
  FDRE \RADDR_reg[3] 
       (.C(i_clk),
        .CE(RADDR),
        .D(s_axil_araddr[0]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \RADDR_reg[4] 
       (.C(i_clk),
        .CE(RADDR),
        .D(s_axil_araddr[1]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \RADDR_reg[5] 
       (.C(i_clk),
        .CE(RADDR),
        .D(s_axil_araddr[2]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \RADDR_reg[6] 
       (.C(i_clk),
        .CE(RADDR),
        .D(s_axil_araddr[3]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \RADDR_reg[7] 
       (.C(i_clk),
        .CE(RADDR),
        .D(s_axil_araddr[4]),
        .Q(p_0_in[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \o_mem_ready_avg[0]_i_1 
       (.I0(q_rena_reg_n_0),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[4]),
        .O(\o_mem_ready_avg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \o_mem_ready_avg[1]_i_1 
       (.I0(q_rena_reg_n_0),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[4]),
        .O(\o_mem_ready_avg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \o_mem_ready_avg[2]_i_1 
       (.I0(q_rena_reg_n_0),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[4]),
        .O(\o_mem_ready_avg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \o_mem_ready_avg[3]_i_1 
       (.I0(q_rena_reg_n_0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[3]),
        .I5(p_0_in[4]),
        .O(\o_mem_ready_avg[3]_i_1_n_0 ));
  FDRE \o_mem_ready_avg_reg[0] 
       (.C(i_clk),
        .CE(i_resetn),
        .D(\o_mem_ready_avg[0]_i_1_n_0 ),
        .Q(\o_mem_ready_avg_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \o_mem_ready_avg_reg[1] 
       (.C(i_clk),
        .CE(i_resetn),
        .D(\o_mem_ready_avg[1]_i_1_n_0 ),
        .Q(\o_mem_ready_avg_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \o_mem_ready_avg_reg[2] 
       (.C(i_clk),
        .CE(i_resetn),
        .D(\o_mem_ready_avg[2]_i_1_n_0 ),
        .Q(\o_mem_ready_avg_reg[3]_0 [2]),
        .R(1'b0));
  FDRE \o_mem_ready_avg_reg[3] 
       (.C(i_clk),
        .CE(i_resetn),
        .D(\o_mem_ready_avg[3]_i_1_n_0 ),
        .Q(\o_mem_ready_avg_reg[3]_0 [3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \o_mem_ready_min_max[0]_i_1 
       (.I0(q_rena_reg_n_0),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[4]),
        .I5(p_0_in[2]),
        .O(\o_mem_ready_min_max[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \o_mem_ready_min_max[1]_i_1 
       (.I0(q_rena_reg_n_0),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[3]),
        .I5(p_0_in[4]),
        .O(\o_mem_ready_min_max[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \o_mem_ready_min_max[2]_i_1 
       (.I0(q_rena_reg_n_0),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[3]),
        .I5(p_0_in[4]),
        .O(\o_mem_ready_min_max[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \o_mem_ready_min_max[3]_i_1 
       (.I0(q_rena_reg_n_0),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[3]),
        .I5(p_0_in[4]),
        .O(\o_mem_ready_min_max[3]_i_1_n_0 ));
  FDRE \o_mem_ready_min_max_reg[0] 
       (.C(i_clk),
        .CE(i_resetn),
        .D(\o_mem_ready_min_max[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \o_mem_ready_min_max_reg[1] 
       (.C(i_clk),
        .CE(i_resetn),
        .D(\o_mem_ready_min_max[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \o_mem_ready_min_max_reg[2] 
       (.C(i_clk),
        .CE(i_resetn),
        .D(\o_mem_ready_min_max[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \o_mem_ready_min_max_reg[3] 
       (.C(i_clk),
        .CE(i_resetn),
        .D(\o_mem_ready_min_max[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \q_rd_data[0]_i_1 
       (.I0(\q_rd_data[0]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\q_rd_data[0]_i_3_n_0 ),
        .O(\q_rd_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[0]_i_2 
       (.I0(\q_rd_data_reg[15]_3 [0]),
        .I1(\q_rd_data_reg[15]_4 [0]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_5 [0]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_6 [0]),
        .O(\q_rd_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[0]_i_3 
       (.I0(o_rd_data[8]),
        .I1(\q_rd_data_reg[15]_0 [8]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_1 [8]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_2 [8]),
        .O(\q_rd_data[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q_rd_data[10]_i_1 
       (.I0(\q_rd_data[10]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\q_rd_data[10]_i_3_n_0 ),
        .O(\q_rd_data[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[10]_i_2 
       (.I0(\q_rd_data_reg[15]_3 [10]),
        .I1(\q_rd_data_reg[15]_4 [10]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_5 [10]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_6 [10]),
        .O(\q_rd_data[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[10]_i_3 
       (.I0(o_rd_data[18]),
        .I1(\q_rd_data_reg[15]_0 [18]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_1 [18]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_2 [18]),
        .O(\q_rd_data[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q_rd_data[11]_i_1 
       (.I0(\q_rd_data[11]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\q_rd_data[11]_i_3_n_0 ),
        .O(\q_rd_data[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[11]_i_2 
       (.I0(\q_rd_data_reg[15]_3 [11]),
        .I1(\q_rd_data_reg[15]_4 [11]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_5 [11]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_6 [11]),
        .O(\q_rd_data[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[11]_i_3 
       (.I0(o_rd_data[19]),
        .I1(\q_rd_data_reg[15]_0 [19]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_1 [19]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_2 [19]),
        .O(\q_rd_data[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q_rd_data[12]_i_1 
       (.I0(\q_rd_data[12]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\q_rd_data[12]_i_3_n_0 ),
        .O(\q_rd_data[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[12]_i_2 
       (.I0(\q_rd_data_reg[15]_3 [12]),
        .I1(\q_rd_data_reg[15]_4 [12]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_5 [12]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_6 [12]),
        .O(\q_rd_data[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[12]_i_3 
       (.I0(o_rd_data[20]),
        .I1(\q_rd_data_reg[15]_0 [20]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_1 [20]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_2 [20]),
        .O(\q_rd_data[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q_rd_data[13]_i_1 
       (.I0(\q_rd_data[13]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\q_rd_data[13]_i_3_n_0 ),
        .O(\q_rd_data[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[13]_i_2 
       (.I0(\q_rd_data_reg[15]_3 [13]),
        .I1(\q_rd_data_reg[15]_4 [13]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_5 [13]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_6 [13]),
        .O(\q_rd_data[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[13]_i_3 
       (.I0(o_rd_data[21]),
        .I1(\q_rd_data_reg[15]_0 [21]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_1 [21]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_2 [21]),
        .O(\q_rd_data[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q_rd_data[14]_i_1 
       (.I0(\q_rd_data[14]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\q_rd_data[14]_i_3_n_0 ),
        .O(\q_rd_data[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[14]_i_2 
       (.I0(\q_rd_data_reg[15]_3 [14]),
        .I1(\q_rd_data_reg[15]_4 [14]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_5 [14]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_6 [14]),
        .O(\q_rd_data[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[14]_i_3 
       (.I0(o_rd_data[22]),
        .I1(\q_rd_data_reg[15]_0 [22]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_1 [22]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_2 [22]),
        .O(\q_rd_data[14]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q_rd_data[15]_i_1 
       (.I0(\q_rd_data[15]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\q_rd_data[15]_i_3_n_0 ),
        .O(\q_rd_data[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[15]_i_2 
       (.I0(\q_rd_data_reg[15]_3 [15]),
        .I1(\q_rd_data_reg[15]_4 [15]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_5 [15]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_6 [15]),
        .O(\q_rd_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[15]_i_3 
       (.I0(o_rd_data[23]),
        .I1(\q_rd_data_reg[15]_0 [23]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_1 [23]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_2 [23]),
        .O(\q_rd_data[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \q_rd_data[1]_i_1 
       (.I0(\q_rd_data[1]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\q_rd_data[1]_i_3_n_0 ),
        .O(\q_rd_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[1]_i_2 
       (.I0(\q_rd_data_reg[15]_3 [1]),
        .I1(\q_rd_data_reg[15]_4 [1]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_5 [1]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_6 [1]),
        .O(\q_rd_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[1]_i_3 
       (.I0(o_rd_data[9]),
        .I1(\q_rd_data_reg[15]_0 [9]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_1 [9]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_2 [9]),
        .O(\q_rd_data[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \q_rd_data[2]_i_1 
       (.I0(\q_rd_data[2]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\q_rd_data[2]_i_3_n_0 ),
        .O(\q_rd_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[2]_i_2 
       (.I0(\q_rd_data_reg[15]_3 [2]),
        .I1(\q_rd_data_reg[15]_4 [2]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_5 [2]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_6 [2]),
        .O(\q_rd_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[2]_i_3 
       (.I0(o_rd_data[10]),
        .I1(\q_rd_data_reg[15]_0 [10]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_1 [10]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_2 [10]),
        .O(\q_rd_data[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \q_rd_data[3]_i_1 
       (.I0(\q_rd_data[3]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\q_rd_data[3]_i_3_n_0 ),
        .O(\q_rd_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[3]_i_2 
       (.I0(\q_rd_data_reg[15]_3 [3]),
        .I1(\q_rd_data_reg[15]_4 [3]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_5 [3]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_6 [3]),
        .O(\q_rd_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[3]_i_3 
       (.I0(o_rd_data[11]),
        .I1(\q_rd_data_reg[15]_0 [11]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_1 [11]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_2 [11]),
        .O(\q_rd_data[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q_rd_data[48]_i_1 
       (.I0(\q_rd_data[48]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .O(\q_rd_data[48]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[48]_i_2 
       (.I0(o_rd_data[0]),
        .I1(\q_rd_data_reg[15]_0 [0]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_1 [0]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_2 [0]),
        .O(\q_rd_data[48]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q_rd_data[49]_i_1 
       (.I0(\q_rd_data[49]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .O(\q_rd_data[49]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[49]_i_2 
       (.I0(o_rd_data[1]),
        .I1(\q_rd_data_reg[15]_0 [1]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_1 [1]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_2 [1]),
        .O(\q_rd_data[49]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \q_rd_data[4]_i_1 
       (.I0(\q_rd_data[4]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\q_rd_data[4]_i_3_n_0 ),
        .O(\q_rd_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[4]_i_2 
       (.I0(\q_rd_data_reg[15]_3 [4]),
        .I1(\q_rd_data_reg[15]_4 [4]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_5 [4]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_6 [4]),
        .O(\q_rd_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[4]_i_3 
       (.I0(o_rd_data[12]),
        .I1(\q_rd_data_reg[15]_0 [12]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_1 [12]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_2 [12]),
        .O(\q_rd_data[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q_rd_data[50]_i_1 
       (.I0(\q_rd_data[50]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .O(\q_rd_data[50]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[50]_i_2 
       (.I0(o_rd_data[2]),
        .I1(\q_rd_data_reg[15]_0 [2]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_1 [2]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_2 [2]),
        .O(\q_rd_data[50]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q_rd_data[51]_i_1 
       (.I0(\q_rd_data[51]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .O(\q_rd_data[51]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[51]_i_2 
       (.I0(o_rd_data[3]),
        .I1(\q_rd_data_reg[15]_0 [3]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_1 [3]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_2 [3]),
        .O(\q_rd_data[51]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q_rd_data[52]_i_1 
       (.I0(\q_rd_data[52]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .O(\q_rd_data[52]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[52]_i_2 
       (.I0(o_rd_data[4]),
        .I1(\q_rd_data_reg[15]_0 [4]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_1 [4]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_2 [4]),
        .O(\q_rd_data[52]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q_rd_data[53]_i_1 
       (.I0(\q_rd_data[53]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .O(\q_rd_data[53]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[53]_i_2 
       (.I0(o_rd_data[5]),
        .I1(\q_rd_data_reg[15]_0 [5]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_1 [5]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_2 [5]),
        .O(\q_rd_data[53]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q_rd_data[54]_i_1 
       (.I0(\q_rd_data[54]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .O(\q_rd_data[54]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[54]_i_2 
       (.I0(o_rd_data[6]),
        .I1(\q_rd_data_reg[15]_0 [6]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_1 [6]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_2 [6]),
        .O(\q_rd_data[54]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \q_rd_data[55]_i_1 
       (.I0(p_0_in[4]),
        .I1(q_rena_reg_n_0),
        .I2(i_resetn),
        .O(\q_rd_data[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q_rd_data[55]_i_2 
       (.I0(\q_rd_data[55]_i_3_n_0 ),
        .I1(p_0_in[3]),
        .O(\q_rd_data[55]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[55]_i_3 
       (.I0(o_rd_data[7]),
        .I1(\q_rd_data_reg[15]_0 [7]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_1 [7]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_2 [7]),
        .O(\q_rd_data[55]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \q_rd_data[5]_i_1 
       (.I0(\q_rd_data[5]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\q_rd_data[5]_i_3_n_0 ),
        .O(\q_rd_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[5]_i_2 
       (.I0(\q_rd_data_reg[15]_3 [5]),
        .I1(\q_rd_data_reg[15]_4 [5]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_5 [5]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_6 [5]),
        .O(\q_rd_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[5]_i_3 
       (.I0(o_rd_data[13]),
        .I1(\q_rd_data_reg[15]_0 [13]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_1 [13]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_2 [13]),
        .O(\q_rd_data[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \q_rd_data[6]_i_1 
       (.I0(\q_rd_data[6]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\q_rd_data[6]_i_3_n_0 ),
        .O(\q_rd_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[6]_i_2 
       (.I0(\q_rd_data_reg[15]_3 [6]),
        .I1(\q_rd_data_reg[15]_4 [6]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_5 [6]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_6 [6]),
        .O(\q_rd_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[6]_i_3 
       (.I0(o_rd_data[14]),
        .I1(\q_rd_data_reg[15]_0 [14]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_1 [14]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_2 [14]),
        .O(\q_rd_data[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \q_rd_data[7]_i_1 
       (.I0(\q_rd_data[7]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\q_rd_data[7]_i_3_n_0 ),
        .O(\q_rd_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[7]_i_2 
       (.I0(\q_rd_data_reg[15]_3 [7]),
        .I1(\q_rd_data_reg[15]_4 [7]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_5 [7]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_6 [7]),
        .O(\q_rd_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[7]_i_3 
       (.I0(o_rd_data[15]),
        .I1(\q_rd_data_reg[15]_0 [15]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_1 [15]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_2 [15]),
        .O(\q_rd_data[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q_rd_data[8]_i_1 
       (.I0(\q_rd_data[8]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\q_rd_data[8]_i_3_n_0 ),
        .O(\q_rd_data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[8]_i_2 
       (.I0(\q_rd_data_reg[15]_3 [8]),
        .I1(\q_rd_data_reg[15]_4 [8]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_5 [8]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_6 [8]),
        .O(\q_rd_data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[8]_i_3 
       (.I0(o_rd_data[16]),
        .I1(\q_rd_data_reg[15]_0 [16]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_1 [16]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_2 [16]),
        .O(\q_rd_data[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q_rd_data[9]_i_1 
       (.I0(\q_rd_data[9]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\q_rd_data[9]_i_3_n_0 ),
        .O(\q_rd_data[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[9]_i_2 
       (.I0(\q_rd_data_reg[15]_3 [9]),
        .I1(\q_rd_data_reg[15]_4 [9]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_5 [9]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_6 [9]),
        .O(\q_rd_data[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_rd_data[9]_i_3 
       (.I0(o_rd_data[17]),
        .I1(\q_rd_data_reg[15]_0 [17]),
        .I2(p_0_in[1]),
        .I3(\q_rd_data_reg[15]_1 [17]),
        .I4(p_0_in[0]),
        .I5(\q_rd_data_reg[15]_2 [17]),
        .O(\q_rd_data[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rd_data_reg[0] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(\q_rd_data[0]_i_1_n_0 ),
        .Q(q_rd_data[0]),
        .R(\q_rd_data[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rd_data_reg[10] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(\q_rd_data[10]_i_1_n_0 ),
        .Q(q_rd_data[10]),
        .R(\q_rd_data[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rd_data_reg[11] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(\q_rd_data[11]_i_1_n_0 ),
        .Q(q_rd_data[11]),
        .R(\q_rd_data[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rd_data_reg[12] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(\q_rd_data[12]_i_1_n_0 ),
        .Q(q_rd_data[12]),
        .R(\q_rd_data[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rd_data_reg[13] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(\q_rd_data[13]_i_1_n_0 ),
        .Q(q_rd_data[13]),
        .R(\q_rd_data[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rd_data_reg[14] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(\q_rd_data[14]_i_1_n_0 ),
        .Q(q_rd_data[14]),
        .R(\q_rd_data[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rd_data_reg[15] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(\q_rd_data[15]_i_1_n_0 ),
        .Q(q_rd_data[15]),
        .R(\q_rd_data[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rd_data_reg[1] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(\q_rd_data[1]_i_1_n_0 ),
        .Q(q_rd_data[1]),
        .R(\q_rd_data[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rd_data_reg[2] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(\q_rd_data[2]_i_1_n_0 ),
        .Q(q_rd_data[2]),
        .R(\q_rd_data[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rd_data_reg[3] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(\q_rd_data[3]_i_1_n_0 ),
        .Q(q_rd_data[3]),
        .R(\q_rd_data[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rd_data_reg[48] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(\q_rd_data[48]_i_1_n_0 ),
        .Q(q_rd_data[48]),
        .R(\q_rd_data[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rd_data_reg[49] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(\q_rd_data[49]_i_1_n_0 ),
        .Q(q_rd_data[49]),
        .R(\q_rd_data[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rd_data_reg[4] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(\q_rd_data[4]_i_1_n_0 ),
        .Q(q_rd_data[4]),
        .R(\q_rd_data[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rd_data_reg[50] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(\q_rd_data[50]_i_1_n_0 ),
        .Q(q_rd_data[50]),
        .R(\q_rd_data[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rd_data_reg[51] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(\q_rd_data[51]_i_1_n_0 ),
        .Q(q_rd_data[51]),
        .R(\q_rd_data[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rd_data_reg[52] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(\q_rd_data[52]_i_1_n_0 ),
        .Q(q_rd_data[52]),
        .R(\q_rd_data[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rd_data_reg[53] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(\q_rd_data[53]_i_1_n_0 ),
        .Q(q_rd_data[53]),
        .R(\q_rd_data[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rd_data_reg[54] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(\q_rd_data[54]_i_1_n_0 ),
        .Q(q_rd_data[54]),
        .R(\q_rd_data[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rd_data_reg[55] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(\q_rd_data[55]_i_2_n_0 ),
        .Q(q_rd_data[55]),
        .R(\q_rd_data[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rd_data_reg[5] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(\q_rd_data[5]_i_1_n_0 ),
        .Q(q_rd_data[5]),
        .R(\q_rd_data[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rd_data_reg[6] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(\q_rd_data[6]_i_1_n_0 ),
        .Q(q_rd_data[6]),
        .R(\q_rd_data[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rd_data_reg[7] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(\q_rd_data[7]_i_1_n_0 ),
        .Q(q_rd_data[7]),
        .R(\q_rd_data[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rd_data_reg[8] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(\q_rd_data[8]_i_1_n_0 ),
        .Q(q_rd_data[8]),
        .R(\q_rd_data[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rd_data_reg[9] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(\q_rd_data[9]_i_1_n_0 ),
        .Q(q_rd_data[9]),
        .R(\q_rd_data[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h5580)) 
    q_rena_i_1
       (.I0(i_resetn),
        .I1(s_axil_arready_reg_0),
        .I2(s_axil_arvalid),
        .I3(q_rena_reg_n_0),
        .O(q_rena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_rena_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(q_rena_i_1_n_0),
        .Q(q_rena_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    s_axil_arready_i_1
       (.I0(i_resetn),
        .I1(s_axil_arvalid),
        .I2(s_axil_arready_reg_0),
        .O(s_axil_arready_i_1_n_0));
  FDRE s_axil_arready_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(s_axil_arready_i_1_n_0),
        .Q(s_axil_arready_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axil_rdata[55]_i_1 
       (.I0(i_resetn),
        .I1(q_rena_reg_n_0),
        .O(q_rd_data_0));
  FDRE \s_axil_rdata_reg[0] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(q_rd_data[0]),
        .Q(s_axil_rdata[0]),
        .R(1'b0));
  FDRE \s_axil_rdata_reg[10] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(q_rd_data[10]),
        .Q(s_axil_rdata[10]),
        .R(1'b0));
  FDRE \s_axil_rdata_reg[11] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(q_rd_data[11]),
        .Q(s_axil_rdata[11]),
        .R(1'b0));
  FDRE \s_axil_rdata_reg[12] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(q_rd_data[12]),
        .Q(s_axil_rdata[12]),
        .R(1'b0));
  FDRE \s_axil_rdata_reg[13] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(q_rd_data[13]),
        .Q(s_axil_rdata[13]),
        .R(1'b0));
  FDRE \s_axil_rdata_reg[14] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(q_rd_data[14]),
        .Q(s_axil_rdata[14]),
        .R(1'b0));
  FDRE \s_axil_rdata_reg[15] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(q_rd_data[15]),
        .Q(s_axil_rdata[15]),
        .R(1'b0));
  FDRE \s_axil_rdata_reg[1] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(q_rd_data[1]),
        .Q(s_axil_rdata[1]),
        .R(1'b0));
  FDRE \s_axil_rdata_reg[2] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(q_rd_data[2]),
        .Q(s_axil_rdata[2]),
        .R(1'b0));
  FDRE \s_axil_rdata_reg[3] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(q_rd_data[3]),
        .Q(s_axil_rdata[3]),
        .R(1'b0));
  FDRE \s_axil_rdata_reg[48] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(q_rd_data[48]),
        .Q(s_axil_rdata[16]),
        .R(1'b0));
  FDRE \s_axil_rdata_reg[49] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(q_rd_data[49]),
        .Q(s_axil_rdata[17]),
        .R(1'b0));
  FDRE \s_axil_rdata_reg[4] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(q_rd_data[4]),
        .Q(s_axil_rdata[4]),
        .R(1'b0));
  FDRE \s_axil_rdata_reg[50] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(q_rd_data[50]),
        .Q(s_axil_rdata[18]),
        .R(1'b0));
  FDRE \s_axil_rdata_reg[51] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(q_rd_data[51]),
        .Q(s_axil_rdata[19]),
        .R(1'b0));
  FDRE \s_axil_rdata_reg[52] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(q_rd_data[52]),
        .Q(s_axil_rdata[20]),
        .R(1'b0));
  FDRE \s_axil_rdata_reg[53] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(q_rd_data[53]),
        .Q(s_axil_rdata[21]),
        .R(1'b0));
  FDRE \s_axil_rdata_reg[54] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(q_rd_data[54]),
        .Q(s_axil_rdata[22]),
        .R(1'b0));
  FDRE \s_axil_rdata_reg[55] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(q_rd_data[55]),
        .Q(s_axil_rdata[23]),
        .R(1'b0));
  FDRE \s_axil_rdata_reg[5] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(q_rd_data[5]),
        .Q(s_axil_rdata[5]),
        .R(1'b0));
  FDRE \s_axil_rdata_reg[6] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(q_rd_data[6]),
        .Q(s_axil_rdata[6]),
        .R(1'b0));
  FDRE \s_axil_rdata_reg[7] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(q_rd_data[7]),
        .Q(s_axil_rdata[7]),
        .R(1'b0));
  FDRE \s_axil_rdata_reg[8] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(q_rd_data[8]),
        .Q(s_axil_rdata[8]),
        .R(1'b0));
  FDRE \s_axil_rdata_reg[9] 
       (.C(i_clk),
        .CE(q_rd_data_0),
        .D(q_rd_data[9]),
        .Q(s_axil_rdata[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h08C8)) 
    s_axil_rvalid_i_1
       (.I0(q_rena_reg_n_0),
        .I1(i_resetn),
        .I2(s_axil_rvalid),
        .I3(s_axil_rready),
        .O(s_axil_rvalid_i_1_n_0));
  FDRE s_axil_rvalid_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(s_axil_rvalid_i_1_n_0),
        .Q(s_axil_rvalid),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_procedural
   (s_axil_arready_reg,
    s_axil_rdata,
    s_axil_rvalid,
    i_clk,
    s_tlast,
    i_resetn,
    s_axil_arvalid,
    s_tdata,
    s_axil_araddr,
    s_tvalid,
    s_axil_rready);
  output s_axil_arready_reg;
  output [23:0]s_axil_rdata;
  output s_axil_rvalid;
  input i_clk;
  input s_tlast;
  input i_resetn;
  input s_axil_arvalid;
  input [15:0]s_tdata;
  input [4:0]s_axil_araddr;
  input s_tvalid;
  input s_axil_rready;

  wire \block[0].MEM_AVG_n_0 ;
  wire \block[0].MEM_AVG_n_1 ;
  wire \block[0].MEM_AVG_n_10 ;
  wire \block[0].MEM_AVG_n_11 ;
  wire \block[0].MEM_AVG_n_12 ;
  wire \block[0].MEM_AVG_n_13 ;
  wire \block[0].MEM_AVG_n_14 ;
  wire \block[0].MEM_AVG_n_15 ;
  wire \block[0].MEM_AVG_n_2 ;
  wire \block[0].MEM_AVG_n_3 ;
  wire \block[0].MEM_AVG_n_4 ;
  wire \block[0].MEM_AVG_n_5 ;
  wire \block[0].MEM_AVG_n_6 ;
  wire \block[0].MEM_AVG_n_7 ;
  wire \block[0].MEM_AVG_n_8 ;
  wire \block[0].MEM_AVG_n_9 ;
  wire \block[0].min_max[0].MIN_MAX_n_0 ;
  wire \block[0].w_avg_valid ;
  wire \block[1].AVG_n_10 ;
  wire \block[1].AVG_n_11 ;
  wire \block[1].AVG_n_12 ;
  wire \block[1].AVG_n_13 ;
  wire \block[1].AVG_n_14 ;
  wire \block[1].AVG_n_15 ;
  wire \block[1].AVG_n_16 ;
  wire \block[1].AVG_n_17 ;
  wire \block[1].AVG_n_18 ;
  wire \block[1].AVG_n_2 ;
  wire \block[1].AVG_n_3 ;
  wire \block[1].AVG_n_4 ;
  wire \block[1].AVG_n_5 ;
  wire \block[1].AVG_n_6 ;
  wire \block[1].AVG_n_7 ;
  wire \block[1].AVG_n_8 ;
  wire \block[1].AVG_n_9 ;
  wire \block[1].MEM_AVG_n_0 ;
  wire \block[1].MEM_AVG_n_1 ;
  wire \block[1].MEM_AVG_n_10 ;
  wire \block[1].MEM_AVG_n_11 ;
  wire \block[1].MEM_AVG_n_12 ;
  wire \block[1].MEM_AVG_n_13 ;
  wire \block[1].MEM_AVG_n_14 ;
  wire \block[1].MEM_AVG_n_15 ;
  wire \block[1].MEM_AVG_n_2 ;
  wire \block[1].MEM_AVG_n_3 ;
  wire \block[1].MEM_AVG_n_4 ;
  wire \block[1].MEM_AVG_n_5 ;
  wire \block[1].MEM_AVG_n_6 ;
  wire \block[1].MEM_AVG_n_7 ;
  wire \block[1].MEM_AVG_n_8 ;
  wire \block[1].MEM_AVG_n_9 ;
  wire \block[1].min_max[0].MIN_MAX_n_0 ;
  wire \block[1].min_max[0].MIN_MAX_n_1 ;
  wire \block[1].min_max[0].MIN_MAX_n_10 ;
  wire \block[1].min_max[0].MIN_MAX_n_11 ;
  wire \block[1].min_max[0].MIN_MAX_n_12 ;
  wire \block[1].min_max[0].MIN_MAX_n_13 ;
  wire \block[1].min_max[0].MIN_MAX_n_14 ;
  wire \block[1].min_max[0].MIN_MAX_n_15 ;
  wire \block[1].min_max[0].MIN_MAX_n_16 ;
  wire \block[1].min_max[0].MIN_MAX_n_17 ;
  wire \block[1].min_max[0].MIN_MAX_n_18 ;
  wire \block[1].min_max[0].MIN_MAX_n_19 ;
  wire \block[1].min_max[0].MIN_MAX_n_2 ;
  wire \block[1].min_max[0].MIN_MAX_n_20 ;
  wire \block[1].min_max[0].MIN_MAX_n_21 ;
  wire \block[1].min_max[0].MIN_MAX_n_22 ;
  wire \block[1].min_max[0].MIN_MAX_n_23 ;
  wire \block[1].min_max[0].MIN_MAX_n_24 ;
  wire \block[1].min_max[0].MIN_MAX_n_25 ;
  wire \block[1].min_max[0].MIN_MAX_n_3 ;
  wire \block[1].min_max[0].MIN_MAX_n_4 ;
  wire \block[1].min_max[0].MIN_MAX_n_5 ;
  wire \block[1].min_max[0].MIN_MAX_n_6 ;
  wire \block[1].min_max[0].MIN_MAX_n_7 ;
  wire \block[1].min_max[0].MIN_MAX_n_8 ;
  wire \block[1].min_max[0].MIN_MAX_n_9 ;
  wire \block[1].w_avg_valid ;
  wire \block[2].AVG_n_1 ;
  wire \block[2].AVG_n_10 ;
  wire \block[2].AVG_n_11 ;
  wire \block[2].AVG_n_12 ;
  wire \block[2].AVG_n_13 ;
  wire \block[2].AVG_n_14 ;
  wire \block[2].AVG_n_15 ;
  wire \block[2].AVG_n_16 ;
  wire \block[2].AVG_n_17 ;
  wire \block[2].AVG_n_2 ;
  wire \block[2].AVG_n_3 ;
  wire \block[2].AVG_n_4 ;
  wire \block[2].AVG_n_5 ;
  wire \block[2].AVG_n_6 ;
  wire \block[2].AVG_n_7 ;
  wire \block[2].AVG_n_8 ;
  wire \block[2].AVG_n_9 ;
  wire \block[2].MEM_AVG_n_0 ;
  wire \block[2].MEM_AVG_n_1 ;
  wire \block[2].MEM_AVG_n_10 ;
  wire \block[2].MEM_AVG_n_11 ;
  wire \block[2].MEM_AVG_n_12 ;
  wire \block[2].MEM_AVG_n_13 ;
  wire \block[2].MEM_AVG_n_14 ;
  wire \block[2].MEM_AVG_n_15 ;
  wire \block[2].MEM_AVG_n_2 ;
  wire \block[2].MEM_AVG_n_3 ;
  wire \block[2].MEM_AVG_n_4 ;
  wire \block[2].MEM_AVG_n_5 ;
  wire \block[2].MEM_AVG_n_6 ;
  wire \block[2].MEM_AVG_n_7 ;
  wire \block[2].MEM_AVG_n_8 ;
  wire \block[2].MEM_AVG_n_9 ;
  wire \block[2].min_max[0].MIN_MAX_n_0 ;
  wire \block[2].min_max[0].MIN_MAX_n_1 ;
  wire \block[2].min_max[0].MIN_MAX_n_10 ;
  wire \block[2].min_max[0].MIN_MAX_n_11 ;
  wire \block[2].min_max[0].MIN_MAX_n_12 ;
  wire \block[2].min_max[0].MIN_MAX_n_13 ;
  wire \block[2].min_max[0].MIN_MAX_n_14 ;
  wire \block[2].min_max[0].MIN_MAX_n_15 ;
  wire \block[2].min_max[0].MIN_MAX_n_16 ;
  wire \block[2].min_max[0].MIN_MAX_n_17 ;
  wire \block[2].min_max[0].MIN_MAX_n_18 ;
  wire \block[2].min_max[0].MIN_MAX_n_19 ;
  wire \block[2].min_max[0].MIN_MAX_n_2 ;
  wire \block[2].min_max[0].MIN_MAX_n_20 ;
  wire \block[2].min_max[0].MIN_MAX_n_21 ;
  wire \block[2].min_max[0].MIN_MAX_n_22 ;
  wire \block[2].min_max[0].MIN_MAX_n_23 ;
  wire \block[2].min_max[0].MIN_MAX_n_24 ;
  wire \block[2].min_max[0].MIN_MAX_n_25 ;
  wire \block[2].min_max[0].MIN_MAX_n_3 ;
  wire \block[2].min_max[0].MIN_MAX_n_4 ;
  wire \block[2].min_max[0].MIN_MAX_n_5 ;
  wire \block[2].min_max[0].MIN_MAX_n_6 ;
  wire \block[2].min_max[0].MIN_MAX_n_7 ;
  wire \block[2].min_max[0].MIN_MAX_n_8 ;
  wire \block[2].min_max[0].MIN_MAX_n_9 ;
  wire \block[2].w_avg_valid ;
  wire \block[3].AVG_n_0 ;
  wire \block[3].AVG_n_10 ;
  wire \block[3].AVG_n_11 ;
  wire \block[3].AVG_n_12 ;
  wire \block[3].AVG_n_13 ;
  wire \block[3].AVG_n_14 ;
  wire \block[3].AVG_n_15 ;
  wire \block[3].AVG_n_16 ;
  wire \block[3].AVG_n_17 ;
  wire \block[3].AVG_n_18 ;
  wire \block[3].AVG_n_19 ;
  wire \block[3].AVG_n_2 ;
  wire \block[3].AVG_n_20 ;
  wire \block[3].AVG_n_21 ;
  wire \block[3].AVG_n_22 ;
  wire \block[3].AVG_n_3 ;
  wire \block[3].AVG_n_4 ;
  wire \block[3].AVG_n_5 ;
  wire \block[3].AVG_n_6 ;
  wire \block[3].AVG_n_7 ;
  wire \block[3].AVG_n_8 ;
  wire \block[3].AVG_n_9 ;
  wire \block[3].MEM_AVG_n_0 ;
  wire \block[3].MEM_AVG_n_1 ;
  wire \block[3].MEM_AVG_n_10 ;
  wire \block[3].MEM_AVG_n_11 ;
  wire \block[3].MEM_AVG_n_12 ;
  wire \block[3].MEM_AVG_n_13 ;
  wire \block[3].MEM_AVG_n_14 ;
  wire \block[3].MEM_AVG_n_15 ;
  wire \block[3].MEM_AVG_n_2 ;
  wire \block[3].MEM_AVG_n_3 ;
  wire \block[3].MEM_AVG_n_4 ;
  wire \block[3].MEM_AVG_n_5 ;
  wire \block[3].MEM_AVG_n_6 ;
  wire \block[3].MEM_AVG_n_7 ;
  wire \block[3].MEM_AVG_n_8 ;
  wire \block[3].MEM_AVG_n_9 ;
  wire \block[3].min_max[0].MIN_MAX_n_0 ;
  wire \block[3].min_max[0].MIN_MAX_n_1 ;
  wire \block[3].min_max[0].MIN_MAX_n_10 ;
  wire \block[3].min_max[0].MIN_MAX_n_11 ;
  wire \block[3].min_max[0].MIN_MAX_n_12 ;
  wire \block[3].min_max[0].MIN_MAX_n_13 ;
  wire \block[3].min_max[0].MIN_MAX_n_14 ;
  wire \block[3].min_max[0].MIN_MAX_n_15 ;
  wire \block[3].min_max[0].MIN_MAX_n_16 ;
  wire \block[3].min_max[0].MIN_MAX_n_17 ;
  wire \block[3].min_max[0].MIN_MAX_n_18 ;
  wire \block[3].min_max[0].MIN_MAX_n_19 ;
  wire \block[3].min_max[0].MIN_MAX_n_2 ;
  wire \block[3].min_max[0].MIN_MAX_n_20 ;
  wire \block[3].min_max[0].MIN_MAX_n_21 ;
  wire \block[3].min_max[0].MIN_MAX_n_22 ;
  wire \block[3].min_max[0].MIN_MAX_n_23 ;
  wire \block[3].min_max[0].MIN_MAX_n_24 ;
  wire \block[3].min_max[0].MIN_MAX_n_25 ;
  wire \block[3].min_max[0].MIN_MAX_n_26 ;
  wire \block[3].min_max[0].MIN_MAX_n_3 ;
  wire \block[3].min_max[0].MIN_MAX_n_4 ;
  wire \block[3].min_max[0].MIN_MAX_n_5 ;
  wire \block[3].min_max[0].MIN_MAX_n_6 ;
  wire \block[3].min_max[0].MIN_MAX_n_7 ;
  wire \block[3].min_max[0].MIN_MAX_n_8 ;
  wire \block[3].min_max[0].MIN_MAX_n_9 ;
  wire \block[3].w_avg_valid ;
  wire cnt;
  wire [15:1]cnt0;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[15]_i_1_n_0 ;
  wire \cnt[15]_i_4_n_0 ;
  wire \cnt[15]_i_7_n_0 ;
  wire \cnt[15]_i_8_n_0 ;
  wire \cnt[15]_i_9_n_0 ;
  wire \cnt_reg[12]_i_1_n_0 ;
  wire \cnt_reg[12]_i_1_n_1 ;
  wire \cnt_reg[12]_i_1_n_2 ;
  wire \cnt_reg[12]_i_1_n_3 ;
  wire \cnt_reg[15]_i_3_n_2 ;
  wire \cnt_reg[15]_i_3_n_3 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_1 ;
  wire \cnt_reg[4]_i_1_n_2 ;
  wire \cnt_reg[4]_i_1_n_3 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_1 ;
  wire \cnt_reg[8]_i_1_n_2 ;
  wire \cnt_reg[8]_i_1_n_3 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[10] ;
  wire \cnt_reg_n_0_[11] ;
  wire \cnt_reg_n_0_[12] ;
  wire \cnt_reg_n_0_[13] ;
  wire \cnt_reg_n_0_[14] ;
  wire \cnt_reg_n_0_[15] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[8] ;
  wire \cnt_reg_n_0_[9] ;
  wire [55:0]data1;
  wire [55:0]data2;
  wire [55:0]data3;
  wire i_clk;
  wire i_resetn;
  wire i_valid;
  wire [25:0]i_wr_data;
  wire [15:0]o_avg_data;
  wire [25:0]o_rd_data;
  wire o_valid;
  wire [0:0]p_1_out;
  wire [0:0]q_last;
  wire q_last_2;
  wire [3:0]s_avg_ready;
  wire [4:0]s_axil_araddr;
  wire s_axil_arready_reg;
  wire s_axil_arvalid;
  wire [23:0]s_axil_rdata;
  wire s_axil_rready;
  wire s_axil_rvalid;
  wire [3:0]s_min_max_ready;
  wire [15:0]s_tdata;
  wire s_tlast;
  wire s_tvalid;
  wire sel;
  wire w_last;
  wire [3:2]\NLW_cnt_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_reg[15]_i_3_O_UNCONNECTED ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_proc_reg_map REG_MAP
       (.Q(s_min_max_ready),
        .i_clk(i_clk),
        .i_resetn(i_resetn),
        .\o_mem_ready_avg_reg[3]_0 (s_avg_ready),
        .o_rd_data({data3[15:0],data3[55:48]}),
        .\q_rd_data_reg[15]_0 ({data2[15:0],data2[55:48]}),
        .\q_rd_data_reg[15]_1 ({data1[15:0],data1[55:48]}),
        .\q_rd_data_reg[15]_2 ({o_rd_data[25:10],o_rd_data[7:0]}),
        .\q_rd_data_reg[15]_3 ({\block[3].MEM_AVG_n_0 ,\block[3].MEM_AVG_n_1 ,\block[3].MEM_AVG_n_2 ,\block[3].MEM_AVG_n_3 ,\block[3].MEM_AVG_n_4 ,\block[3].MEM_AVG_n_5 ,\block[3].MEM_AVG_n_6 ,\block[3].MEM_AVG_n_7 ,\block[3].MEM_AVG_n_8 ,\block[3].MEM_AVG_n_9 ,\block[3].MEM_AVG_n_10 ,\block[3].MEM_AVG_n_11 ,\block[3].MEM_AVG_n_12 ,\block[3].MEM_AVG_n_13 ,\block[3].MEM_AVG_n_14 ,\block[3].MEM_AVG_n_15 }),
        .\q_rd_data_reg[15]_4 ({\block[2].MEM_AVG_n_0 ,\block[2].MEM_AVG_n_1 ,\block[2].MEM_AVG_n_2 ,\block[2].MEM_AVG_n_3 ,\block[2].MEM_AVG_n_4 ,\block[2].MEM_AVG_n_5 ,\block[2].MEM_AVG_n_6 ,\block[2].MEM_AVG_n_7 ,\block[2].MEM_AVG_n_8 ,\block[2].MEM_AVG_n_9 ,\block[2].MEM_AVG_n_10 ,\block[2].MEM_AVG_n_11 ,\block[2].MEM_AVG_n_12 ,\block[2].MEM_AVG_n_13 ,\block[2].MEM_AVG_n_14 ,\block[2].MEM_AVG_n_15 }),
        .\q_rd_data_reg[15]_5 ({\block[1].MEM_AVG_n_0 ,\block[1].MEM_AVG_n_1 ,\block[1].MEM_AVG_n_2 ,\block[1].MEM_AVG_n_3 ,\block[1].MEM_AVG_n_4 ,\block[1].MEM_AVG_n_5 ,\block[1].MEM_AVG_n_6 ,\block[1].MEM_AVG_n_7 ,\block[1].MEM_AVG_n_8 ,\block[1].MEM_AVG_n_9 ,\block[1].MEM_AVG_n_10 ,\block[1].MEM_AVG_n_11 ,\block[1].MEM_AVG_n_12 ,\block[1].MEM_AVG_n_13 ,\block[1].MEM_AVG_n_14 ,\block[1].MEM_AVG_n_15 }),
        .\q_rd_data_reg[15]_6 ({\block[0].MEM_AVG_n_0 ,\block[0].MEM_AVG_n_1 ,\block[0].MEM_AVG_n_2 ,\block[0].MEM_AVG_n_3 ,\block[0].MEM_AVG_n_4 ,\block[0].MEM_AVG_n_5 ,\block[0].MEM_AVG_n_6 ,\block[0].MEM_AVG_n_7 ,\block[0].MEM_AVG_n_8 ,\block[0].MEM_AVG_n_9 ,\block[0].MEM_AVG_n_10 ,\block[0].MEM_AVG_n_11 ,\block[0].MEM_AVG_n_12 ,\block[0].MEM_AVG_n_13 ,\block[0].MEM_AVG_n_14 ,\block[0].MEM_AVG_n_15 }),
        .s_axil_araddr(s_axil_araddr),
        .s_axil_arready_reg_0(s_axil_arready_reg),
        .s_axil_arvalid(s_axil_arvalid),
        .s_axil_rdata(s_axil_rdata),
        .s_axil_rready(s_axil_rready),
        .s_axil_rvalid(s_axil_rvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_avg \block[0].AVG 
       (.Q(o_avg_data),
        .\block[0].w_avg_valid (\block[0].w_avg_valid ),
        .i_clk(i_clk),
        .i_div_s_rst_p(\block[3].AVG_n_0 ),
        .i_valid(i_valid),
        .\q_data_cnt_reg[0]_0 (\cnt_reg_n_0_[1] ),
        .\q_data_cnt_reg[0]_1 (\cnt_reg_n_0_[0] ),
        .\q_data_cnt_reg[0]_2 (\block[3].AVG_n_3 ),
        .\q_data_cnt_reg[0]_3 (\block[3].AVG_n_4 ),
        .\q_data_cnt_reg[0]_4 (\block[1].AVG_n_2 ),
        .\q_data_cnt_reg[0]_5 (\block[3].min_max[0].MIN_MAX_n_2 ),
        .q_last(q_last),
        .s_tdata(s_tdata));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mem__parameterized0 \block[0].MEM_AVG 
       (.E(\block[0].w_avg_valid ),
        .Q({\block[0].MEM_AVG_n_0 ,\block[0].MEM_AVG_n_1 ,\block[0].MEM_AVG_n_2 ,\block[0].MEM_AVG_n_3 ,\block[0].MEM_AVG_n_4 ,\block[0].MEM_AVG_n_5 ,\block[0].MEM_AVG_n_6 ,\block[0].MEM_AVG_n_7 ,\block[0].MEM_AVG_n_8 ,\block[0].MEM_AVG_n_9 ,\block[0].MEM_AVG_n_10 ,\block[0].MEM_AVG_n_11 ,\block[0].MEM_AVG_n_12 ,\block[0].MEM_AVG_n_13 ,\block[0].MEM_AVG_n_14 ,\block[0].MEM_AVG_n_15 }),
        .i_clk(i_clk),
        .o_avg_data(o_avg_data),
        .\q_r_addr_reg[4]_0 (s_avg_ready[0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mem \block[0].min_max[0].MEM_MIN_MAX 
       (.E(o_valid),
        .Q(s_min_max_ready[0]),
        .i_clk(i_clk),
        .i_wr_data({i_wr_data[25:10],i_wr_data[7:0]}),
        .\o_rd_data_reg[25]_0 ({o_rd_data[25:10],o_rd_data[7:0]}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_max_min \block[0].min_max[0].MIN_MAX 
       (.E(o_valid),
        .SR(w_last),
        .i_clk(i_clk),
        .i_wr_data({i_wr_data[25:10],i_wr_data[7:0]}),
        .\q_data_reg[15]_0 (i_valid),
        .q_last(q_last),
        .q_last_2(q_last_2),
        .q_last_reg_0(\block[0].min_max[0].MIN_MAX_n_0 ),
        .q_valid_reg_0(\block[3].min_max[0].MIN_MAX_n_1 ),
        .q_valid_reg_1(\block[3].AVG_n_3 ),
        .q_valid_reg_2(\cnt_reg_n_0_[0] ),
        .q_valid_reg_3(\cnt_reg_n_0_[1] ),
        .s_tdata(s_tdata));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_avg_0 \block[1].AVG 
       (.Q({\block[1].AVG_n_3 ,\block[1].AVG_n_4 ,\block[1].AVG_n_5 ,\block[1].AVG_n_6 ,\block[1].AVG_n_7 ,\block[1].AVG_n_8 ,\block[1].AVG_n_9 ,\block[1].AVG_n_10 ,\block[1].AVG_n_11 ,\block[1].AVG_n_12 ,\block[1].AVG_n_13 ,\block[1].AVG_n_14 ,\block[1].AVG_n_15 ,\block[1].AVG_n_16 ,\block[1].AVG_n_17 ,\block[1].AVG_n_18 }),
        .\block[1].w_avg_valid (\block[1].w_avg_valid ),
        .i_clk(i_clk),
        .i_div_s_rst_p(\block[3].AVG_n_0 ),
        .\q_data_cnt_reg[0]_0 (\cnt_reg_n_0_[1] ),
        .\q_data_cnt_reg[0]_1 (\cnt_reg_n_0_[0] ),
        .\q_data_cnt_reg[0]_2 (\block[3].AVG_n_3 ),
        .\q_data_cnt_reg[0]_3 (\block[3].AVG_n_4 ),
        .\q_data_cnt_reg[0]_4 (\block[3].min_max[0].MIN_MAX_n_2 ),
        .\q_data_cnt_reg[0]_5 (\cnt_reg_n_0_[4] ),
        .q_div_vld_reg_0(\block[0].min_max[0].MIN_MAX_n_0 ),
        .s_tdata(s_tdata),
        .s_tvalid(s_tvalid),
        .s_tvalid_0(\block[1].AVG_n_2 ),
        .sel(sel));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mem__parameterized0_1 \block[1].MEM_AVG 
       (.E(\block[1].w_avg_valid ),
        .Q({\block[1].MEM_AVG_n_0 ,\block[1].MEM_AVG_n_1 ,\block[1].MEM_AVG_n_2 ,\block[1].MEM_AVG_n_3 ,\block[1].MEM_AVG_n_4 ,\block[1].MEM_AVG_n_5 ,\block[1].MEM_AVG_n_6 ,\block[1].MEM_AVG_n_7 ,\block[1].MEM_AVG_n_8 ,\block[1].MEM_AVG_n_9 ,\block[1].MEM_AVG_n_10 ,\block[1].MEM_AVG_n_11 ,\block[1].MEM_AVG_n_12 ,\block[1].MEM_AVG_n_13 ,\block[1].MEM_AVG_n_14 ,\block[1].MEM_AVG_n_15 }),
        .i_clk(i_clk),
        .o_avg_data({\block[1].AVG_n_3 ,\block[1].AVG_n_4 ,\block[1].AVG_n_5 ,\block[1].AVG_n_6 ,\block[1].AVG_n_7 ,\block[1].AVG_n_8 ,\block[1].AVG_n_9 ,\block[1].AVG_n_10 ,\block[1].AVG_n_11 ,\block[1].AVG_n_12 ,\block[1].AVG_n_13 ,\block[1].AVG_n_14 ,\block[1].AVG_n_15 ,\block[1].AVG_n_16 ,\block[1].AVG_n_17 ,\block[1].AVG_n_18 }),
        .\q_r_addr_reg[4]_0 (s_avg_ready[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mem_2 \block[1].min_max[0].MEM_MIN_MAX 
       (.Q({\block[1].min_max[0].MIN_MAX_n_10 ,\block[1].min_max[0].MIN_MAX_n_11 ,\block[1].min_max[0].MIN_MAX_n_12 ,\block[1].min_max[0].MIN_MAX_n_13 ,\block[1].min_max[0].MIN_MAX_n_14 ,\block[1].min_max[0].MIN_MAX_n_15 ,\block[1].min_max[0].MIN_MAX_n_16 ,\block[1].min_max[0].MIN_MAX_n_17 ,\block[1].min_max[0].MIN_MAX_n_18 ,\block[1].min_max[0].MIN_MAX_n_19 ,\block[1].min_max[0].MIN_MAX_n_20 ,\block[1].min_max[0].MIN_MAX_n_21 ,\block[1].min_max[0].MIN_MAX_n_22 ,\block[1].min_max[0].MIN_MAX_n_23 ,\block[1].min_max[0].MIN_MAX_n_24 ,\block[1].min_max[0].MIN_MAX_n_25 }),
        .i_clk(i_clk),
        .\o_rd_data_reg[25]_0 ({data1[15:0],data1[55:48]}),
        .\o_rd_data_reg[7]_0 ({\block[1].min_max[0].MIN_MAX_n_2 ,\block[1].min_max[0].MIN_MAX_n_3 ,\block[1].min_max[0].MIN_MAX_n_4 ,\block[1].min_max[0].MIN_MAX_n_5 ,\block[1].min_max[0].MIN_MAX_n_6 ,\block[1].min_max[0].MIN_MAX_n_7 ,\block[1].min_max[0].MIN_MAX_n_8 ,\block[1].min_max[0].MIN_MAX_n_9 }),
        .\q_r_addr_reg[4]_0 (s_min_max_ready[1]),
        .\q_wr_addr_reg[0]_0 (\block[1].min_max[0].MIN_MAX_n_1 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_max_min_3 \block[1].min_max[0].MIN_MAX 
       (.E(\block[1].min_max[0].MIN_MAX_n_0 ),
        .Q({\block[1].min_max[0].MIN_MAX_n_2 ,\block[1].min_max[0].MIN_MAX_n_3 ,\block[1].min_max[0].MIN_MAX_n_4 ,\block[1].min_max[0].MIN_MAX_n_5 ,\block[1].min_max[0].MIN_MAX_n_6 ,\block[1].min_max[0].MIN_MAX_n_7 ,\block[1].min_max[0].MIN_MAX_n_8 ,\block[1].min_max[0].MIN_MAX_n_9 }),
        .SR(w_last),
        .i_clk(i_clk),
        .\o_res_data_reg[15]_0 ({\block[1].min_max[0].MIN_MAX_n_10 ,\block[1].min_max[0].MIN_MAX_n_11 ,\block[1].min_max[0].MIN_MAX_n_12 ,\block[1].min_max[0].MIN_MAX_n_13 ,\block[1].min_max[0].MIN_MAX_n_14 ,\block[1].min_max[0].MIN_MAX_n_15 ,\block[1].min_max[0].MIN_MAX_n_16 ,\block[1].min_max[0].MIN_MAX_n_17 ,\block[1].min_max[0].MIN_MAX_n_18 ,\block[1].min_max[0].MIN_MAX_n_19 ,\block[1].min_max[0].MIN_MAX_n_20 ,\block[1].min_max[0].MIN_MAX_n_21 ,\block[1].min_max[0].MIN_MAX_n_22 ,\block[1].min_max[0].MIN_MAX_n_23 ,\block[1].min_max[0].MIN_MAX_n_24 ,\block[1].min_max[0].MIN_MAX_n_25 }),
        .o_valid_reg_0(\block[1].min_max[0].MIN_MAX_n_1 ),
        .\q_data_reg[15]_0 (sel),
        .q_valid_reg_0(\block[3].min_max[0].MIN_MAX_n_1 ),
        .q_valid_reg_1(\block[3].AVG_n_3 ),
        .q_valid_reg_2(\cnt_reg_n_0_[0] ),
        .q_valid_reg_3(\cnt_reg_n_0_[1] ),
        .s_tdata(s_tdata));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_avg_4 \block[2].AVG 
       (.E(\block[2].AVG_n_1 ),
        .Q({\block[2].AVG_n_2 ,\block[2].AVG_n_3 ,\block[2].AVG_n_4 ,\block[2].AVG_n_5 ,\block[2].AVG_n_6 ,\block[2].AVG_n_7 ,\block[2].AVG_n_8 ,\block[2].AVG_n_9 ,\block[2].AVG_n_10 ,\block[2].AVG_n_11 ,\block[2].AVG_n_12 ,\block[2].AVG_n_13 ,\block[2].AVG_n_14 ,\block[2].AVG_n_15 ,\block[2].AVG_n_16 ,\block[2].AVG_n_17 }),
        .\block[2].w_avg_valid (\block[2].w_avg_valid ),
        .i_clk(i_clk),
        .i_div_s_rst_p(\block[3].AVG_n_0 ),
        .q_last_2(q_last_2),
        .\q_sum_buf_reg[0]_0 (\cnt_reg_n_0_[6] ),
        .\q_sum_buf_reg[0]_1 (\cnt_reg_n_0_[5] ),
        .\q_sum_buf_reg[0]_2 (\cnt_reg_n_0_[8] ),
        .\q_sum_buf_reg[0]_3 (\cnt_reg_n_0_[7] ),
        .\q_sum_buf_reg[0]_4 (\block[3].AVG_n_3 ),
        .\q_sum_buf_reg[0]_5 (\cnt_reg_n_0_[4] ),
        .\q_sum_buf_reg[0]_6 (\cnt_reg_n_0_[1] ),
        .\q_sum_buf_reg[0]_7 (\cnt_reg_n_0_[0] ),
        .\q_sum_buf_reg[0]_8 (\cnt_reg_n_0_[2] ),
        .\q_sum_buf_reg[0]_9 (\cnt_reg_n_0_[3] ),
        .s_tdata(s_tdata),
        .s_tvalid(s_tvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mem__parameterized0_5 \block[2].MEM_AVG 
       (.E(\block[2].w_avg_valid ),
        .Q({\block[2].MEM_AVG_n_0 ,\block[2].MEM_AVG_n_1 ,\block[2].MEM_AVG_n_2 ,\block[2].MEM_AVG_n_3 ,\block[2].MEM_AVG_n_4 ,\block[2].MEM_AVG_n_5 ,\block[2].MEM_AVG_n_6 ,\block[2].MEM_AVG_n_7 ,\block[2].MEM_AVG_n_8 ,\block[2].MEM_AVG_n_9 ,\block[2].MEM_AVG_n_10 ,\block[2].MEM_AVG_n_11 ,\block[2].MEM_AVG_n_12 ,\block[2].MEM_AVG_n_13 ,\block[2].MEM_AVG_n_14 ,\block[2].MEM_AVG_n_15 }),
        .i_clk(i_clk),
        .o_avg_data({\block[2].AVG_n_2 ,\block[2].AVG_n_3 ,\block[2].AVG_n_4 ,\block[2].AVG_n_5 ,\block[2].AVG_n_6 ,\block[2].AVG_n_7 ,\block[2].AVG_n_8 ,\block[2].AVG_n_9 ,\block[2].AVG_n_10 ,\block[2].AVG_n_11 ,\block[2].AVG_n_12 ,\block[2].AVG_n_13 ,\block[2].AVG_n_14 ,\block[2].AVG_n_15 ,\block[2].AVG_n_16 ,\block[2].AVG_n_17 }),
        .\q_r_addr_reg[4]_0 (s_avg_ready[2]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mem_6 \block[2].min_max[0].MEM_MIN_MAX 
       (.Q({\block[2].min_max[0].MIN_MAX_n_10 ,\block[2].min_max[0].MIN_MAX_n_11 ,\block[2].min_max[0].MIN_MAX_n_12 ,\block[2].min_max[0].MIN_MAX_n_13 ,\block[2].min_max[0].MIN_MAX_n_14 ,\block[2].min_max[0].MIN_MAX_n_15 ,\block[2].min_max[0].MIN_MAX_n_16 ,\block[2].min_max[0].MIN_MAX_n_17 ,\block[2].min_max[0].MIN_MAX_n_18 ,\block[2].min_max[0].MIN_MAX_n_19 ,\block[2].min_max[0].MIN_MAX_n_20 ,\block[2].min_max[0].MIN_MAX_n_21 ,\block[2].min_max[0].MIN_MAX_n_22 ,\block[2].min_max[0].MIN_MAX_n_23 ,\block[2].min_max[0].MIN_MAX_n_24 ,\block[2].min_max[0].MIN_MAX_n_25 }),
        .i_clk(i_clk),
        .\o_rd_data_reg[25]_0 ({data2[15:0],data2[55:48]}),
        .\o_rd_data_reg[7]_0 ({\block[2].min_max[0].MIN_MAX_n_2 ,\block[2].min_max[0].MIN_MAX_n_3 ,\block[2].min_max[0].MIN_MAX_n_4 ,\block[2].min_max[0].MIN_MAX_n_5 ,\block[2].min_max[0].MIN_MAX_n_6 ,\block[2].min_max[0].MIN_MAX_n_7 ,\block[2].min_max[0].MIN_MAX_n_8 ,\block[2].min_max[0].MIN_MAX_n_9 }),
        .\q_r_addr_reg[4]_0 (s_min_max_ready[2]),
        .\q_wr_addr_reg[0]_0 (\block[2].min_max[0].MIN_MAX_n_1 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_max_min_7 \block[2].min_max[0].MIN_MAX 
       (.E(\block[2].min_max[0].MIN_MAX_n_0 ),
        .Q({\block[2].min_max[0].MIN_MAX_n_2 ,\block[2].min_max[0].MIN_MAX_n_3 ,\block[2].min_max[0].MIN_MAX_n_4 ,\block[2].min_max[0].MIN_MAX_n_5 ,\block[2].min_max[0].MIN_MAX_n_6 ,\block[2].min_max[0].MIN_MAX_n_7 ,\block[2].min_max[0].MIN_MAX_n_8 ,\block[2].min_max[0].MIN_MAX_n_9 }),
        .i_clk(i_clk),
        .\o_res_data_reg[15]_0 ({\block[2].min_max[0].MIN_MAX_n_10 ,\block[2].min_max[0].MIN_MAX_n_11 ,\block[2].min_max[0].MIN_MAX_n_12 ,\block[2].min_max[0].MIN_MAX_n_13 ,\block[2].min_max[0].MIN_MAX_n_14 ,\block[2].min_max[0].MIN_MAX_n_15 ,\block[2].min_max[0].MIN_MAX_n_16 ,\block[2].min_max[0].MIN_MAX_n_17 ,\block[2].min_max[0].MIN_MAX_n_18 ,\block[2].min_max[0].MIN_MAX_n_19 ,\block[2].min_max[0].MIN_MAX_n_20 ,\block[2].min_max[0].MIN_MAX_n_21 ,\block[2].min_max[0].MIN_MAX_n_22 ,\block[2].min_max[0].MIN_MAX_n_23 ,\block[2].min_max[0].MIN_MAX_n_24 ,\block[2].min_max[0].MIN_MAX_n_25 }),
        .o_valid_reg_0(\block[2].min_max[0].MIN_MAX_n_1 ),
        .\q_data_reg[15]_0 (\block[2].AVG_n_1 ),
        .q_valid_reg_0(\block[3].AVG_n_4 ),
        .q_valid_reg_1(\cnt_reg_n_0_[0] ),
        .q_valid_reg_2(\cnt_reg_n_0_[1] ),
        .q_valid_reg_3(\cnt_reg_n_0_[4] ),
        .q_valid_reg_4(\block[3].min_max[0].MIN_MAX_n_2 ),
        .q_valid_reg_5(\cnt_reg_n_0_[9] ),
        .q_valid_reg_6(\cnt_reg_n_0_[10] ),
        .q_valid_reg_7(\cnt_reg_n_0_[11] ),
        .q_valid_reg_8(\block[3].AVG_n_6 ),
        .s_tdata(s_tdata),
        .s_tvalid(s_tvalid),
        .w_last_reg_0(\block[1].min_max[0].MIN_MAX_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_avg_8 \block[3].AVG 
       (.E(\block[3].AVG_n_2 ),
        .Q({\block[3].AVG_n_7 ,\block[3].AVG_n_8 ,\block[3].AVG_n_9 ,\block[3].AVG_n_10 ,\block[3].AVG_n_11 ,\block[3].AVG_n_12 ,\block[3].AVG_n_13 ,\block[3].AVG_n_14 ,\block[3].AVG_n_15 ,\block[3].AVG_n_16 ,\block[3].AVG_n_17 ,\block[3].AVG_n_18 ,\block[3].AVG_n_19 ,\block[3].AVG_n_20 ,\block[3].AVG_n_21 ,\block[3].AVG_n_22 }),
        .S(\cnt_reg_n_0_[12] ),
        .SR(w_last),
        .\block[3].w_avg_valid (\block[3].w_avg_valid ),
        .\cnt_reg[0] (\block[3].AVG_n_5 ),
        .\cnt_reg[12] (\block[3].AVG_n_6 ),
        .\cnt_reg[3] (\block[3].AVG_n_4 ),
        .\cnt_reg[9] (\block[3].AVG_n_3 ),
        .i_clk(i_clk),
        .i_div_s_rst_p(\block[3].AVG_n_0 ),
        .i_resetn(i_resetn),
        .\q_sum_buf_reg[0]_0 (\cnt_reg_n_0_[4] ),
        .\q_sum_buf_reg[0]_1 (\block[3].min_max[0].MIN_MAX_n_2 ),
        .\q_sum_buf_reg[0]_2 (\cnt_reg_n_0_[3] ),
        .\q_sum_buf_reg[0]_3 (\cnt_reg_n_0_[2] ),
        .\q_sum_buf_reg[0]_4 (\cnt_reg_n_0_[0] ),
        .\q_sum_buf_reg[0]_5 (\cnt_reg_n_0_[1] ),
        .\q_sum_buf_reg[0]_6 (\cnt_reg_n_0_[9] ),
        .\q_sum_buf_reg[0]_7 (\cnt_reg_n_0_[10] ),
        .\q_sum_buf_reg[0]_8 (\cnt_reg_n_0_[11] ),
        .q_valid_reg({\cnt_reg_n_0_[15] ,\cnt_reg_n_0_[14] ,\cnt_reg_n_0_[13] }),
        .s_tdata(s_tdata),
        .s_tvalid(s_tvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mem__parameterized0_9 \block[3].MEM_AVG 
       (.E(\block[3].w_avg_valid ),
        .Q({\block[3].MEM_AVG_n_0 ,\block[3].MEM_AVG_n_1 ,\block[3].MEM_AVG_n_2 ,\block[3].MEM_AVG_n_3 ,\block[3].MEM_AVG_n_4 ,\block[3].MEM_AVG_n_5 ,\block[3].MEM_AVG_n_6 ,\block[3].MEM_AVG_n_7 ,\block[3].MEM_AVG_n_8 ,\block[3].MEM_AVG_n_9 ,\block[3].MEM_AVG_n_10 ,\block[3].MEM_AVG_n_11 ,\block[3].MEM_AVG_n_12 ,\block[3].MEM_AVG_n_13 ,\block[3].MEM_AVG_n_14 ,\block[3].MEM_AVG_n_15 }),
        .i_clk(i_clk),
        .o_avg_data({\block[3].AVG_n_7 ,\block[3].AVG_n_8 ,\block[3].AVG_n_9 ,\block[3].AVG_n_10 ,\block[3].AVG_n_11 ,\block[3].AVG_n_12 ,\block[3].AVG_n_13 ,\block[3].AVG_n_14 ,\block[3].AVG_n_15 ,\block[3].AVG_n_16 ,\block[3].AVG_n_17 ,\block[3].AVG_n_18 ,\block[3].AVG_n_19 ,\block[3].AVG_n_20 ,\block[3].AVG_n_21 ,\block[3].AVG_n_22 }),
        .\q_r_addr_reg[4]_0 (s_avg_ready[3]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mem_10 \block[3].min_max[0].MEM_MIN_MAX 
       (.Q({\block[3].min_max[0].MIN_MAX_n_11 ,\block[3].min_max[0].MIN_MAX_n_12 ,\block[3].min_max[0].MIN_MAX_n_13 ,\block[3].min_max[0].MIN_MAX_n_14 ,\block[3].min_max[0].MIN_MAX_n_15 ,\block[3].min_max[0].MIN_MAX_n_16 ,\block[3].min_max[0].MIN_MAX_n_17 ,\block[3].min_max[0].MIN_MAX_n_18 ,\block[3].min_max[0].MIN_MAX_n_19 ,\block[3].min_max[0].MIN_MAX_n_20 ,\block[3].min_max[0].MIN_MAX_n_21 ,\block[3].min_max[0].MIN_MAX_n_22 ,\block[3].min_max[0].MIN_MAX_n_23 ,\block[3].min_max[0].MIN_MAX_n_24 ,\block[3].min_max[0].MIN_MAX_n_25 ,\block[3].min_max[0].MIN_MAX_n_26 }),
        .i_clk(i_clk),
        .\o_rd_data_reg[25]_0 ({data3[15:0],data3[55:48]}),
        .\o_rd_data_reg[7]_0 ({\block[3].min_max[0].MIN_MAX_n_3 ,\block[3].min_max[0].MIN_MAX_n_4 ,\block[3].min_max[0].MIN_MAX_n_5 ,\block[3].min_max[0].MIN_MAX_n_6 ,\block[3].min_max[0].MIN_MAX_n_7 ,\block[3].min_max[0].MIN_MAX_n_8 ,\block[3].min_max[0].MIN_MAX_n_9 ,\block[3].min_max[0].MIN_MAX_n_10 }),
        .\q_r_addr_reg[4]_0 (s_min_max_ready[3]),
        .\q_wr_addr_reg[0]_0 (\block[3].min_max[0].MIN_MAX_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_max_min_11 \block[3].min_max[0].MIN_MAX 
       (.E(\block[2].min_max[0].MIN_MAX_n_0 ),
        .Q({\block[3].min_max[0].MIN_MAX_n_3 ,\block[3].min_max[0].MIN_MAX_n_4 ,\block[3].min_max[0].MIN_MAX_n_5 ,\block[3].min_max[0].MIN_MAX_n_6 ,\block[3].min_max[0].MIN_MAX_n_7 ,\block[3].min_max[0].MIN_MAX_n_8 ,\block[3].min_max[0].MIN_MAX_n_9 ,\block[3].min_max[0].MIN_MAX_n_10 }),
        .\cnt_reg[3] (\block[3].min_max[0].MIN_MAX_n_1 ),
        .\cnt_reg[6] (\block[3].min_max[0].MIN_MAX_n_2 ),
        .i_clk(i_clk),
        .\o_res_data_reg[15]_0 ({\block[3].min_max[0].MIN_MAX_n_11 ,\block[3].min_max[0].MIN_MAX_n_12 ,\block[3].min_max[0].MIN_MAX_n_13 ,\block[3].min_max[0].MIN_MAX_n_14 ,\block[3].min_max[0].MIN_MAX_n_15 ,\block[3].min_max[0].MIN_MAX_n_16 ,\block[3].min_max[0].MIN_MAX_n_17 ,\block[3].min_max[0].MIN_MAX_n_18 ,\block[3].min_max[0].MIN_MAX_n_19 ,\block[3].min_max[0].MIN_MAX_n_20 ,\block[3].min_max[0].MIN_MAX_n_21 ,\block[3].min_max[0].MIN_MAX_n_22 ,\block[3].min_max[0].MIN_MAX_n_23 ,\block[3].min_max[0].MIN_MAX_n_24 ,\block[3].min_max[0].MIN_MAX_n_25 ,\block[3].min_max[0].MIN_MAX_n_26 }),
        .o_valid_reg_0(\block[3].min_max[0].MIN_MAX_n_0 ),
        .\q_data_reg[15]_0 (\block[3].AVG_n_2 ),
        .\q_sum_buf_reg[0] (\cnt_reg_n_0_[6] ),
        .\q_sum_buf_reg[0]_0 (\cnt_reg_n_0_[5] ),
        .\q_sum_buf_reg[0]_1 (\cnt_reg_n_0_[8] ),
        .\q_sum_buf_reg[0]_2 (\cnt_reg_n_0_[7] ),
        .q_valid_reg_0(\cnt_reg_n_0_[3] ),
        .q_valid_reg_1(\cnt_reg_n_0_[2] ),
        .q_valid_reg_2(\cnt_reg_n_0_[4] ),
        .q_valid_reg_3(\cnt_reg_n_0_[0] ),
        .q_valid_reg_4(\cnt_reg_n_0_[1] ),
        .q_valid_reg_5(\block[3].AVG_n_3 ),
        .s_tdata(s_tdata),
        .s_tvalid(s_tvalid));
  LUT6 #(
    .INIT(64'h0000000055555554)) 
    \cnt[0]_i_1 
       (.I0(s_tlast),
        .I1(\cnt[15]_i_4_n_0 ),
        .I2(\block[3].AVG_n_5 ),
        .I3(\block[3].AVG_n_6 ),
        .I4(\cnt[15]_i_7_n_0 ),
        .I5(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888888888888A)) 
    \cnt[15]_i_1 
       (.I0(cnt),
        .I1(s_tlast),
        .I2(\cnt[15]_i_4_n_0 ),
        .I3(\block[3].AVG_n_5 ),
        .I4(\block[3].AVG_n_6 ),
        .I5(\cnt[15]_i_7_n_0 ),
        .O(\cnt[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEFE)) 
    \cnt[15]_i_2 
       (.I0(s_tvalid),
        .I1(s_tlast),
        .I2(\cnt[15]_i_8_n_0 ),
        .I3(\cnt[15]_i_9_n_0 ),
        .I4(\block[3].AVG_n_6 ),
        .I5(\cnt[15]_i_4_n_0 ),
        .O(cnt));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[15]_i_4 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[5] ),
        .I2(\cnt_reg_n_0_[6] ),
        .I3(\cnt_reg_n_0_[7] ),
        .O(\cnt[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cnt[15]_i_7 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[10] ),
        .I3(\cnt_reg_n_0_[11] ),
        .I4(\cnt_reg_n_0_[9] ),
        .I5(\cnt_reg_n_0_[8] ),
        .O(\cnt[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \cnt[15]_i_8 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .O(\cnt[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[15]_i_9 
       (.I0(\cnt_reg_n_0_[8] ),
        .I1(\cnt_reg_n_0_[9] ),
        .I2(\cnt_reg_n_0_[11] ),
        .I3(\cnt_reg_n_0_[10] ),
        .O(\cnt[15]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(i_clk),
        .CE(cnt),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(i_clk),
        .CE(cnt),
        .D(cnt0[10]),
        .Q(\cnt_reg_n_0_[10] ),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(i_clk),
        .CE(cnt),
        .D(cnt0[11]),
        .Q(\cnt_reg_n_0_[11] ),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(i_clk),
        .CE(cnt),
        .D(cnt0[12]),
        .Q(\cnt_reg_n_0_[12] ),
        .R(\cnt[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO({\cnt_reg[12]_i_1_n_0 ,\cnt_reg[12]_i_1_n_1 ,\cnt_reg[12]_i_1_n_2 ,\cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[12:9]),
        .S({\cnt_reg_n_0_[12] ,\cnt_reg_n_0_[11] ,\cnt_reg_n_0_[10] ,\cnt_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(i_clk),
        .CE(cnt),
        .D(cnt0[13]),
        .Q(\cnt_reg_n_0_[13] ),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(i_clk),
        .CE(cnt),
        .D(cnt0[14]),
        .Q(\cnt_reg_n_0_[14] ),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(i_clk),
        .CE(cnt),
        .D(cnt0[15]),
        .Q(\cnt_reg_n_0_[15] ),
        .R(\cnt[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[15]_i_3 
       (.CI(\cnt_reg[12]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[15]_i_3_CO_UNCONNECTED [3:2],\cnt_reg[15]_i_3_n_2 ,\cnt_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[15]_i_3_O_UNCONNECTED [3],cnt0[15:13]}),
        .S({1'b0,\cnt_reg_n_0_[15] ,\cnt_reg_n_0_[14] ,\cnt_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(i_clk),
        .CE(cnt),
        .D(cnt0[1]),
        .Q(\cnt_reg_n_0_[1] ),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(i_clk),
        .CE(cnt),
        .D(cnt0[2]),
        .Q(\cnt_reg_n_0_[2] ),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(i_clk),
        .CE(cnt),
        .D(cnt0[3]),
        .Q(\cnt_reg_n_0_[3] ),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(i_clk),
        .CE(cnt),
        .D(cnt0[4]),
        .Q(\cnt_reg_n_0_[4] ),
        .R(\cnt[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\cnt_reg[4]_i_1_n_0 ,\cnt_reg[4]_i_1_n_1 ,\cnt_reg[4]_i_1_n_2 ,\cnt_reg[4]_i_1_n_3 }),
        .CYINIT(\cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[4:1]),
        .S({\cnt_reg_n_0_[4] ,\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(i_clk),
        .CE(cnt),
        .D(cnt0[5]),
        .Q(\cnt_reg_n_0_[5] ),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(i_clk),
        .CE(cnt),
        .D(cnt0[6]),
        .Q(\cnt_reg_n_0_[6] ),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(i_clk),
        .CE(cnt),
        .D(cnt0[7]),
        .Q(\cnt_reg_n_0_[7] ),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(i_clk),
        .CE(cnt),
        .D(cnt0[8]),
        .Q(\cnt_reg_n_0_[8] ),
        .R(\cnt[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\cnt_reg[8]_i_1_n_1 ,\cnt_reg[8]_i_1_n_2 ,\cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[8:5]),
        .S({\cnt_reg_n_0_[8] ,\cnt_reg_n_0_[7] ,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(i_clk),
        .CE(cnt),
        .D(cnt0[9]),
        .Q(\cnt_reg_n_0_[9] ),
        .R(\cnt[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q_last[0]_i_1 
       (.I0(s_tlast),
        .I1(s_tvalid),
        .O(p_1_out));
  FDRE #(
    .INIT(1'b0)) 
    \q_last_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(p_1_out),
        .Q(q_last),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "procedural_0,procedural,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "procedural,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_clk,
    i_resetn,
    s_tdata,
    s_tvalid,
    s_tlast,
    s_axil_awready,
    s_axil_awvalid,
    s_axil_awaddr,
    s_axil_awprot,
    s_axil_wready,
    s_axil_wvalid,
    s_axil_wdata,
    s_axil_wstrb,
    s_axil_bready,
    s_axil_bvalid,
    s_axil_bresp,
    s_axil_arready,
    s_axil_arvalid,
    s_axil_araddr,
    s_axil_arprot,
    s_axil_rready,
    s_axil_rvalid,
    s_axil_rdata,
    s_axil_rresp);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_resetn, ASSOCIATED_BUSIF s:s_axil, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input i_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_resetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TDATA" *) input [15:0]s_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TVALID" *) input s_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWREADY" *) output s_axil_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWVALID" *) input s_axil_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWADDR" *) input [7:0]s_axil_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWPROT" *) input [2:0]s_axil_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WREADY" *) output s_axil_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WVALID" *) input s_axil_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WDATA" *) input [63:0]s_axil_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WSTRB" *) input [7:0]s_axil_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BREADY" *) input s_axil_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BVALID" *) output s_axil_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BRESP" *) output [1:0]s_axil_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARREADY" *) output s_axil_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARVALID" *) input s_axil_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARADDR" *) input [7:0]s_axil_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARPROT" *) input [2:0]s_axil_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RREADY" *) input s_axil_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RVALID" *) output s_axil_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RDATA" *) output [63:0]s_axil_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RRESP" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axil, DATA_WIDTH 64, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [1:0]s_axil_rresp;

  wire \<const0> ;
  wire i_clk;
  wire i_resetn;
  wire [7:0]s_axil_araddr;
  wire s_axil_arready;
  wire s_axil_arvalid;
  wire [55:0]\^s_axil_rdata ;
  wire s_axil_rready;
  wire s_axil_rvalid;
  wire [15:0]s_tdata;
  wire s_tlast;
  wire s_tvalid;

  assign s_axil_awready = \<const0> ;
  assign s_axil_bresp[1] = \<const0> ;
  assign s_axil_bresp[0] = \<const0> ;
  assign s_axil_bvalid = \<const0> ;
  assign s_axil_rdata[63] = \<const0> ;
  assign s_axil_rdata[62] = \<const0> ;
  assign s_axil_rdata[61] = \<const0> ;
  assign s_axil_rdata[60] = \<const0> ;
  assign s_axil_rdata[59] = \<const0> ;
  assign s_axil_rdata[58] = \<const0> ;
  assign s_axil_rdata[57] = \<const0> ;
  assign s_axil_rdata[56] = \<const0> ;
  assign s_axil_rdata[55:48] = \^s_axil_rdata [55:48];
  assign s_axil_rdata[47] = \<const0> ;
  assign s_axil_rdata[46] = \<const0> ;
  assign s_axil_rdata[45] = \<const0> ;
  assign s_axil_rdata[44] = \<const0> ;
  assign s_axil_rdata[43] = \<const0> ;
  assign s_axil_rdata[42] = \<const0> ;
  assign s_axil_rdata[41] = \<const0> ;
  assign s_axil_rdata[40] = \<const0> ;
  assign s_axil_rdata[39] = \<const0> ;
  assign s_axil_rdata[38] = \<const0> ;
  assign s_axil_rdata[37] = \<const0> ;
  assign s_axil_rdata[36] = \<const0> ;
  assign s_axil_rdata[35] = \<const0> ;
  assign s_axil_rdata[34] = \<const0> ;
  assign s_axil_rdata[33] = \<const0> ;
  assign s_axil_rdata[32] = \<const0> ;
  assign s_axil_rdata[31] = \<const0> ;
  assign s_axil_rdata[30] = \<const0> ;
  assign s_axil_rdata[29] = \<const0> ;
  assign s_axil_rdata[28] = \<const0> ;
  assign s_axil_rdata[27] = \<const0> ;
  assign s_axil_rdata[26] = \<const0> ;
  assign s_axil_rdata[25] = \<const0> ;
  assign s_axil_rdata[24] = \<const0> ;
  assign s_axil_rdata[23] = \<const0> ;
  assign s_axil_rdata[22] = \<const0> ;
  assign s_axil_rdata[21] = \<const0> ;
  assign s_axil_rdata[20] = \<const0> ;
  assign s_axil_rdata[19] = \<const0> ;
  assign s_axil_rdata[18] = \<const0> ;
  assign s_axil_rdata[17] = \<const0> ;
  assign s_axil_rdata[16] = \<const0> ;
  assign s_axil_rdata[15:0] = \^s_axil_rdata [15:0];
  assign s_axil_rresp[1] = \<const0> ;
  assign s_axil_rresp[0] = \<const0> ;
  assign s_axil_wready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_procedural inst
       (.i_clk(i_clk),
        .i_resetn(i_resetn),
        .s_axil_araddr(s_axil_araddr[7:3]),
        .s_axil_arready_reg(s_axil_arready),
        .s_axil_arvalid(s_axil_arvalid),
        .s_axil_rdata({\^s_axil_rdata [55:48],\^s_axil_rdata [15:0]}),
        .s_axil_rready(s_axil_rready),
        .s_axil_rvalid(s_axil_rvalid),
        .s_tdata(s_tdata),
        .s_tlast(s_tlast),
        .s_tvalid(s_tvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

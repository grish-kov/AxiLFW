`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/18/2024 09:46:48 PM
// Design Name: 
// Module Name: amplifier
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

(* use_dsp = "yes" *) module amplifier #(
    parameter NUM_CHANNELS=4,
    parameter A_WIDTH=8, B_WIDTH=16, C_WIDTH=14,
    localparam BITS_TO_CUT=$rtoi($ceil($itor(A_WIDTH)*$itor(B_WIDTH)/$itor(C_WIDTH)))
    //parameter BITS_TO_CUT=8 //calculate by max amplitude
)   (
    input i_clk, i_vld,
    input reg unsigned [31:0] i_A,
    input signed [15:0] B,
    input reg [1:0] i_dat_chn,
    input wire i_tlast,
    
    output reg [1:0] o_dat_chn,
    output signed [13:0] P,
    output logic o_tlast, o_vld
    );
    
    localparam [BITS_TO_CUT-2:0] ROUND_REG = '1;
    
    reg q_sign;
    logic [23:0] M, q_P; // signed?
    reg unsigned [NUM_CHANNELS-1:0][7:0] A;
    reg signed [8:0] q_A;
    //assign q_A = {1'b0, A[i_dat_chn]};
    // assign w_sign = 0 ~^ B[15];
    logic [2:0][1:0] q_chn_shiftreg;
    //assign o_dat_chn=(i_vld) ? i_dat_chn:0;
    
    reg q_vld = '0, q_tlast = '0;
    
    assign A={i_A[7:0], i_A[15:8], i_A[23:16], i_A[31:24]};
    
    always_ff @(posedge i_clk) begin
        q_vld   <= i_vld;
        q_tlast <= i_tlast;
        q_sign  <= B[15];
        if (i_vld) begin
            q_chn_shiftreg[0] <= i_dat_chn;
            M<=signed'({1'b0, A[i_dat_chn]})*B;
        end

        o_vld   <= q_vld;
        o_tlast <= q_tlast;
        if (q_vld) begin
            o_dat_chn<=q_chn_shiftreg[0];
            q_P <= M+{1'b0,ROUND_REG}+q_sign;
        end
    end
    
    //assign q_P= M+{1'b0,ROUND_REG}+w_sign;
    assign P = q_P[23:BITS_TO_CUT];
    
    //assign M=q_A*B; //posedge i_clk
    //assign q_sign=A[7] ^ B[15];
    //assign q_round=(7'b0111111+q_sign);    
    
endmodule
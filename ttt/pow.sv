`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2024 11:31:56 PM
// Design Name: 
// Module Name: pow
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


`timescale 1ns / 1ps

(* use_dsp = "yes" *) module pow #(
    localparam BITS_TO_CUT=4,
    parameter SHIFT_WIDTH=4
)   (
    input i_clk, i_vld,
    input [63:0] i_tdata,
    input wire i_tlast,
    input i_shift,
    output signed [31:0] o_tdata,
    output logic o_tlast, o_vld
    );
    
    localparam [BITS_TO_CUT-2:0] ROUND_REG = '1;
    
    logic [35:0] M_A, M_B, q_P_A, q_P_B; // signed?
    reg [35:0] q_P, q_shift;
    
    reg signed [17:0] i_A;
    reg signed [17:0] i_B;
    
    reg [4:0] shiftreg_vld;
    reg [4:0] shiftreg_tlast;
    
    //reg q_vld1 = '0, q_tlast1 = '0 , q_vld2 = '0, q_tlast2 = '0, q_vld3 = '0, q_tlast3 = '0;
    
    reg [SHIFT_WIDTH-1:0] shiftreg_vld;
    reg [SHIFT_WIDTH-1:0] shiftreg_tlast;
    
//    assign i_A=i_tdata[17:0];
//    assign i_B=i_tdata[49:32];
    
    always_ff @(posedge i_clk) begin
        
        i_A<=i_tdata[17:0]; 
        i_B<=i_tdata[49:32];
        
        shiftreg_vld = {shiftreg_vld[SHIFT_WIDTH-2:0], i_vld};
        shiftreg_tlast = {shiftreg_tlast[SHIFT_WIDTH-2:0], i_tlast};
        
        if (i_vld) begin
            M_A<=i_A*i_A;
            M_B<=i_B*i_B;
        end

        

        if (shiftreg_vld[0]) begin
            q_P<=M_A+M_B+{1'b0,ROUND_REG};
        end
        
        q_shift<=q_P<<i_shift;
    end
    
    assign o_tdata=q_shift[35:BITS_TO_CUT];
    
    assign o_vld = shiftreg_vld[SHIFT_WIDTH-1];
    assign o_tlast = shiftreg_tlast[SHIFT_WIDTH-1];
    
endmodule

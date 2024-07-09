`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/18/2024 10:26:12 PM
// Design Name: 
// Module Name: accumulator
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

module accumulator #( //shiftreg to make delay instead of START_OFFSET
    parameter NUM_CHANNELS=4,
    localparam OFFSET_WIDTH=$clog2(NUM_CHANNELS),
    parameter [OFFSET_WIDTH-1:0] SHIFT_OFFSET=0,
    //localparam [OFFSET_WIDTH-1:0] CHN=START_OFFSET-1,
    localparam int CHN_COUNTER_WIDTH = $ceil($clog2(NUM_CHANNELS))
)   (
        input i_clk, i_vld, i_tlast,
        input reg signed [13:0] i_stm_dat,
        input reg [CHN_COUNTER_WIDTH-1:0] i_stm_chn,
        
        output reg signed [15:0] o_stm_dat,
        output logic [CHN_COUNTER_WIDTH-1:0] o_stm_chn,
        output logic o_vld, o_tlast
        //output [1:0] o_stm_chn
    );
    
    //logic [CHN_COUNTER_WIDTH-1:0] q_chn_cnt;
    logic q_vld, q_tlast, qq_tlast;
    logic [CHN_COUNTER_WIDTH-1:0] q_stm_chn;
    logic signed [15:0] q_acc_data;
    logic signed [NUM_CHANNELS-1:0][15:0] q_acc_shiftreg;
    
    reg [NUM_CHANNELS-1:0] shiftreg_vld;
    reg [NUM_CHANNELS-1:0] shiftreg_tlast;
    reg [NUM_CHANNELS-1:0][1:0] shiftreg_chn;
    
    always_ff @ (posedge i_clk) begin
        
        shiftreg_vld = {shiftreg_vld[NUM_CHANNELS-2:0], i_vld};
        shiftreg_tlast = {shiftreg_tlast[NUM_CHANNELS-2:0], i_tlast};
        shiftreg_chn = {shiftreg_chn[NUM_CHANNELS-2:0], i_stm_chn};
        
        //q_stm_chn <= i_stm_chn;
        //o_stm_chn <= q_stm_chn;
        //q_tlast<=i_tlast ? 1 : 0;
        //o_tlast<=q_tlast ? 1 : 0;
        //q_vld<=i_vld ? 1 : 0;
        //o_vld<=q_vld ? 1 : 0;
        //o_vld <= (q_stm_chn == 3);
        
        
        if (i_stm_chn==0 ) begin
            q_acc_data <= i_stm_dat;
            qq_tlast<=0;
            //o_stm_dat <= q_acc_data;
            //q_acc_shiftreg <= {q_acc_shiftreg[NUM_CHANNELS-2:0], q_acc_data};
        end
        else q_acc_data <= q_acc_data + i_stm_dat;
        
        
        if (i_tlast) qq_tlast<=1;
        //if (i_tlast) q_acc_data<=0;
        
        //q_acc_shiftreg[0]
        
    end
    
    //qq_tlast= (i_stm_chn==2) ? i_tlast : 0;
    
    assign o_stm_dat = (i_stm_chn==0) ? q_acc_data : o_stm_dat;
    
    assign o_vld = shiftreg_vld[NUM_CHANNELS-1];
    assign o_tlast = shiftreg_tlast[NUM_CHANNELS-1];
    assign o_stm_chn = shiftreg_chn[NUM_CHANNELS-1];
    
    //assign o_stm_dat=q_acc_data;
    
endmodule

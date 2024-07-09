`timescale 1ns / 1ps

module tb_pow #(

    clk = 1.0

);
    
    
    logic i_clk = 1, i_vld = 0;
    logic [17:0] i_A = 0;
    logic [17:0] i_B= 0;
    logic i_tlast = 0;
    
    reg [31:0] P;
    logic o_tlast, o_vld;
    
    always #(clk / 2.0) i_clk = ~i_clk;

    initial begin
      
      i_vld = 1;
      i_A = 3;
      i_B = 5;
      i_tlast = 1;
      #clk;
      i_tlast = 0;
        
    end
    
    pow pow(
   
       .i_clk       (i_clk),
       .i_vld       (i_vld),
       .i_A         (i_A),
       .i_B         (i_B),
       .i_tlast     (i_tlast),
       
       .P           (P),
       .o_tlast     (o_tlast),
       .o_vld       (o_vld)
   
    );
    
endmodule

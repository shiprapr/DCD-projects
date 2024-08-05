`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2024 09:12:34
// Design Name: 
// Module Name: tb
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

module mul1();
  reg [15:0] flp_a, flp_b;
  wire [4:0] exponent, exp_unbiased;
  wire [5:0] exp_sum;
  wire [9:0] prod;
  wire [15:0] sum ;
  wire sign;
  mul uut(.flp_a(flp_a),.flp_b(flp_b), .exponent(exponent), .exp_unbiased(exp_unbiased), .exp_sum(exp_sum), .prod(prod),.sum(sum),.sign(sign));
	initial
      begin
        flp_a = 16'b1010101010101010;     flp_b = 16'b1100110011001100; 
       #10;
//$display("flp_a = %f, flp_b = %f",flp_a,flp_b);
//$display("exponent = %b, exp_unbiased = %b,exp_sum = %b",exponent, exp_unbiased, exp_sum);
//$display("prod = %b, sum = %f", prod, sum);
    // End simulation
    $finish;
      end
endmodule

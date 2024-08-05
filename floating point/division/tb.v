`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 07:02:43
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


module tb();
//reg clk,reset_n;
reg [15:0]a,b;
wire [15:0]d;
wire [9:0]a1,b1;
wire [4:0]exp,unbiased_exp;
wire sign;
wire d1;

floating_division uut(a,b,a1,b1,d,exp,unbiased_exp,sign,d1);


    
    initial
    begin
        a=32'b1100111111000010;
        b=32'b0011110010001111;
//        reset_n=1;
        #50;
//        reset_n=0;
//        #200;
        
    end
    
endmodule

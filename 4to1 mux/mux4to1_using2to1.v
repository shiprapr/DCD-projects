`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2023 16:28:41
// Design Name: 
// Module Name: mux4to1_using2to1
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


module mux4to1_using2to1(out,s1,s0,i);
output out;
input s1,s0;
input [3:0] i;

wire [2:1]y;

mux2to1 mux1(y[1],s0,i[1:0]);
mux2to1 mux2(y[2],s0,i[3:2]);
mux2to1 mux3(out,s1,y[2:1]);
endmodule


module mux2to1 (y,s,d);
input [1:0] d;
input s;
output y;

wire n,a1,a2,o;

not sn(n,s);
and aa1(a1,n,d[0]);
and aa2(a2,s,d[1]);
or out(y,a1,a2);
endmodule

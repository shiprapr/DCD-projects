`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2023 14:49:49
// Design Name: 
// Module Name: mux16to1using4to1
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


module mux16to1using4to1(y,d,s0,s1,s2,s3);
input [15:0] d;
input s0,s1,s2,s3;
output y;
wire [4:1] y;

mux4to1 (y[1],s1,s0,d[3:0]);
mux4to1 (y[2],s1,s0,d[7:4]);
mux4to1 (y[3],s1,s0,d[11:8]);
mux4to1 (y[4],s1,s0,d[15:12]);
mux4to1 (y,s3,s2,y[4:1]);
endmodule

module mux4to1(y,s1,s0,i);
input [3:0] i;
input s1,s0;
output y;

wire n0,n1,a0,a1,a2,a3;

not ns0(n0,s0);
not ns1(n1,s1);
and aa0(a0,n0,n1,i[0]);
and aa1(a1,s0,n1,i[1]);
and aa2(a2,n0,s1,i[2]);
and aa3(a3,s0,s1,i[3]);

or o(y,a0,a1,a2,a3);

endmodule


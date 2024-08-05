`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2024 12:42:14
// Design Name: 
// Module Name: Uni_Shift_reg
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

module dff(clk,rst,d,q);
input clk,rst,d;
output reg q;

always @(posedge clk)begin
if (rst) q<=1'b0;
else q<=d;
end
endmodule

module mux4to1(s0,s1,i0,i1,i2,i3,y);
input s0,s1;
input i0,i1,i2,i3;
output  y;
assign y=s1? (s0?i3:i2):(s0?i1:i0);

endmodule



module Uni_Shift_reg(clk,rst,b,q,sr,sl,s);
input [3:0]b;
input sr,sl,clk,rst;
input [1:0]s;
output [3:0]q;
wire w0,w1,w2,w3;


mux4to1 mux0(s[0],s[1],q[0],sr,q[1],b[0],w0);
mux4to1 mux1(s[0],s[1],q[1],q[0],q[2],b[1],w1);
mux4to1 mux2(s[0],s[1],q[2],q[1],q[3],b[2],w2);
mux4to1 mux3(s[0],s[1],q[3],q[2],sl,b[3],w3);
dff d0(clk,rst,w0,q[0]);

dff d1(clk,rst,w1,q[1]);
dff d2(clk,rst,w2,q[2]);
dff d3(clk,rst,w3,q[3]);



//case (s)
//s[1]<=1,s[0]<=1:
//endcase


endmodule

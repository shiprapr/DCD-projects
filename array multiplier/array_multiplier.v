`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 12:39:09
// Design Name: 
// Module Name: array_multiplier
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


module fa(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
assign sum=a^b^cin;
assign cout=(a^b)&cin|(a&b);
endmodule
module array_multiplier(a,b,s,cout);
input [2:0]a,b;
output [4:0]s;
output cout;

wire [7:0]w;
wire [3:0]y;

fa f1((a[0]&b[0]),1'b0,1'b0,s[0],w[0]);
fa f2((a[1]&b[0]),1'b0,w[0],y[0],w[1]);
fa f3((a[2]&b[0]),1'b0,w[1],y[1],w[2]);

fa f4((a[0]&b[1]),y[0],1'b0,s[1],w[3]);
fa f5((a[1]&b[1]),y[1],w[3],y[2],w[4]);
fa f6((a[2]&b[1]),w[2],w[4],y[3],w[5]);

fa f7((a[0]&b[2]),y[2],1'b0,s[2],w[6]);
fa f8((a[1]&b[2]),y[3],w[6],s[3],w[7]);
fa f9((a[2]&b[2]),w[7],w[4],s[4],cout);

endmodule

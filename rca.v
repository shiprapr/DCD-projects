`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2023 08:29:03
// Design Name: 
// Module Name: rca
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


module rca(Sum,cout,a,b,cin );
output reg cout;
output reg [3:0]Sum;
input [3:0]a,b;
input cin;
wire [2:0]c;

fa fa1(Sum[0],c[0],a[0],b[0],cin);
fa fa2(Sum[1],c[1],a[1],b[1],c[0]);
fa fa3(Sum[2],c[2],a[2],b[2],c[1]);
fa fa4(Sum[3],cout,a[3],b[3],c[2]);

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2023 02:20:58
// Design Name: 
// Module Name: rca_behavioural
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
module fa(s,carry,a,b,cin);
input a,b,cin;
output reg s,carry;

always@(*)
begin
assign s=a^b^cin;
assign carry=a&b+b&cin+a&cin;
end
endmodule
module rca_behavioural(s,cout,a,b,cin );
output  cout;
output  [3:0]s;
input [3:0]a,b;
input cin;
wire [2:0]c;

fa fa1(s[0],c[0],a[0],b[0],cin);
fa fa2(s[1],c[1],a[1],b[1],c[0]);
fa fa3(s[2],c[2],a[2],b[2],c[1]);
fa fa4(s[3],cout,a[3],b[3],c[2]);
endmodule




`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2023 08:29:25
// Design Name: 
// Module Name: fa
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


//////////////////////////////////////////////////////////////////////////////////
module fa(s,carry,a,b,cin);
input a,b,cin;
output reg s,carry;

always@(*)
begin
 s=a^b^cin;
 carry=(a&b)|(b&cin)|(a&cin);
end
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2023 08:45:37
// Design Name: 
// Module Name: dff
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



module dff(q,d,clk,rst);
input d,clk,rst;
output reg q;

always@(posedge clk or posedge rst)
begin
if(rst)
q=1'b0;
else
q=d;
end 

endmodule

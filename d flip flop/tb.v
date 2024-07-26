`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2023 08:47:34
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

module tb;
reg d;
reg clk;
reg rst;

wire q;

dff uut(.q(q),.d(d),.clk(clk),.rst(rst));
always
#10 clk=~clk;
initial begin 
d=0;
clk=1;
rst=1;

#100;

rst=1'b0;
d=1;

#100;
d=0;
end

endmodule

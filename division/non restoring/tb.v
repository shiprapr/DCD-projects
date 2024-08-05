`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2024 16:34:59
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
parameter n=4;
reg [n:0] M;
reg [n-1:0] Q;
reg rst;
wire [n-1:0] q;
wire [n:0] R;

non_restoring_division r1(.M(M),.Q(Q),.rst(rst),.q(q),.R(R));
initial begin
rst=1;
#10
rst=0;Q=4'b1011;M=5'b00101;
#10
rst=1;
#10
rst=0;Q=4'b1110;M=5'b00011;
#10
$stop;
end
endmodule

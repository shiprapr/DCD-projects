`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2024 20:28:28
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


module tb(

    );
    wire [7:0]P;
    reg [3:0]A,M;
    booth_bultiplier uut(.A(A),.M(M),.P(P));
    initial begin
    A=4'b1101; M=4'b1011;
    #10
    A=4'b1001; M=4'b0001;
    #10
    A=4'b0111; M=4'b1111;
    #10
    A=4'b1010; M=4'b0010;
    #10
    $stop;
    end
    
endmodule

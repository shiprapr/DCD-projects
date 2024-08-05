`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2024 22:07:47
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
    reg clk,rst,load,A,B;
    wire p;
    
    shift_add uut(.clk(clk),.rst(rst),.load(load),.A(A),.B(B),.p(p));
    initial begin
    #5 clk=~clk;
    end
    initial begin 
    clk=0;
    rst=1;
    #10
    rst=0;load=1;
    #10
    A=8'b00001000;
    B=8'b00001000;
    #20
    $stop;
    end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2024 21:50:28
// Design Name: 
// Module Name: tb_usr
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


module tb_usr(

    );
    reg [3:0]b;
    reg sr,sl,clk,rst;
    reg [1:0]s;
    wire [3:0]q;
    Uni_Shift_reg uut(.clk(clk),.rst(rst),.b(b),.q(q),.sr(sr),.sl(sl),.s(s));
    always begin
     #5 clk=~clk;
    end
    
    initial begin
    rst=1;clk=0;
    #10
    rst=0;s[1]=1;s[0]=1;b=4'b0101;
 #10
 s[1]=0;s[0]=1;sr=1'b1;
 #10
 s[1]=1;s[0]=0;sl=1'b0;
 #60
                $stop;
                end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2024 01:52:13
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
    reg [15:0]a,b;
    reg add,sub;
    wire result;
    
    floating_point_add_sub uut(.a(a),.b(b),.add(add),.result(result));
    initial begin
    
    a=16'b00000000000000000;
    b=16'b10001100010010101;
    add=1; sub=0;
    #10
        
    a=16'b00000000000000000;
    b=16'b00001100010010101;
    add=0; sub=1;
    #10
    
       b=16'b00000000000000000;
    a=16'b00001100010010101;
    add=0; sub=1;
    #10
    $stop;
    end
    
endmodule

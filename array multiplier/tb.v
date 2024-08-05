`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 12:39:50
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
    reg [2:0]a,b;
    wire [4:0]s;
    wire cout;
    array_multiplier uut(.a(a),.b(b),.s(s),.cout(cout));
    initial begin
    a=3'b100; b=110; 
    #10
    a=3'b110; b=110; 
    #10
        a=3'b111; b=111; 
    #10
        a=3'b011; b=010; 
    #10
    $stop;
    end
endmodule
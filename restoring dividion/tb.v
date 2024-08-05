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


module tb(

    );
    parameter n=5;
    reg rst; reg [n-1:0]Q; reg [n:0]M;
    wire [n:0]R;
    wire [n-1:0]q;
    
    restoring_division uut(.rst(rst),.Q(Q),.M(M),.R(R),.q(q));
    initial begin
    rst=1;
    #5
    rst=0; 
    Q=5'b01011; M=5'b000011;
    #20
    rst=1;
    #5
    rst=0; 
    Q=5'b10100; M=4'b000111;
    #20
    rst=1;
    #5
    rst=0; 
    Q=5'b01111; M=4'b000101;
    #20
    rst=1;
    #5
    rst=0; 
    Q=5'b10001; M=4'b001001;
    #20
    $stop;
    end
    
endmodule

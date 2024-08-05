`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2023 02:30:30
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
    reg [3:0]a,b;
    reg cin;
    wire [3:0]s;
    wire cout;
    
    rca_behavioural uut(.s(s),.cout(cout),.a(a),.b(b),.cin(cin));
    initial begin
    cin=0;
    a=4'b0110;
    b=4'b0100;
    #10
        cin=0;
    a=4'b0010;
    b=4'b0001;
    #10
        cin=0;
    a=4'b0001;
    b=4'b0011;
    #10
        cin=0;
    a=4'b0111;
    b=4'b0111;
    #10
    $stop;
    end
    
endmodule

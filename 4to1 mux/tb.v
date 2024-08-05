`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2023 18:03:40
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
    reg ts1,ts0;
    reg [3:0] ti;
    wire y;
    mux4to1_using2to1 dut(.out(y),.s1(ts1),.s0(ts0),.i(ti));
    
    initial begin 
    ts1=0;ts0=0;ti[0]=1;ti[1]=0;ti[2]=0;ti[3]=0;
    #100
    ts1=0;ts0=1;ti[0]=0;ti[1]=1;ti[2]=0;ti[3]=0;
    #100
    ts1=1;ts0=0;ti[0]=0;ti[1]=0;ti[2]=1;ti[3]=0;
    #100
    ts1=1;ts0=1;ti[0]=0;ti[1]=0;ti[2]=0;ti[3]=1;
    #100
    $stop;
    end 
endmodule

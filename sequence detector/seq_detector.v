`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2024 06:27:09 PM
// Design Name: 
// Module Name: seqdetect209
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


module seqdetect209(
    input clk,reset,x,
    output reg y=1'b0

    );
    reg [1:0] state;
    localparam s0=2'b00;
    localparam s1=2'b01;
    localparam s2=2'b11;
    localparam s3=2'b10;
    
    always @(posedge clk) begin
    y<=0;
    if(reset) begin
        y<=0;
        state<=s0;
    end
    case(state)
    s0:
    if(x) begin
    state<=s1;
    end
    else begin
    state<=s0;
    end
    s1:
    if(x) begin
    state<=s1;
    end
    else begin
    state<=s2;
    end
    s2:
    if(x) begin
    state<=s3;
    end
    else begin
    state<=s0;
    end
    s3:
    if(x) begin
    y<=1;
    state<=s1;
    end
    else begin
    state<=s2;
    end
    
    default:
    state<=s0;
    endcase
    end
    
 
endmodule

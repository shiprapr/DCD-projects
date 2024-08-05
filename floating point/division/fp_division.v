`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 06:48:54
// Design Name: 
// Module Name: fp_division
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


module floating_division(
//    input clk,reset_n,
    input [15:0]a,b,
    output [9:0]a1,b1,
//    output [9:0]d2,
    output [15:0]d,
    
    output [4:0]exp,unbiased_exp,
    output  reg sign,
    output reg [9:0]d1
    );
    
    reg sign_a,sign_b,sc;
    reg [4:0]exp_a,exp_b,exp_q;
    reg [15:0]m_q;
    reg [9:0]m_a,mb;
    reg [6:0]rc;
    always @(a,b)
    begin 
        
        
            sign_a=a[15];
            sign_b=b[15];
            exp_a=a[14:10]-5'b01111;
            exp_b=b[14:10]-5'b01111;
            m_a=a[9:0];
            mb=b[9:0];
       
        
            sign=sign_a^sign_b;
            if(m_a>mb)
            begin
                m_q=m_a/mb;
                rc=m_a%mb;
                exp_q=exp_a-exp_b;
            end
            else if(mb>m_a)
            begin   
                 m_q=mb/m_a;
                 rc=mb%m_a;
                 exp_q=exp_b-exp_a;
            end   
        end
    
           
           assign a1=a[9:0];
           assign b1=b[9:0];
           assign d[15]=sign;
           assign d[14:10]=exp_q+5'b01111;
           assign d[9:0]=m_q;
           assign d1=m_q;
//           assign d[6:0]=rc;
           assign unbiased_exp=exp_q;
           assign exp=exp_q+5'b01111;
//           assign d2={m_q,7'b0};
endmodule

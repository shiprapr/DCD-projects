`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2024 20:25:12
// Design Name: 
// Module Name: booth_multiplier
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


module booth_bultiplier(A,M,P);
  output reg signed [7:0] P;
  input signed [3:0] A, M;

  reg [1:0] temp;
  integer i;
  reg q0;
  reg [3:0] M1;

  always @(A,M)
  begin
    P = 8'd0;
    q0 = 1'b0;
    M1 = -M;
    
    for (i=0; i<4; i=i+1)
    begin
      temp = { A[i], q0 };
      case(temp)
        2'd2 : P[7:4] = P[7:4] + M1;
        2'd1 : P[7:4] = P[7:4] + M;
      endcase
      P = P >> 1;
      P[7] = P[6];
      q0=A[i];
      
    end
  end
  
endmodule

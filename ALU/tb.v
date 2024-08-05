`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2024 23:58:05
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
    
//Inputs
 reg[7:0] a,b;
 reg[3:0] Sel;

//Outputs
 wire[7:0] Out;
 wire CarryOut;
 // Verilog code for ALU
 integer i;
 alu uut(.A(a),.B(b),.ALU_Sel(Sel),.ALU_Out(Out),.CarryOut(CarryOut));
    initial begin
    // hold reset state for 100 ns.
      a= 8'h0f;
      b = 8'h0A;
      Sel = 4'h0;
      
      for (i=0;i<=15;i=i+1)
      begin
       Sel = Sel + 8'h01;
       #10;
      end;
      
      
      
    end

endmodule

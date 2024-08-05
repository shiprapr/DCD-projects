`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2023 15:54:40
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


module tb();
reg ta,tb,tcin;
wire tsum,tcout;

FA_UsingNand dut(.a(ta),.b(tb),.cin(tcin),.sum(tsum),.cout(tcout));

initial begin 
ta=0; tb=0; tcin=0;
#10
ta=0; tb=0; tcin=1;
#10
ta=0; tb=1; tcin=0;
#10
ta=0; tb=1; tcin=1;
#10
ta=1; tb=0; tcin=0; 
#10
ta=1; tb=0; tcin=1;
#10
ta=1; tb=1; tcin=0;
#10
ta=1; tb=1; tcin=1;     
#10
$stop;
end      
endmodule

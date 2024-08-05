`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 10:26:45
// Design Name: 
// Module Name: restoring_division
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

//module test(p,a,r);
//input [3:0]a;
//input r;
//output reg [7:0]p;

//reg [3:0]a1;

//always @(a)begin
//p= 8'b0;

//a1= -a;

//if (r)begin
//p= p +a;
//end 
//else begin p=p+a1;p=p<<1;end
//end 
//endmodule

module restoring_division(Q,M,R,q,rst);
parameter n=5;
input rst;
input [n-1:0]Q;input [n:0]M; output reg [n:0]R;
output reg [n-1:0]q;

reg [n:0]m1;
reg [2*n:0]A1;
integer i;
always @(rst)begin

if (rst)begin
 R=0; 
end

else 
begin
m1=-M;
A1[2*n:n]=R;
A1[n-1:0]=Q;


    for (i=0; i<n;i=i+1)
    begin
        A1=A1<<1;
        A1[2*n:n]=A1[2*n:n]+m1;
        if (A1[2*n])
        begin
            A1[0]=0;
            A1[2*n:n]=A1[2*n:n]+M;
        end
        else 
        begin
            A1[0]=1; 
        end
    end

     R<=A1[2*n:n];
     q<=A1[n-1:0];
end
end

endmodule

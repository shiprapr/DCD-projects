`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2024 12:07
// Design Name: 
// Module Name: floating_point_a
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// :33    
//        Revision:
// dditionRevision 0.01 - File Created
//        Additional Comments:
//        
///       ////////////////////////////////////////////////////////////////////////


module floating_point_add_sub(a,b,add,sub,result);
input [15:0]a,b;
input add,sub;
output reg [15:0]result;

reg as,bs;
reg [4:0]ae,be;
reg [9:0]af,bf;

reg sign;
reg [10:0]ea;
reg carry;
integer i;

always @(a or b or add or sub)begin
as=a[15];
bs=b[15];
ae = a[14:10];
be =b[14:10];
af = a[9:0];
bf = b[9:0];
sign = as^bs;


if (b==0)begin
result <=0;
end

else begin
    if (a==0)begin
        if (add)begin
            result <=b;
        end
        else if (sub)begin
            result <= -b;
        end
    end
    else begin
        if (ae<be)begin
           while (ae!=be)begin
                af=af>>1;
                ae=ae+1'b1;
           end 
        end
        else if (ae>be)begin
            while (ae!=be)begin
                bf=bf>>1;
                be=be+1'b1;
           end
        end
        //add or sub
        if (add)begin
            if (sign)begin
                ea=af-bf;
            end
            else begin
                ea=af+bf;
                if (ea[10])begin
                    ea=ea>>1;
                    ae=ae+1;
                end
            end
        end
        if (sub)begin
            if (sign)begin
               ea=af+bf;
                if (ea[10])begin
                    ea=ea>>1;
                    ae=ae+1;
                end
                
            end
            else begin
               ea=af-bf;
            end
        end    
    end
end
end


endmodule 



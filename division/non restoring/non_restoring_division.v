module non_restoring_division(M,Q,rst,q,R);
parameter n=4;
input [n:0]M;  //5bit divisor 
input [n-1:0]Q;
input rst;//4bit divident
output reg [n-1:0]q;//4bit quotient
output reg [n:0]R;//5bit remainder

reg [2*n:0]A;// 9 bit accumulator 
reg [n:0]m; // 5bit -m
integer i;


always @(rst) begin
if (rst)begin
A[2*n:0]=9'd0;//R=0;q=0;
end
//q=0;

else begin
//m<=-M;
A[2*n:n]=5'd0;
A[n-1:0]=Q[n-1:0];

    for (i=0;i<n;i=i+1)begin
        A=A<<1;
        if (A[2*n])begin
            A[2*n:n]=A[2*n:n]+M[n:0];
        end
        else begin
            A[2*n:n]=A[2*n:n]-M[n:0];
            end
            
             if (A[2*n])begin
                A[0]=0;
            end
            else begin
                A[0]=1;
            end
        
    end

    if (A[2*n])begin
        A[2*n:n]=A[2*n:n]+M[n:0];
    end
        R=A[2*n:n];
        q=A[n-1:0];
    end
    end
endmodule
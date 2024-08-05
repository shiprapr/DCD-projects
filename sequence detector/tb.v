module tb();
reg clk,reset,x;
wire y;
seqdetect209 s1(.clk(clk),.reset(reset),.x(x),.y(y));
initial begin
reset=1;clk=0;
#10
reset=0;
#10
x=1; #10 x=0; #10 x=1; #10 x=1; #10 x=0;#10 x=1;#10 x=1;#10 x=0;#10 x=1;#10 x=0;
#15
$stop;
end

always begin
#5 clk=~clk;
end
endmodule
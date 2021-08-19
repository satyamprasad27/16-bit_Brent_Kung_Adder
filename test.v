`timescale 10ps/1ps
module test;
reg [15:0]a,b;
reg cin;
wire [15:0]s;
wire cout;
BK_Adder DUT(s,cout,a,b,cin);
initial begin
a = 16'b0;
b = 16'b0;
cin = 1'b0;
end
initial
begin
#10 a = 16'h9999; b = 16'h1000; cin = 1'b1;
#10 a = 16'h9099; b = 16'h1200;
#10 a = 16'h9799; b = 16'h0090; cin = 1'b0;
#10 a = 16'h000a; b = 16'h100f;
#10 a = 16'h2000; b = 16'h0109;
#10 a = 16'h1500; b = 16'h1800;
#10 a = 16'h1212; b = 16'habcd;
#10 a = 16'h1235; b = 16'h1004;cin = 1'b1;
#10 a = 16'hffff; b = 16'hffff;
#10 $finish;
end
endmodule

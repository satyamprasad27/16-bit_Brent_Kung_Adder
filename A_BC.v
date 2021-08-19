module A_BC(p, A, B, C);
input A,B,C;
output p;
assign p = A | (B&C);
endmodule 

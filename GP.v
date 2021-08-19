module GP(Geq, Peq, G0, G1, P0, P1);
input G0, G1, P0, P1;
output Geq, Peq;
assign Peq = P0 & P1;
A_BC g0(Geq, G1,G0, P1);
endmodule

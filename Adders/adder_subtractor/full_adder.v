module full_adder(
input A, B, C,
output Sum, Carry);

wire a1,a2,a3;

xor(Sum,A,B,C);
and(a1,A,B);
and(a2,A,C);
and(a3,C,B);
or(Carry,a1,a2,a3);
endmodule

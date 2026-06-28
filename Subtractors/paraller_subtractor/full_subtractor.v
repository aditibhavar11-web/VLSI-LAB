module full_subtractor(
input A, B, C,
output Sub, Borrow
);

wire x1, n1, n2, n3;

xor(Sub, A, B, C);

not(n1, A);
and(n2, n1, B);
and(n3, n1, C);
and(x1, B, C);

or(Borrow, n2, n3, x1);
endmodule

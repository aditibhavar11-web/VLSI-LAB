module half_sub(
input A, B,
output Sub,Borrow );

xor(Sub,A,B);
not(n,A);
and(Borrow,n,B);

endmodule

module multiplier(
input [1:0] A,B,
output [3:0] P);

wire Z1,Z2,Z3,C;

and(P[0],A[0],B[0]);
and(Z1,A[1],B[0]);
and(Z2,A[0],B[1]);
and(Z3,A[1],B[1]);

half_adder HA1(
.A(Z1),
.B(Z2),
.Sum(P[1]),
.Carry(C));

half_adder HA2(
.A(C),
.B(Z3),
.Sum(P[2]),
.Carry(P[3]));

endmodule

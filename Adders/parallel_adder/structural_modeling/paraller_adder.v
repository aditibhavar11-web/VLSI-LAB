module paraller_adder(
input [3:0] A,B,
input Cin,
output [3:0] S,
output Cout);

wire [2:0] C;

full_adder FA0(
.A(A[0]),
.B(B[0]),
.C(Cin),
.Sum(S[0]),
.Carry(C[0]));

full_adder FA1(
.A(A[1]),
.B(B[1]),
.C(C[0]),
.Sum(S[1]),
.Carry(C[1]));

full_adder FA2(
.A(A[2]),
.B(B[2]),
.C(C[1]),
.Sum(S[2]),
.Carry(C[2]));

full_adder FA3(
.A(A[3]),
.B(B[3]),
.C(C[2]),
.Sum(S[3]),
.Carry(Cout));

endmodule

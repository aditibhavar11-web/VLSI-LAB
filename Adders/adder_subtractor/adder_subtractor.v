module adder_subtractor(
input [3:0] A,B,
input Cin,
output [3:0] Y,Z,
output Cout);

wire [2:0]C;

xor_gate x0(
.A(Cin),
.B(B[0]),
.Y(Y[0]));

full_adder FA0(
.A(A[0]),
.B(Y[0]),
.C(Cin),
.Sum(Z[0]),
.Carry(C[0]));


xor_gate x1(
.A(Cin),
.B(B[1]),
.Y(Y[1]));

full_adder FA1(
.A(A[1]),
.B(Y[1]),
.C(C[0]),
.Sum(Z[1]),
.Carry(C[1]));


xor_gate x2(
.A(Cin),
.B(B[2]),
.Y(Y[2]));

full_adder FA2(
.A(A[2]),
.B(Y[2]),
.C(C[1]),
.Sum(Z[2]),
.Carry(C[2]));


xor_gate x3(
.A(Cin),
.B(B[3]),
.Y(Y[3]));

full_adder FA3(
.A(A[3]),
.B(Y[3]),
.C(C[2]),
.Sum(Z[3]),
.Carry(Cout));

endmodule

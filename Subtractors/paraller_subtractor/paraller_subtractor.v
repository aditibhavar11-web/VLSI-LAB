module paraller_subtractor(
input [3:0] A,B,
input Bin,
output [3:0]D,
output Bout);

wire B0, B1, B2;

full_subtractor FS0(
    .A(A[0]),
    .B(B[0]),
    .C(Bin),
    .Sub(D[0]),
    .Borrow(B0)
);

full_subtractor FS1(
    .A(A[1]),
    .B(B[1]),
    .C(B0),
    .Sub(D[1]),
    .Borrow(B1)
);

full_subtractor FS2(
    .A(A[2]),
    .B(B[2]),
    .C(B1),
    .Sub(D[2]),
    .Borrow(B2)
);

full_subtractor FS3(
    .A(A[3]),
    .B(B[3]),
    .C(B2),
    .Sub(D[3]),
    .Borrow(Bout)
);
endmodule

module xnor_gate(
input A, B,
output Y
);

assign Y = ~(A ^ B);

endmodule

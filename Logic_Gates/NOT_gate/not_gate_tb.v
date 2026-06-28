

module not_gate_tb;

reg A;
wire Y;
integer i;

not_gate uut(
    .A(A),
    .Y(Y)
);

initial begin
    $dumpfile("not_gate.vcd");
    $dumpvars(0, not_gate_tb);

    for(i = 0; i < 2; i = i + 1) begin
        A = i;
        #10;
    end

    $finish;
end

endmodule

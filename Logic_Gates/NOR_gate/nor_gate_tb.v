

module nor_gate_tb;

reg A, B;
wire Y;
integer i;

nor_gate uut(
    .A(A),
    .B(B),
    .Y(Y)
);

initial begin
    $dumpfile("nor_gate.vcd");
    $dumpvars(0, nor_gate_tb);

    for(i = 0; i < 4; i = i + 1) begin
        {A, B} = i;
        #10;
    end

    $finish;
end

endmodule

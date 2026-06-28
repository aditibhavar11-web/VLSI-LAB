
module nand_gate_tb;

reg A, B;
wire Y;
integer i;

nand_gate uut(
    .A(A),
    .B(B),
    .Y(Y)
);

initial begin
    $dumpfile("nand_gate.vcd");
    $dumpvars(0, nand_gate_tb);

    for(i = 0; i < 4; i = i + 1) begin
        {A, B} = i;
        #10;
    end

    $finish;
end

endmodule

module xnor_gate_tb;

reg a, b;
wire y;

integer i;

xnor_gate dut(
    .A(a),
    .B(b),
    .Y(y)
);

initial begin
    $dumpfile("xnor_gate.vcd");
    $dumpvars(0, xnor_gate_tb);

    for(i = 0; i < 4; i = i + 1) begin
        {a, b} = i;
        #10;
    end

    $finish;
end

initial begin
    $monitor("A=%b B=%b Y=%b", a, b, y);
end

endmodule

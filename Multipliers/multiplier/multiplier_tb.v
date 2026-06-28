module multiplier_tb;

reg [1:0] A, B;
wire [3:0] P;

integer i, j;

multiplier dut(
    .A(A),
    .B(B),
    .P(P)
);

initial begin
    $dumpfile("multiplier.vcd");
    $dumpvars(0, multiplier_tb);

    for(i = 0; i < 4; i = i + 1) begin
        for(j = 0; j < 4; j = j + 1) begin
            A = i;
            B = j;
            #10;
        end
    end

    $finish;
end

initial begin
    $monitor("A=%b B=%b P=%b", A, B, P);
end

endmodule

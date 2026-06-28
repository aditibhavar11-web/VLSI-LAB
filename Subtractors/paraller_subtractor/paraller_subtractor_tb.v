module paraller_subtractor_tb;

reg [3:0] A,B;
reg Bin;
wire [3:0] D;
wire Bout;

integer i,j,k;

paraller_subtractor dut(
.A(A),
.B(B),
.Bin(Bin),
.D(D),
.Bout(Bout)
);

initial begin
    $dumpfile("paraller_subtractor.vcd");
    $dumpvars(0,paraller_subtractor_tb);

    for(k=0; k<2; k=k+1) begin
        Bin=k;
        for(i=0; i<16; i=i+1) begin
            for(j=0; j<16; j=j+1) begin
                A=i;
                B=j;
                #10;
            end
        end
    end

    $finish;
end

initial begin
    $monitor("A=%h B=%h Bin=%b D=%h Bout=%b",
              A,B,Bin,D,Bout);
end

endmodule

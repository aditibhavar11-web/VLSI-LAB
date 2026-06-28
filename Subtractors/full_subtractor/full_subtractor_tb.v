module full_subtractor_tb;

reg a,b,c;
wire sub,borrow;
integer i;

full_subtractor dut(
.A(a),
.B(b),
.C(c),
.Sub(sub),
.Borrow(borrow)
);

initial begin
$dumpfile("full_subtractor.vcd");
$dumpvars(0,full_subtractor_tb);

for(i=0;i<8;i=i+1) begin
    {a,b,c}=i;
    #10;
end

$finish;
end

initial begin
$monitor("A=%b,B=%b,C=%b,Sub=%b,Borrow=%b",
          a,b,c,sub,borrow);
end

endmodule

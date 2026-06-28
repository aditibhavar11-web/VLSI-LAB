module adder_subtractor_tb;
reg [3:0] a,b;
reg cin;
wire [3:0] y,z;
wire cout;
wire [2:0] c;
integer i,j,k;

adder_subtractor dut(
.A(a),
.B(b),
.Cin(cin),
.Y(y),
.Z(z),
.Cout(cout));

initial begin
$dumpfile("adder_subtractor.vcd");
$dumpvars(0,adder_subtractor_tb);

for(k=0; k<2; k=k+1) begin
cin=k;
for(i=0; i<16; i=i+1) begin
for(j=0; j<16; j=j+1) begin
a=i;
b=j;
#10;
end
end
end
$finish;
end
endmodule

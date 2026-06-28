module paraller_adder_tb;
reg [3:0]a,b;
reg cin;
wire [3:0] s;
wire cout;
integer i,j,k;

paraller_adder dut(
.A(a),
.B(b),
.Cin(cin),
.S(s),
.Cout(cout));

initial begin
$dumpfile("paraller_adder.vcd");
$dumpvars(0,paraller_adder_tb);

for(k=0; k<2; k=k+1) begin
cin= k;
for(i=0; i<16; i=i+1) begin
for(j=0; j<16; j=j+1)begin
a=i;
b=j;
#10;
end 
end
end
$finish;
end
endmodule

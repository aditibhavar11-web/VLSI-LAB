module full_adder_tb;
reg a,b,c;
wire sum,carry;
integer i;
full_adder dut(
.A(a),
.B(b),
.C(c),
.Sum(sum),
.Carry(carry));

initial begin

$dumpfile("full_adder.vcd");
$dumpvars(0,full_adder_tb);

for(i=0; i<8; i=i+1) begin
{a,b,c}=i;
#10;
end
$finish ;
end
initial begin
$monitor("A=%b,B=%b,C=%b,Sum=%b,Carry=%b",a,b,c,sum,carry);
end
endmodule

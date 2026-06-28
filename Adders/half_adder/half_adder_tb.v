module half_adder_tb;
reg a,b;
wire sum,carry;
integer i;
half_adder dut(
.A(a),
.B(b),
.Sum(sum),
.Carry(carry));

initial begin

$dumpfile("half_adder.vcd");
$dumpvars(0,half_adder_tb);

for(i=0; i<4; i=i+1) begin
{a,b}=i;
#10;
end 
$finish ;
end
initial begin
$monitor("A=%b,B=%b,Sum=%b,Carry=%b",a,b,sum,carry);
end
endmodule

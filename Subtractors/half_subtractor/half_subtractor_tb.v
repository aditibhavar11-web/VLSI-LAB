module half_sub_tb;
reg a,b;
wire sub,borrow;
integer i;
half_sub dut(
.A(a),
.B(b),
.Sub(sub),
.Borrow(borrow));

initial begin

$dumpfile("half_sub.vcd");
$dumpvars(0,half_sub_tb);

for(i=0; i<4; i=i+1) begin
{a,b}=i;
#10;
end
$finish ;
end
initial begin
$monitor("A=%b,B=%b,Sub=%b,Borrow=%b",a,b,sub,borrow);
end
endmodule

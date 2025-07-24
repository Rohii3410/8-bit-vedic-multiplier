`timescale 1 ns/1 ns
`include "vedic8bit.v"

module vedic8bit_tb();

reg [7:0]a,b;
wire [15:0]t;integer i;

vedic8bit dut(t,a,b);

initial
begin
$monitor ("a,b-%d,%d --> t-%d",a,b,t);

for(i=0;i<65536;i=i+1)
begin
	{a,b}=i;#5;
end

end

endmodule

//////////////////////////////////////////////////////////////////////////////////
// Design: Test bench for Johnson Counter
// Engineer: kiran
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module test_johnson_counter( );

  parameter N = 4;
  //inputs for DUT
  reg clk, rst;
  //outputs for DUt
  wire [N-1:0] out;

  johnson_counter DUT (.clk(clk), .rst(rst), .out(out));

  initial
        begin
            $display($time, " << Simulation Results >>");
            $monitor($time, "clk = %b, rst = %b, out = %b", clk, rst, out);
        end

  always #10 clk = ~clk;

  initial begin
    clk = 1;
    rst = 1;

    #5 rst = 1;
	#20 rst = 0;
	#275 $finish;
  end


endmodule

`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:39:32 06/17/2026
// Design Name:   bcd_00_99
// Module Name:   /home/mohangandeti/Downloads/VLSI_RN/bcd_00_99/bcd_00_99_tb.v
// Project Name:  bcd_00_99
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bcd_00_99
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bcd_00_99_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] count0;
	wire [3:0] count1;

	// Instantiate the Unit Under Test (UUT)
	bcd_00_99 uut (
		.clk(clk), 
		.rst(rst), 
		.count0(count0), 
		.count1(count1)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
always #5 clk = ~clk;

task reset;
   begin
	   @(negedge clk);
		   rst = 1'b1;
	   @(negedge clk);
		    rst = 1'b0;
	end
endtask

initial
   begin
	  reset;
	end
      
endmodule


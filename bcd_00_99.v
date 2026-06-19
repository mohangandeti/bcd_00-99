`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:32:35 06/17/2026 
// Design Name: 
// Module Name:    bcd_00_99 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module bcd_00_99(input clk,rst, output reg [3:0]count0,count1
    );
always@(posedge clk)
   begin
	   if(rst)
		     count0 <= 4'b0;
		else
		   begin
			   if(count0 == 4'd9)
				    count0 <= 0;
				else
				   count0 <= count0 + 1;
			end
	end
	
always@(posedge clk)
    begin
	    if(rst)
		    count1 <= 0;
		 else
		    begin
			   if(count0 == 4'd9 && count1 <= 4'd9)
				    count1 <= count1 +1;
				else if(count0 == 4'd9 && count1 == 4'd9)
				    count1 <= 0;
				else
				   count1 <= count1;
			 end
	end
				   
			  

endmodule

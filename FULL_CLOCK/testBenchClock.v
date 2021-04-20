`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 		 Letuchiy Sergey
// 
// Create Date:    21:57:11 06/25/2015 
// Design Name: 	 Clock project
// Module Name:    Clock_one 
// Project Name:   Simple clock
// Target Devices: SPARTAN-6
// Tool versions: 
// Description:    Test bench
//
// Dependencies:   none
//
// Revision: 		 0.0.0.1
// Revision 0.01 - File Created
// Additional Comments: none
//
//////////////////////////////////////////////////////////////////////////////////

module testBenchClock;

	// Inputs
	reg iclk;

   reg [1:0] Iswch;	
	reg iBUT1;
	reg iBUT2;

	// Outputs
	wire [13:0] iOUTCR;

	// Instantiate the Unit Under Test (UUT)
	Clock_one uut (
		.clk(iclk),
		.swch(Iswch),
		.BUT1(iBUT1),
		.BUT2(iBUT2),
		.OUTCR(iOUTCR)
	);

	initial begin
		// Initialize Inputs
      iclk  = 1'b0;		  
		Iswch = {1'b0,1'b1};
		iBUT1 = 1'b1;
		iBUT2 = 1'b1;
		
		forever #10 iclk   = ~iclk;

	end
      
endmodule

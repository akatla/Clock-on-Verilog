`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:		Sergey Letuchiy
// 
// Create Date:    12:05:11 26/11/2018 
// Design Name: 	 Clock project
// Module Name:    Clock_one 
// Project Name:   Simple clock with voice alarm!
// Target Devices: SPARTAN-6
// Tool versions: 
// Description:    Try to create clock and be cool and have a fun
// working with FPGA! :)
// Dependencies:   Alekx Sugonayev Kartaly
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Bublik_two(
		inrg,
		DNM
	);  
   
	input [1:0]inrg;
	output reg [3:0]DNM;
	
	always @ (inrg)
	begin
		case(inrg)			
			
			2'b00: DNM <= 4'b0111;
			2'b01: DNM <= 4'b1011;
			2'b10: DNM <= 4'b1101;
			2'b11: DNM <= 4'b1110;
			
		endcase
	end   

endmodule

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
module Bublik_segment(
		inrg,
		DNMSEG
	);  
   
	input [3:0]inrg;
	output reg [6:0]DNMSEG;
	
	always @ (inrg)
	begin
		case(inrg)			
								     //abcdefg
			4'b0000: DNMSEG <= 7'b1111110; // 0			
			4'b0001: DNMSEG <= 7'b0110000; // 1
			4'b0010: DNMSEG <= 7'b1101101; // 2		
			4'b0011: DNMSEG <= 7'b1111001; // 3
			4'b0100: DNMSEG <= 7'b0110011; // 4
			4'b0101: DNMSEG <= 7'b1011011; // 5
			4'b0110: DNMSEG <= 7'b1011111; // 6			
			4'b0111: DNMSEG <= 7'b1110000; // 7
			4'b1000: DNMSEG <= 7'b1111111; // 8
			4'b1001: DNMSEG <= 7'b1111011; // 9						
			4'b1010: DNMSEG <= 7'b1110111; // A			
			4'b1011: DNMSEG <= 7'b0011111; // B			
			4'b1100: DNMSEG <= 7'b1001110; // C
			4'b1101: DNMSEG <= 7'b0111101; // D
			4'b1110: DNMSEG <= 7'b1001111; // E		
			4'b1111: DNMSEG <= 7'b1000111; // F			
				
		endcase
	end   

endmodule

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
module SixteenToFour(selData, numPart0, numPart1, numPart2, numPart3, outData);
    input wire [1:0] selData;
    	 
	 input wire [3:0]numPart0;
    input wire [3:0]numPart1;
	 input wire [3:0]numPart2;
	 input wire [3:0]numPart3;
	 
	 output reg [3:0] outData;

    always @(selData, numPart0, numPart1, numPart2, numPart3)
    begin
        case (selData)
            2'b00: outData <= numPart0;
				2'b01: outData <= numPart1;
            2'b10: outData <= numPart2;
            2'b11: outData <= numPart3;            
        endcase
    end

endmodule

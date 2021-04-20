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
// Revision: 		 0.0.0.1
// Revision 0.01 - File Created
// Additional Comments: none
//
//////////////////////////////////////////////////////////////////////////////////
module SixteenToSixteen(
								selD, 
								numPart0, numPart1, numPart2, numPart3,
								numPart4, numPart5, numPart6, numPart7,
								numPart8, numPart9, numPart10, numPart11,
								numPart12, numPart13, numPart14, numPart15,
								outD
							  );
								
    input wire [1:0]selD;
    	 
	 input wire [3:0]numPart0;
    input wire [3:0]numPart1;
	 input wire [3:0]numPart2;
    input wire [3:0]numPart3;

	 input wire [3:0]numPart4;
    input wire [3:0]numPart5;
	 input wire [3:0]numPart6;
    input wire [3:0]numPart7;

	 input wire [3:0]numPart8;
    input wire [3:0]numPart9;
	 input wire [3:0]numPart10;
    input wire [3:0]numPart11;
	 
 	 input wire [3:0]numPart12;
    input wire [3:0]numPart13;
	 input wire [3:0]numPart14;
    input wire [3:0]numPart15;
	 
	 output reg [15:0] outD;

    always @(selD, numPart0, numPart1, numPart2, numPart3, 
				 numPart4, numPart5, numPart6, numPart7,
				 numPart8, numPart9, numPart10, numPart11, 
				 numPart12, numPart13, numPart14, numPart15)
    begin
        case (selD)
            2'b00: outD <= {numPart12, numPart13, numPart14, numPart15};
				2'b01: outD <= {numPart4, numPart5, numPart6, numPart7};
	         2'b10: outD <= {numPart8, numPart9, numPart10, numPart11};
   			2'b11: outD <= {numPart0, numPart1, numPart2, numPart3};
        endcase
    end

endmodule

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
//Clock Input:48M
module onbeep
(
	input	 clk,
	input  en,
	output beep	
);

wire[31:0]addcnt; 
reg[31:0]cnt_khz = {32{1'b0}};
reg clk_1k = 1'b0;

assign addcnt[31:0] = cnt_khz[31:0] + 1'b1; 
assign beep = clk_1k;

	always@(posedge clk)
		
		if(cnt_khz[31:0] == 32'b0000_0000_0000_0000_0101_1101_1100_0000)
			begin 				
				cnt_khz[31:0] <= {32{1'b0}};
				if(en == 1'b1) begin
					clk_1k <= !clk_1k;
				end
			end
		
		else begin 
			cnt_khz[31:0] <= addcnt[31:0];
			end

endmodule

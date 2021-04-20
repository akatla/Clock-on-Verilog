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
module UnBounceBB(
input  iclk,
input  iin ,
output iout
);

parameter STAGE = 10;

wire  [STAGE-1:0] chain_nxt;
wire  deb_nxt; 
reg   [STAGE-1:0] chain;
reg   deb;
 
assign iout = deb;
assign chain_nxt = {chain[STAGE-2:0], iin};
assign deb_nxt   = &chain[STAGE-1:1] ? 1'b1 : ~(|chain[STAGE-1:1]) ? 1'b0 : deb;

always @(posedge iclk)
	begin
        chain <= chain_nxt;
        deb   <= deb_nxt;
	end
 
endmodule

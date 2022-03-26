`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:59:53 08/02/2015 
// Design Name: 
// Module Name:    UnBounceBB 
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

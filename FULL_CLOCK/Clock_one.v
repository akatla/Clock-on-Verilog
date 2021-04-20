`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 		 Letuchiy Sergey
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
module Clock_one #(parameter MAINCLOCK = 25)
	(
	 input    clk, 
	 input    [1:0]swch,
	 input 	 BUT1,
	 input 	 BUT2,
	 output   [15:0]OUTCR
	 );

reg  [1:0]Reg_dynamics = 2'b0;
reg  [MAINCLOCK:0]RG = {(MAINCLOCK+1){1'b0}};
reg  sec1KHZ = 1'b0;
reg  tikTak = 1'b0;
reg  SETtikTak = 1'b0;
reg  [1:0]Atamaton = 2'b0;
reg  ALARM = 1'b1;

// Milisecundes registers.
reg  [3:0]Reg_milisecth = 4'b0;
reg  [3:0]Reg_milisecsec = 4'b0;
reg  [3:0]Reg_milisecfrst = 4'b0;

// Clock count minutes junior number.
reg  [3:0]Reg_secundes = 4'b0;
// Clock count minutes senior number.
reg  [2:0]Reg_secten = 3'b0;

// Clock count minutes junior number.
reg  [3:0]Reg_minutes = 4'b0;
reg  [3:0]Reg_minTT = 4'b0101;
// Clock count minutes senior number.
reg  [2:0]Reg_minten = 3'b0;
reg  [2:0]Reg_mTT = 3'b0;

// Clock count hours junior number.
reg  [3:0]Reg_HourJun = 4'b0;
reg  [3:0]Reg_HourTT = 4'b0;
// Clock count hours senior number.
reg  [1:0]Reg_HourSen = 2'b0;
reg  [1:0]Reg_TT = 2'b0;

wire in_BUT1;
wire in_BUT2;
wire in_BUT3;
wire in_BUT4;

wire [MAINCLOCK:0]add;
wire [1:0]add_dynamics;
wire [3:0]Connect_MUX;
wire [15:0]Connect_MUXTWO;
wire GND;

// Adderr milisecs
wire [3:0]add_milisecth;
wire [3:0]add_milisecsec;
wire [3:0]add_milisecfrst;

// Clock adders minutes.
wire [3:0]add_secundes;
// Clock adders hours.
wire [2:0]add_secten;

// Clock adders minutes.
wire [3:0]add_minutes;
wire [3:0]add_minTT;
// Clock adders hours.
wire [2:0]add_minten;
wire [2:0]add_mTT;

// Clock adders hours junior.
wire [3:0]add_HourJun;
wire [3:0]add_HourTT;
// Clock adders hours senior.
wire [1:0]add_HourSen;
wire [1:0]add_TT;

// All milisecundes pushers
assign add_milisecth[3:0] = Reg_milisecth[3:0] + 1'b1; 
assign add_milisecsec[3:0] = Reg_milisecsec[3:0] + 1'b1;
assign add_milisecfrst[3:0] = Reg_milisecfrst[3:0] + 1'b1;

// All pusher counters
assign add[MAINCLOCK:0] = RG[MAINCLOCK:0] + 1'b1;
assign add_dynamics[1:0] = Reg_dynamics[1:0] + 1'b1;

assign add_secundes[3:0] = Reg_secundes[3:0] + 1'b1;
assign add_secten[2:0] = Reg_secten[2:0] + 1'b1;
assign add_minutes[3:0] = Reg_minutes[3:0] + 1'b1;
assign add_minten[2:0] = Reg_minten[2:0] + 1'b1;
assign add_HourJun[3:0] = Reg_HourJun[3:0] + 1'b1;
assign add_HourSen[1:0] = Reg_HourSen[1:0] + 1'b1;

// Wake up set.
assign add_HourTT[3:0] = Reg_HourTT[3:0] + 1'b1;
assign add_TT[1:0] = Reg_TT[1:0] + 1'b1;

assign add_minTT[3:0] = Reg_minTT[3:0] + 1'b1;
assign add_mTT[2:0] = Reg_mTT[2:0] + 1'b1;

assign OUTCR[11] = Reg_secundes[0];
assign OUTCR[12] = RG[MAINCLOCK];
// assign OUTCR[13] = ALARM;
assign OUTCR[14] = 1'b1;
assign OUTCR[15] = 1'b1;

assign GND = 0;

// UnBounce  swch[0].
UnBounceBB ubnc_c(.iclk(sec1KHZ), .iin(swch[0]), .iout(in_BUT3));

// UnBounce  swch[1].
UnBounceBB ubnc_d(.iclk(sec1KHZ), .iin(swch[1]), .iout(in_BUT4));

always@(in_BUT3, in_BUT4) begin
		Atamaton[0] <= in_BUT4;
		Atamaton[1] <= in_BUT3;
end

// UnBounce modules to set alarm clock.
UnBounceBB ubnc_a(.iclk(sec1KHZ), .iin(BUT1), .iout(in_BUT1));

// UnBounce modules preset clock.
UnBounceBB ubnc_b(.iclk(sec1KHZ), .iin(BUT2), .iout(in_BUT2));

// Main clockwise.
always@(posedge clk) begin

		  // Check ALARM is CominUP!!!
		  if({Reg_HourSen[1:0],Reg_HourJun[3:0],Reg_minten[2:0],Reg_minutes[3:0]}
		   == {Reg_TT[1:0],Reg_HourTT[3:0],Reg_mTT[2:0],Reg_minTT[3:0]}) 
			begin
			 ALARM <= RG[MAINCLOCK];
			end
		  else begin
			 ALARM <= 1'b0;
		  end
		  		  
		  SETtikTak <= (RG[MAINCLOCK-2:0] == 25'b1011_1110_1011_1100_0010_0000) ? 1'b1 : 1'b0;

		  // Secuence main.
		  if(RG[MAINCLOCK:0] < 26'b10_1111_1010_1111_0000_1000_0000) begin
			RG[MAINCLOCK:0] <= add[MAINCLOCK:0];
			tikTak <= 1'b0;
		  end
		  else begin
		   RG[MAINCLOCK:0] <= {(MAINCLOCK+1){1'b0}};
		   tikTak <= 1'b1;			
		  end		  
		
		  // Secuence 1 kHz.
		  sec1KHZ <= (RG[15:0] == 16'b0110_0001_1010_0111) ? 1'b1 : 1'b0; 
		  
		  if(sec1KHZ)
		  begin
		  	  Reg_dynamics[1:0] <= add_dynamics[1:0];
		  end		  
			
			// Preset hours.
			if ((Atamaton[1:0] == {1'b1, 1'b1}) && (SETtikTak && !in_BUT1)) begin	

						if({Reg_HourSen[1:0],Reg_HourJun[3:0]} == {2'b10,4'b0011}) begin							 
							Reg_HourJun[3:0] <= 4'b0;
							Reg_HourSen[1:0] <= 2'b0;
						end 
						else begin
						
							// Hours junior
							if(Reg_HourJun[3:0] < 4'b1001) begin						
								Reg_HourJun[3:0] <= add_HourJun[3:0];						
							end
							else begin						  
								Reg_HourJun[3:0] <= 4'b0;							 
							// Hours senior
								if(Reg_HourSen[1:0] < 2'b10) begin
									Reg_HourSen[1:0] <= add_HourSen[1:0];
								end
								else begin
									Reg_HourSen[1:0] <= 2'b0;				 
								end							 
						   end						  
						end
						
			end
			
			// Preset minutes.
			if ((Atamaton[1:0] == {1'b1, 1'b1}) && (SETtikTak && !in_BUT2)) begin	

							// Minutes junior.  
							if(Reg_minutes[3:0] < 4'b1001) begin
								Reg_minutes[3:0] <= add_minutes[3:0];
							end

							else begin
							Reg_minutes[3:0] <= 4'b0;
									// Minutes senior.
									if(Reg_minten[2:0] < 3'b101) begin
									Reg_minten[2:0] <= add_minten[2:0];
									end
									else begin
									Reg_minten[2:0] <= 3'b0;
									end
							end
							
			end
			
			if(tikTak) begin
// ******************** Clock registers start. *************************************************
				// Secundes junior
				if(Reg_secundes[3:0] < 4'b1001) begin				 
					Reg_secundes[3:0] <= add_secundes[3:0];
				end
				else begin
					Reg_secundes[3:0] <= 4'b0;
						// Secundes senior
						if(Reg_secten[2:0] < 3'b101) begin
							Reg_secten[2:0] <= add_secten[2:0];					
						end
						else begin
							Reg_secten[2:0] <= 3'b0;
							// Minutes junior.  
							if(Reg_minutes[3:0] < 4'b1001) begin
								Reg_minutes[3:0] <= add_minutes[3:0];
							end
							else begin
							Reg_minutes[3:0] <= 4'b0;
									// Minutes senior.
									if(Reg_minten[2:0] < 3'b101) begin
									Reg_minten[2:0] <= add_minten[2:0];
									end
									else begin
									Reg_minten[2:0] <= 3'b0;
									
										if({Reg_HourSen[1:0],Reg_HourJun[3:0]} == {2'b10,4'b0011}) begin							 
											Reg_HourJun[3:0] <= 4'b0;
											Reg_HourSen[1:0] <= 2'b0;
										end 
										else begin
										// Hours junior
										if(Reg_HourJun[3:0] < 4'b1001) begin						
												Reg_HourJun[3:0] <= add_HourJun[3:0];						
										end
										else begin						  
												Reg_HourJun[3:0] <= 4'b0;							 
												// Hours senior
												if(Reg_HourSen[1:0] < 2'b10) begin
														Reg_HourSen[1:0] <= add_HourSen[1:0];
											   end
											   else begin
														Reg_HourSen[1:0] <= 2'b0;				 
												 	  end							 
											 end
										end									
									end							
							end							
						end						
			end				
// ******************** Clock registers end. ***************************************************			
			end
end

// ****************************** Milliseconds clockwise start. ********************************
// Milliseconds third digit. ** negedge
always@(posedge clk) begin
		
   	if(sec1KHZ) begin
			if(Reg_milisecth[3:0] < 4'b1001) begin
				 Reg_milisecth[3:0] <= add_milisecth[3:0];
				end
			else begin
				 Reg_milisecth[3:0] <= 4'b0;
				 
						if(Reg_milisecsec[3:0] < 4'b1001) begin
							Reg_milisecsec[3:0] <= add_milisecsec[3:0];
						end
						else begin
							Reg_milisecsec[3:0] <= 4'b0;
								
								if(Reg_milisecfrst[3:0] < 4'b1001) begin
									Reg_milisecfrst[3:0] <= add_milisecfrst[3:0];
								end
								else begin
									Reg_milisecfrst[3:0] <= 4'b0;
								end
						end
				end
		end
end
// *************************** Milliseconds clockwise end. **************************************

// Set ALARM CLOCK. *****************************************************************************
always@(negedge in_BUT1) begin	
	if(Atamaton[1:0] == {1'b0, 1'b0}) begin
		if({Reg_TT[1:0],Reg_HourTT[3:0]} == {2'b10,4'b0011}) begin							 
			Reg_HourTT[3:0] <= 4'b0;
  		   Reg_TT[1:0] <= 2'b0;
		end 
		else begin
			// Hours junior
			if(Reg_HourTT[3:0] < 4'b1001) begin						
				Reg_HourTT[3:0] <= add_HourTT[3:0];						
			end
			else begin						  
				Reg_HourTT[3:0] <= 4'b0;							 
				// Hours senior
				if(Reg_TT[1:0] < 2'b10) begin
					Reg_TT[1:0] <= add_TT[1:0];
				end
				else begin
					Reg_TT[1:0] <= 2'b0;				 
				end							 
			end
		end												
	end	
end
 
always@(negedge in_BUT2) begin	
			if (Atamaton[1:0] == {1'b0, 1'b0}) begin	
							// Minutes junior.  
							if(Reg_minTT[3:0] < 4'b1001) begin
								Reg_minTT[3:0] <= add_minTT[3:0];
							end

							else begin
							Reg_minTT[3:0] <= 4'b0;
									// Minutes senior.
									if(Reg_mTT[2:0] < 3'b101) begin
									Reg_mTT[2:0] <= add_mTT[2:0];
									end
									else begin
									Reg_mTT[2:0] <= 3'b0;
									end
							end							
			end
end
// **********************************************************************************************

// Alarm beep 1 kGh.
onbeep beepalarm ( .clk(clk), .en(ALARM), .beep(OUTCR[13]) );

									
// Multiplexer commutator.
SixteenToSixteen switchData(
									
									.selD({in_BUT4,in_BUT3}), 																		
									
									.numPart15(Reg_minTT[3:0]), 
									.numPart14({GND,Reg_mTT[2:0]}), 
									.numPart13(Reg_HourTT[3:0]), 
									.numPart12({{2{GND}},Reg_TT[1:0]}), 

									.numPart11(Reg_milisecth[3:0]), 
									.numPart10(Reg_milisecsec[3:0]), 
									.numPart9(Reg_milisecfrst[3:0]), 
									.numPart8(Reg_secundes[3:0]), 									

									.numPart7(Reg_secundes[3:0]), 
									.numPart6({GND,Reg_secten[2:0]}), 
									.numPart5(Reg_minutes[3:0]), 
									.numPart4({GND,Reg_minten[2:0]}),

									.numPart3(Reg_minutes[3:0]), 
									.numPart2({GND,Reg_minten[2:0]}), 
									.numPart1(Reg_HourJun[3:0]), 
									.numPart0({{2{GND}},Reg_HourSen[1:0]}), 
									 
   								.outD(Connect_MUXTWO[15:0])
									
									 );

// Multiplexer itself.
SixteenToFour stofmult(

							 .selData(Reg_dynamics[1:0]), 

							 .numPart0(Connect_MUXTWO[3:0]), 
							 .numPart1(Connect_MUXTWO[7:4]), 
							 .numPart2(Connect_MUXTWO[11:8]), 
							 .numPart3(Connect_MUXTWO[15:12]), 
							
							 .outData(Connect_MUX[3:0])
							 
						    );

// Dynamic decoder.
Bublik_two Dynamic_d(.inrg(Reg_dynamics[1:0]), .DNM(OUTCR[3:0]));

// Seven segment decoder.
Bublik_segment serout(.inrg(Connect_MUX[3:0]), .DNMSEG(OUTCR[10:4]));

endmodule

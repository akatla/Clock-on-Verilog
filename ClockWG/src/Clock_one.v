`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:       Letuchiy Sergey
// 
// Create Date:    21:57:11 24/03/2022 
// Design Name:    Clock FPGA
// Module Name:    Clock_TOP
// Project Name:   Simple clock solution
// Target Devices: GW1N-LV1QN48C6/I5
// Tool versions: 
// Description:    Try to create clock.
//
// Dependencies:   none
//
// Revision:       2.0.2.1
// Revision 0.31 - File Created
// Additional Comments: N/A
//
//////////////////////////////////////////////////////////////////////////////////
module TOP #(parameter MAINCLOCK = 24)
	(
	 input   clk, 
	 input   [1:0]swch,
	 input 	 BUT1,
	 input 	 BUT2,
	 output  [13:0]OUTCR
	 );


reg [6:0]digits_rom[15:0];

initial begin
			digits_rom[0]= 7'b0000001; // 0
			digits_rom[1]= 7'b1001111; // 1
			digits_rom[2]= 7'b0010010; // 2
			digits_rom[3]= 7'b0000110; // 3
			digits_rom[4]= 7'b1001100; // 4
			digits_rom[5]= 7'b0100100; // 5
			digits_rom[6]= 7'b0100000; // 6
			digits_rom[7]= 7'b0001111; // 7
			digits_rom[8]= 7'b0000000; // 8
			digits_rom[9]= 7'b0000100; // 9
			digits_rom[10]= 7'b0001000; // A
			digits_rom[11]= 7'b1100000; // b
			digits_rom[12]= 7'b0110001; // C
			digits_rom[13]= 7'b1000010; // d
			digits_rom[14]= 7'b0110000; // E
			digits_rom[15]= 7'b0111000; // F			
end

reg  [3:0]Reg_dynamics = 4'b0001;
reg  [MAINCLOCK:0]RG = {(MAINCLOCK+1){1'b0}};
reg  sec1KHZ = 1'b0;
reg  tikTak = 1'b0;
reg  SETtikTak = 1'b0;
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

wire [3:0]Connect_MUX;
wire in_BUT1;
wire in_BUT2;
wire in_BUT3;
wire in_BUT4;

wire [MAINCLOCK:0]add;
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

// Mux - display.
wire [1:0]selectorDg = {in_BUT3,in_BUT4}; 
wire [3:0]Digit1 = (selectorDg == 2'b11) ? {{2{GND}},Reg_HourSen[1:0]} : (selectorDg == 2'b10) ? {GND,Reg_minten[2:0]}  : (selectorDg == 2'b01) ? Reg_secundes[3:0]     : {{2{GND}},Reg_TT[1:0]};
wire [3:0]Digit2 = (selectorDg == 2'b11) ? Reg_HourJun[3:0]            : (selectorDg == 2'b10) ? Reg_minutes[3:0]       : (selectorDg == 2'b01) ? Reg_milisecfrst[3:0]  : Reg_HourTT[3:0];
wire [3:0]Digit3 = (selectorDg == 2'b11) ? {GND,Reg_minten[2:0]}       : (selectorDg == 2'b10) ? {GND,Reg_secten[2:0]}  : (selectorDg == 2'b01) ? Reg_milisecsec[3:0]   : {GND,Reg_mTT[2:0]};
wire [3:0]Digit4 = (selectorDg == 2'b11) ? Reg_minutes[3:0]            : (selectorDg == 2'b10) ? Reg_secundes[3:0]      : (selectorDg == 2'b01) ? Reg_milisecth[3:0]    : Reg_minTT[3:0];

// All milisecundes pushers
assign add_milisecth[3:0] = Reg_milisecth[3:0] + 1'b1; 
assign add_milisecsec[3:0] = Reg_milisecsec[3:0] + 1'b1;
assign add_milisecfrst[3:0] = Reg_milisecfrst[3:0] + 1'b1;

// All pusher counters
assign add[MAINCLOCK:0] = RG[MAINCLOCK:0] + 1'b1;

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

assign OUTCR[11]  = Reg_secundes[0];
assign OUTCR[12]  = RG[MAINCLOCK];
assign OUTCR[13]  = ALARM;
assign OUTCR[3:0] = Reg_dynamics[3:0];

// Mux Digit
assign Connect_MUX[3:0] = (Reg_dynamics[3:0] == 4'b0001) ? Digit1 : (Reg_dynamics[3:0] == 4'b0010) ?  Digit2 : (Reg_dynamics[3:0] == 4'b0100) ? Digit3 : Digit4;

// Seven segment decoder.
assign OUTCR[10:4] = digits_rom[Connect_MUX][6:0];

assign GND = 0;

// UnBounce  swch[0].
UnBounceBB ubnc_c(.iclk(sec1KHZ), .iin(swch[0]), .iout(in_BUT3));

// UnBounce  swch[1].
UnBounceBB ubnc_d(.iclk(sec1KHZ), .iin(swch[1]), .iout(in_BUT4));

// UnBounce modules to set alarm clock.
UnBounceBB ubnc_a(.iclk(sec1KHZ), .iin(BUT1), .iout(in_BUT1));

// UnBounce modules preset clock.
UnBounceBB ubnc_b(.iclk(sec1KHZ), .iin(BUT2), .iout(in_BUT2));

// Main clockwise.
always@(posedge clk) begin

		  // Check ALARM is CominUP!!!
		  if({Reg_HourSen[1:0],Reg_HourJun[3:0],Reg_minten[2:0],Reg_minutes[3:0]}
		   == {Reg_TT[1:0],Reg_HourTT[3:0],Reg_mTT[2:0],Reg_minTT[3:0]}) begin
			 ALARM <= RG[MAINCLOCK];
		  end
		  else begin
			 ALARM <= 1'b1;
		  end
		  
		  SETtikTak <= (RG[MAINCLOCK-2:0] == 24'b0101_1111_0101_1110_0001_0000) ? 1'b1 : 1'b0;

		  // Secuence main.
		  if(RG[MAINCLOCK:0] < 25'b1_0111_1101_0111_1000_0100_0000) begin
			RG[MAINCLOCK:0] <= add[MAINCLOCK:0];
			tikTak <= 1'b0;
		  end
		  else begin
		   RG[MAINCLOCK:0] <= {(MAINCLOCK+1){1'b0}};
		   tikTak <= 1'b1;			
		  end		  
		
		  // Secuence 1 kHz.
		  sec1KHZ <= (RG[15:0] == 16'b0011_0000_1101_0011) ? 1'b1 : 1'b0; 
		  
		  if(sec1KHZ)
		  begin
		  	  Reg_dynamics <= {Reg_dynamics[2:0], Reg_dynamics[3]};
		  end		  
			
			// Prese hours.
			if (({in_BUT3,in_BUT4} == {1'b1, 1'b1}) && (SETtikTak && !in_BUT1)) begin	

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
			if (({in_BUT3,in_BUT4} == {1'b1, 1'b1}) && (SETtikTak && !in_BUT2)) begin	

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
	if({in_BUT3,in_BUT4} == {1'b0, 1'b0}) begin
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
			if ({in_BUT3,in_BUT4} == {1'b0, 1'b0}) begin	
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

endmodule

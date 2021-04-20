////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Clock_one_synthesis.v
// /___/   /\     Timestamp: Mon Nov 26 11:57:07 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Clock_one.ngc Clock_one_synthesis.v 
// Device	: xc6slx9-3-tqg144
// Input file	: Clock_one.ngc
// Output file	: C:\0_FPGA_2018\NEW_BOARD\FULL_CLOCK\netgen\synthesis\Clock_one_synthesis.v
// # of Modules	: 1
// Design Name	: Clock_one
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Clock_one (
  clk, BUT1, BUT2, swch, OUTCR
);
  input clk;
  input BUT1;
  input BUT2;
  input [1 : 0] swch;
  output [15 : 0] OUTCR;
  wire swch_0_IBUF_0;
  wire swch_1_IBUF_1;
  wire clk_BUFGP_2;
  wire BUT1_IBUF_3;
  wire BUT2_IBUF_4;
  wire \beepalarm/clk_1k_5 ;
  wire SETtikTak_6;
  wire tikTak_7;
  wire sec1KHZ_BUFG_8;
  wire ALARM_35;
  wire \ubnc_a/deb_43 ;
  wire \ubnc_b/deb_44 ;
  wire \ubnc_c/deb_45 ;
  wire \ubnc_d/deb_46 ;
  wire _n0292_47;
  wire _n0315_48;
  wire OUTCR_3_OBUF_53;
  wire OUTCR_2_OBUF_54;
  wire OUTCR_1_OBUF_55;
  wire OUTCR_0_OBUF_56;
  wire GND_1_o_GND_1_o_equal_19_o;
  wire \RG[15]_GND_1_o_equal_22_o ;
  wire OUTCR_10_OBUF_59;
  wire OUTCR_9_OBUF_60;
  wire OUTCR_8_OBUF_61;
  wire OUTCR_7_OBUF_62;
  wire OUTCR_6_OBUF_63;
  wire OUTCR_5_OBUF_64;
  wire OUTCR_4_OBUF_65;
  wire \Reg_HourSen[1]_Reg_TT[1]_equal_18_o ;
  wire _n0327;
  wire \Atamaton[1]_GND_1_o_equal_104_o ;
  wire OUTCR_14_OBUF_73;
  wire GND_0;
  wire _n0365_inv;
  wire _n0380_inv;
  wire Mcount_Reg_minutes;
  wire Mcount_Reg_minutes1;
  wire Mcount_Reg_minutes2;
  wire Mcount_Reg_minutes3;
  wire \RG[25]_PWR_1_o_LessThan_20_o_inv ;
  wire \Result<0>1 ;
  wire \Result<1>1 ;
  wire \Result<0>2 ;
  wire \Result<1>2 ;
  wire \Result<2>1 ;
  wire \Result<3>1 ;
  wire \Result<0>3 ;
  wire \Result<1>3 ;
  wire \Result<2>2 ;
  wire \Result<0>4 ;
  wire \Result<1>4 ;
  wire \Result<2>3 ;
  wire \Result<3>2 ;
  wire \Result<0>6 ;
  wire \Result<1>6 ;
  wire \Result<2>5 ;
  wire \Result<3>4 ;
  wire \Result<0>7 ;
  wire \Result<1>7 ;
  wire \Result<2>6 ;
  wire \Result<3>5 ;
  wire \Result<4>1 ;
  wire \Result<5>1 ;
  wire \Result<6>1 ;
  wire \Result<7>1 ;
  wire \Result<8>1 ;
  wire \Result<9>1 ;
  wire \Result<10>1 ;
  wire \Result<11>1 ;
  wire \Result<12>1 ;
  wire \Result<13>1 ;
  wire \Result<14>1 ;
  wire \Result<15>1 ;
  wire \Result<16>1 ;
  wire \Result<17>1 ;
  wire \Result<18>1 ;
  wire \Result<19>1 ;
  wire \Result<20>1 ;
  wire \Result<21>1 ;
  wire \Result<22>1 ;
  wire \Result<23>1 ;
  wire \Result<24>1 ;
  wire \Result<25>1 ;
  wire in_BUT1_inv;
  wire Mcount_Reg_HourTT_val_190;
  wire \Result<0>8 ;
  wire \Result<1>8 ;
  wire \Result<2>7 ;
  wire \Result<3>6 ;
  wire in_BUT2_inv;
  wire \Result<0>9 ;
  wire \Result<1>9 ;
  wire \Result<2>8 ;
  wire _n0516_inv;
  wire Mcount_Reg_TT_val_200;
  wire \Result<0>10 ;
  wire \Result<1>10 ;
  wire \Result<1>11 ;
  wire \Result<3>7 ;
  wire \Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_lut<0>_211 ;
  wire \Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_cy<0>_212 ;
  wire \Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_lut<1>_213 ;
  wire \Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_cy<1>_214 ;
  wire \Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_lut<2>_215 ;
  wire \Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_cy<2>_216 ;
  wire \Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_lut<3>_217 ;
  wire \Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_cy<3>_218 ;
  wire \Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_lut<4>_219 ;
  wire \Reg_dynamics<1>_81_312 ;
  wire \Reg_dynamics<1>_73_313 ;
  wire \Reg_dynamics<1>_72_314 ;
  wire \Reg_dynamics<1>_61_315 ;
  wire \Reg_dynamics<1>_8_316 ;
  wire \Reg_dynamics<1>_71_317 ;
  wire \Reg_dynamics<1>_7_318 ;
  wire \Reg_dynamics<1>_6_319 ;
  wire \stofmult/Mmux_outData_8_320 ;
  wire \stofmult/Mmux_outData_71_321 ;
  wire \stofmult/Mmux_outData_7_322 ;
  wire \stofmult/Mmux_outData_6_323 ;
  wire \beepalarm/_n0018_inv1 ;
  wire _n02921;
  wire _n03153;
  wire _n03273;
  wire \GND_1_o_GND_1_o_equal_19_o<23>1_328 ;
  wire _n029212;
  wire \ubnc_c/_n0013_339 ;
  wire \ubnc_c/chain[9]_reduce_and_2_o ;
  wire \ubnc_b/_n0013_350 ;
  wire \ubnc_b/chain[9]_reduce_and_2_o ;
  wire \ubnc_a/_n0013_361 ;
  wire \ubnc_a/chain[9]_reduce_and_2_o ;
  wire \beepalarm/_n0018_inv11_372 ;
  wire \beepalarm/_n0018_inv12_373 ;
  wire \beepalarm/_n0018_inv13_374 ;
  wire \beepalarm/_n0018_inv14_375 ;
  wire \beepalarm/_n0018_inv16_376 ;
  wire N0;
  wire \Reg_dynamics<1>5 ;
  wire N2;
  wire N4;
  wire \RG[25]_PWR_1_o_LessThan_20_o_inv1_381 ;
  wire \RG[25]_PWR_1_o_LessThan_20_o_inv2_382 ;
  wire \RG[25]_PWR_1_o_LessThan_20_o_inv3_383 ;
  wire \GND_1_o_GND_1_o_equal_19_o<23>2_385 ;
  wire \GND_1_o_GND_1_o_equal_19_o<23>3_386 ;
  wire N10;
  wire N12;
  wire N14;
  wire N16;
  wire N18;
  wire N20;
  wire N22;
  wire N24;
  wire N26;
  wire N28;
  wire ALARM_glue_rst;
  wire Reg_minTT_0_glue_rst_419;
  wire Reg_minTT_2_glue_rst_420;
  wire \Mcount_RG_cy<1>_rt_421 ;
  wire \Mcount_RG_cy<2>_rt_422 ;
  wire \Mcount_RG_cy<3>_rt_423 ;
  wire \Mcount_RG_cy<4>_rt_424 ;
  wire \Mcount_RG_cy<5>_rt_425 ;
  wire \Mcount_RG_cy<6>_rt_426 ;
  wire \Mcount_RG_cy<7>_rt_427 ;
  wire \Mcount_RG_cy<8>_rt_428 ;
  wire \Mcount_RG_cy<9>_rt_429 ;
  wire \Mcount_RG_cy<10>_rt_430 ;
  wire \Mcount_RG_cy<11>_rt_431 ;
  wire \Mcount_RG_cy<12>_rt_432 ;
  wire \Mcount_RG_cy<13>_rt_433 ;
  wire \Mcount_RG_cy<14>_rt_434 ;
  wire \Mcount_RG_cy<15>_rt_435 ;
  wire \Mcount_RG_cy<16>_rt_436 ;
  wire \Mcount_RG_cy<17>_rt_437 ;
  wire \Mcount_RG_cy<18>_rt_438 ;
  wire \Mcount_RG_cy<19>_rt_439 ;
  wire \Mcount_RG_cy<20>_rt_440 ;
  wire \Mcount_RG_cy<21>_rt_441 ;
  wire \Mcount_RG_cy<22>_rt_442 ;
  wire \Mcount_RG_cy<23>_rt_443 ;
  wire \Mcount_RG_cy<24>_rt_444 ;
  wire \beepalarm/Mcount_cnt_khz_cy<1>_rt_445 ;
  wire \beepalarm/Mcount_cnt_khz_cy<2>_rt_446 ;
  wire \beepalarm/Mcount_cnt_khz_cy<3>_rt_447 ;
  wire \beepalarm/Mcount_cnt_khz_cy<4>_rt_448 ;
  wire \beepalarm/Mcount_cnt_khz_cy<5>_rt_449 ;
  wire \beepalarm/Mcount_cnt_khz_cy<6>_rt_450 ;
  wire \beepalarm/Mcount_cnt_khz_cy<7>_rt_451 ;
  wire \beepalarm/Mcount_cnt_khz_cy<8>_rt_452 ;
  wire \beepalarm/Mcount_cnt_khz_cy<9>_rt_453 ;
  wire \beepalarm/Mcount_cnt_khz_cy<10>_rt_454 ;
  wire \beepalarm/Mcount_cnt_khz_cy<11>_rt_455 ;
  wire \beepalarm/Mcount_cnt_khz_cy<12>_rt_456 ;
  wire \beepalarm/Mcount_cnt_khz_cy<13>_rt_457 ;
  wire \beepalarm/Mcount_cnt_khz_cy<14>_rt_458 ;
  wire \beepalarm/Mcount_cnt_khz_cy<15>_rt_459 ;
  wire \beepalarm/Mcount_cnt_khz_cy<16>_rt_460 ;
  wire \beepalarm/Mcount_cnt_khz_cy<17>_rt_461 ;
  wire \beepalarm/Mcount_cnt_khz_cy<18>_rt_462 ;
  wire \beepalarm/Mcount_cnt_khz_cy<19>_rt_463 ;
  wire \beepalarm/Mcount_cnt_khz_cy<20>_rt_464 ;
  wire \beepalarm/Mcount_cnt_khz_cy<21>_rt_465 ;
  wire \beepalarm/Mcount_cnt_khz_cy<22>_rt_466 ;
  wire \beepalarm/Mcount_cnt_khz_cy<23>_rt_467 ;
  wire \beepalarm/Mcount_cnt_khz_cy<24>_rt_468 ;
  wire \beepalarm/Mcount_cnt_khz_cy<25>_rt_469 ;
  wire \beepalarm/Mcount_cnt_khz_cy<26>_rt_470 ;
  wire \beepalarm/Mcount_cnt_khz_cy<27>_rt_471 ;
  wire \beepalarm/Mcount_cnt_khz_cy<28>_rt_472 ;
  wire \beepalarm/Mcount_cnt_khz_cy<29>_rt_473 ;
  wire \beepalarm/Mcount_cnt_khz_cy<30>_rt_474 ;
  wire \Mcount_RG_xor<25>_rt_475 ;
  wire \beepalarm/Mcount_cnt_khz_xor<31>_rt_476 ;
  wire \beepalarm/clk_1k_rstpot_477 ;
  wire \ubnc_d/deb_rstpot_478 ;
  wire \ubnc_c/deb_rstpot_479 ;
  wire \ubnc_b/deb_rstpot_480 ;
  wire \ubnc_a/deb_rstpot_481 ;
  wire N30;
  wire N32;
  wire Reg_HourSen_0_rstpot_484;
  wire Reg_HourSen_1_rstpot_485;
  wire N34;
  wire N36;
  wire N38;
  wire N39;
  wire N42;
  wire _n0416_inv1_rstpot_491;
  wire Reg_minten_0_dpot_492;
  wire Reg_minten_1_dpot_493;
  wire Reg_minten_2_dpot_494;
  wire N44;
  wire N46;
  wire ALARM_glue_rst_cy_rt_497;
  wire RG_0_rstpot_498;
  wire RG_1_rstpot_499;
  wire RG_2_rstpot_500;
  wire RG_3_rstpot_501;
  wire RG_4_rstpot_502;
  wire RG_5_rstpot_503;
  wire RG_6_rstpot_504;
  wire RG_7_rstpot_505;
  wire RG_8_rstpot_506;
  wire RG_9_rstpot_507;
  wire RG_10_rstpot_508;
  wire RG_11_rstpot_509;
  wire RG_12_rstpot_510;
  wire RG_13_rstpot_511;
  wire RG_14_rstpot_512;
  wire RG_15_rstpot_513;
  wire RG_16_rstpot_514;
  wire RG_17_rstpot_515;
  wire RG_18_rstpot_516;
  wire RG_19_rstpot_517;
  wire RG_20_rstpot_518;
  wire RG_21_rstpot_519;
  wire RG_22_rstpot_520;
  wire RG_23_rstpot_521;
  wire RG_24_rstpot_522;
  wire RG_25_rstpot_523;
  wire \RG[25]_PWR_1_o_LessThan_20_o_inv4_524 ;
  wire _n03081_rstpot_525;
  wire Reg_milisecfrst_0_dpot_526;
  wire Reg_milisecfrst_1_dpot_527;
  wire Reg_milisecfrst_2_dpot_528;
  wire Reg_milisecfrst_3_dpot_529;
  wire \beepalarm/cnt_khz_0_rstpot_530 ;
  wire \beepalarm/cnt_khz_1_rstpot_531 ;
  wire \beepalarm/cnt_khz_2_rstpot_532 ;
  wire \beepalarm/cnt_khz_3_rstpot_533 ;
  wire \beepalarm/cnt_khz_4_rstpot_534 ;
  wire \beepalarm/cnt_khz_5_rstpot_535 ;
  wire \beepalarm/cnt_khz_6_rstpot_536 ;
  wire \beepalarm/cnt_khz_7_rstpot_537 ;
  wire \beepalarm/cnt_khz_8_rstpot_538 ;
  wire \beepalarm/cnt_khz_9_rstpot_539 ;
  wire \beepalarm/cnt_khz_10_rstpot_540 ;
  wire \beepalarm/cnt_khz_11_rstpot_541 ;
  wire \beepalarm/cnt_khz_12_rstpot_542 ;
  wire \beepalarm/cnt_khz_13_rstpot_543 ;
  wire \beepalarm/cnt_khz_14_rstpot_544 ;
  wire \beepalarm/cnt_khz_15_rstpot_545 ;
  wire \beepalarm/cnt_khz_16_rstpot_546 ;
  wire \beepalarm/cnt_khz_17_rstpot_547 ;
  wire \beepalarm/cnt_khz_18_rstpot_548 ;
  wire \beepalarm/cnt_khz_19_rstpot_549 ;
  wire \beepalarm/cnt_khz_20_rstpot_550 ;
  wire \beepalarm/cnt_khz_21_rstpot_551 ;
  wire \beepalarm/cnt_khz_22_rstpot_552 ;
  wire \beepalarm/cnt_khz_23_rstpot_553 ;
  wire \beepalarm/cnt_khz_24_rstpot_554 ;
  wire \beepalarm/cnt_khz_25_rstpot_555 ;
  wire \beepalarm/cnt_khz_26_rstpot_556 ;
  wire \beepalarm/cnt_khz_27_rstpot_557 ;
  wire \beepalarm/cnt_khz_28_rstpot_558 ;
  wire \beepalarm/cnt_khz_29_rstpot_559 ;
  wire \beepalarm/cnt_khz_30_rstpot_560 ;
  wire \beepalarm/cnt_khz_31_rstpot_561 ;
  wire sec1KHZ_1_562;
  wire Reg_milisecsec_0_rstpot_563;
  wire Reg_milisecsec_1_rstpot_564;
  wire Reg_milisecsec_2_rstpot_565;
  wire Reg_milisecsec_3_rstpot_566;
  wire sec1KHZ_567;
  wire N48;
  wire N49;
  wire N50;
  wire N51;
  wire \ubnc_d/Mshreg_chain_1_572 ;
  wire \ubnc_c/Mshreg_chain_1_573 ;
  wire \ubnc_b/Mshreg_chain_1_574 ;
  wire \ubnc_a/Mshreg_chain_1_575 ;
  wire \NLW_ubnc_d/Mshreg_chain_1_Q15_UNCONNECTED ;
  wire \NLW_ubnc_c/Mshreg_chain_1_Q15_UNCONNECTED ;
  wire \NLW_ubnc_b/Mshreg_chain_1_Q15_UNCONNECTED ;
  wire \NLW_ubnc_a/Mshreg_chain_1_Q15_UNCONNECTED ;
  wire [25 : 0] RG;
  wire [3 : 0] Reg_minutes;
  wire [2 : 0] Reg_minten;
  wire [3 : 0] Connect_MUX;
  wire [3 : 0] GND_1_o_GND_1_o_mux_30_OUT;
  wire [31 : 0] \beepalarm/cnt_khz ;
  wire [31 : 0] Result;
  wire [3 : 0] Reg_HourJun;
  wire [1 : 0] Reg_HourSen;
  wire [3 : 0] Reg_secundes;
  wire [0 : 0] Mcount_RG_lut;
  wire [24 : 0] Mcount_RG_cy;
  wire [1 : 0] Reg_dynamics;
  wire [3 : 0] Reg_milisecsec;
  wire [2 : 0] Reg_secten;
  wire [3 : 0] Reg_milisecth;
  wire [3 : 0] Reg_HourTT;
  wire [3 : 0] Reg_milisecfrst;
  wire [0 : 0] \beepalarm/Mcount_cnt_khz_lut ;
  wire [30 : 0] \beepalarm/Mcount_cnt_khz_cy ;
  wire [3 : 0] Reg_minTT;
  wire [2 : 0] Reg_mTT;
  wire [1 : 0] Reg_TT;
  wire [9 : 1] \ubnc_d/chain ;
  wire [9 : 1] \ubnc_c/chain ;
  wire [9 : 1] \ubnc_b/chain ;
  wire [9 : 1] \ubnc_a/chain ;
  wire [23 : 23] GND_1_o_GND_1_o_equal_19_o_1;
  VCC   XST_VCC (
    .P(OUTCR_14_OBUF_73)
  );
  GND   XST_GND (
    .G(GND_0)
  );
  FD #(
    .INIT ( 1'b0 ))
  SETtikTak (
    .C(clk_BUFGP_2),
    .D(GND_1_o_GND_1_o_equal_19_o),
    .Q(SETtikTak_6)
  );
  FD #(
    .INIT ( 1'b0 ))
  tikTak (
    .C(clk_BUFGP_2),
    .D(\RG[25]_PWR_1_o_LessThan_20_o_inv ),
    .Q(tikTak_7)
  );
  FD #(
    .INIT ( 1'b0 ))
  sec1KHZ (
    .C(clk_BUFGP_2),
    .D(\RG[15]_GND_1_o_equal_22_o ),
    .Q(sec1KHZ_567)
  );
  FDE #(
    .INIT ( 1'b0 ))
  Reg_HourJun_0 (
    .C(clk_BUFGP_2),
    .CE(_n0365_inv),
    .D(GND_1_o_GND_1_o_mux_30_OUT[0]),
    .Q(Reg_HourJun[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  Reg_HourJun_1 (
    .C(clk_BUFGP_2),
    .CE(_n0365_inv),
    .D(GND_1_o_GND_1_o_mux_30_OUT[1]),
    .Q(Reg_HourJun[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  Reg_HourJun_2 (
    .C(clk_BUFGP_2),
    .CE(_n0365_inv),
    .D(GND_1_o_GND_1_o_mux_30_OUT[2]),
    .Q(Reg_HourJun[2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  Reg_HourJun_3 (
    .C(clk_BUFGP_2),
    .CE(_n0365_inv),
    .D(GND_1_o_GND_1_o_mux_30_OUT[3]),
    .Q(Reg_HourJun[3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  Reg_minutes_0 (
    .C(clk_BUFGP_2),
    .CE(_n0380_inv),
    .D(Mcount_Reg_minutes),
    .Q(Reg_minutes[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  Reg_minutes_1 (
    .C(clk_BUFGP_2),
    .CE(_n0380_inv),
    .D(Mcount_Reg_minutes1),
    .Q(Reg_minutes[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  Reg_minutes_2 (
    .C(clk_BUFGP_2),
    .CE(_n0380_inv),
    .D(Mcount_Reg_minutes2),
    .Q(Reg_minutes[2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  Reg_minutes_3 (
    .C(clk_BUFGP_2),
    .CE(_n0380_inv),
    .D(Mcount_Reg_minutes3),
    .Q(Reg_minutes[3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  Reg_minten_0 (
    .C(clk_BUFGP_2),
    .CE(_n0380_inv),
    .D(Reg_minten_0_dpot_492),
    .Q(Reg_minten[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  Reg_minten_1 (
    .C(clk_BUFGP_2),
    .CE(_n0380_inv),
    .D(Reg_minten_1_dpot_493),
    .Q(Reg_minten[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  Reg_minten_2 (
    .C(clk_BUFGP_2),
    .CE(_n0380_inv),
    .D(Reg_minten_2_dpot_494),
    .Q(Reg_minten[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_HourTT_1 (
    .C(in_BUT1_inv),
    .CE(\Atamaton[1]_GND_1_o_equal_104_o ),
    .D(\Result<1>8 ),
    .R(Mcount_Reg_HourTT_val_190),
    .Q(Reg_HourTT[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_HourTT_2 (
    .C(in_BUT1_inv),
    .CE(\Atamaton[1]_GND_1_o_equal_104_o ),
    .D(\Result<2>7 ),
    .R(Mcount_Reg_HourTT_val_190),
    .Q(Reg_HourTT[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_HourTT_3 (
    .C(in_BUT1_inv),
    .CE(\Atamaton[1]_GND_1_o_equal_104_o ),
    .D(\Result<3>6 ),
    .R(Mcount_Reg_HourTT_val_190),
    .Q(Reg_HourTT[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_TT_1 (
    .C(in_BUT1_inv),
    .CE(_n0516_inv),
    .D(\Result<1>10 ),
    .R(Mcount_Reg_TT_val_200),
    .Q(Reg_TT[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  Reg_dynamics_0 (
    .C(clk_BUFGP_2),
    .CE(sec1KHZ_567),
    .D(\Result<0>1 ),
    .Q(Reg_dynamics[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  Reg_dynamics_1 (
    .C(clk_BUFGP_2),
    .CE(sec1KHZ_567),
    .D(\Result<1>1 ),
    .Q(Reg_dynamics[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_secundes_0 (
    .C(clk_BUFGP_2),
    .CE(tikTak_7),
    .D(\Result<0>2 ),
    .R(_n029212),
    .Q(Reg_secundes[0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_secundes_1 (
    .C(clk_BUFGP_2),
    .CE(tikTak_7),
    .D(\Result<1>2 ),
    .R(_n029212),
    .Q(Reg_secundes[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_secundes_2 (
    .C(clk_BUFGP_2),
    .CE(tikTak_7),
    .D(\Result<2>1 ),
    .R(_n029212),
    .Q(Reg_secundes[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_secundes_3 (
    .C(clk_BUFGP_2),
    .CE(tikTak_7),
    .D(\Result<3>1 ),
    .R(_n029212),
    .Q(Reg_secundes[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_secten_0 (
    .C(clk_BUFGP_2),
    .CE(_n029212),
    .D(\Result<0>3 ),
    .R(_n02921),
    .Q(Reg_secten[0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_secten_1 (
    .C(clk_BUFGP_2),
    .CE(_n029212),
    .D(\Result<1>3 ),
    .R(_n02921),
    .Q(Reg_secten[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_secten_2 (
    .C(clk_BUFGP_2),
    .CE(_n029212),
    .D(\Result<2>2 ),
    .R(_n02921),
    .Q(Reg_secten[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_milisecth_0 (
    .C(clk_BUFGP_2),
    .CE(sec1KHZ_567),
    .D(\Result<0>4 ),
    .R(_n03153),
    .Q(Reg_milisecth[0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_milisecth_1 (
    .C(clk_BUFGP_2),
    .CE(sec1KHZ_567),
    .D(\Result<1>4 ),
    .R(_n03153),
    .Q(Reg_milisecth[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_milisecth_2 (
    .C(clk_BUFGP_2),
    .CE(sec1KHZ_567),
    .D(\Result<2>3 ),
    .R(_n03153),
    .Q(Reg_milisecth[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_milisecth_3 (
    .C(clk_BUFGP_2),
    .CE(sec1KHZ_567),
    .D(\Result<3>2 ),
    .R(_n03153),
    .Q(Reg_milisecth[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_milisecfrst_0 (
    .C(clk_BUFGP_2),
    .CE(_n03153),
    .D(Reg_milisecfrst_0_dpot_526),
    .R(_n0315_48),
    .Q(Reg_milisecfrst[0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_milisecfrst_1 (
    .C(clk_BUFGP_2),
    .CE(_n03153),
    .D(Reg_milisecfrst_1_dpot_527),
    .R(_n0315_48),
    .Q(Reg_milisecfrst[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_milisecfrst_2 (
    .C(clk_BUFGP_2),
    .CE(_n03153),
    .D(Reg_milisecfrst_2_dpot_528),
    .R(_n0315_48),
    .Q(Reg_milisecfrst[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_milisecfrst_3 (
    .C(clk_BUFGP_2),
    .CE(_n03153),
    .D(Reg_milisecfrst_3_dpot_529),
    .R(_n0315_48),
    .Q(Reg_milisecfrst[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_mTT_0 (
    .C(in_BUT2_inv),
    .CE(_n03273),
    .D(\Result<0>9 ),
    .R(_n0327),
    .Q(Reg_mTT[0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_mTT_1 (
    .C(in_BUT2_inv),
    .CE(_n03273),
    .D(\Result<1>9 ),
    .R(_n0327),
    .Q(Reg_mTT[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_mTT_2 (
    .C(in_BUT2_inv),
    .CE(_n03273),
    .D(\Result<2>8 ),
    .R(_n0327),
    .Q(Reg_mTT[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_minTT_1 (
    .C(in_BUT2_inv),
    .CE(\Atamaton[1]_GND_1_o_equal_104_o ),
    .D(\Result<1>11 ),
    .R(_n03273),
    .Q(Reg_minTT[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_minTT_3 (
    .C(in_BUT2_inv),
    .CE(\Atamaton[1]_GND_1_o_equal_104_o ),
    .D(\Result<3>7 ),
    .R(_n03273),
    .Q(Reg_minTT[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_HourTT_0 (
    .C(in_BUT1_inv),
    .CE(\Atamaton[1]_GND_1_o_equal_104_o ),
    .D(\Result<0>8 ),
    .R(Mcount_Reg_HourTT_val_190),
    .Q(Reg_HourTT[0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  Reg_TT_0 (
    .C(in_BUT1_inv),
    .CE(_n0516_inv),
    .D(\Result<0>10 ),
    .R(Mcount_Reg_TT_val_200),
    .Q(Reg_TT[0])
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_lut<0>  (
    .I0(Reg_minutes[0]),
    .I1(Reg_minTT[0]),
    .I2(Reg_minutes[1]),
    .I3(Reg_minTT[1]),
    .I4(Reg_minutes[2]),
    .I5(Reg_minTT[2]),
    .O(\Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_lut<0>_211 )
  );
  MUXCY   \Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_cy<0>  (
    .CI(OUTCR_14_OBUF_73),
    .DI(GND_0),
    .S(\Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_lut<0>_211 ),
    .O(\Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_cy<0>_212 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_lut<1>  (
    .I0(Reg_minutes[3]),
    .I1(Reg_minTT[3]),
    .I2(Reg_minten[0]),
    .I3(Reg_mTT[0]),
    .I4(Reg_minten[1]),
    .I5(Reg_mTT[1]),
    .O(\Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_lut<1>_213 )
  );
  MUXCY   \Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_cy<1>  (
    .CI(\Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_cy<0>_212 ),
    .DI(GND_0),
    .S(\Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_lut<1>_213 ),
    .O(\Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_cy<1>_214 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_lut<2>  (
    .I0(Reg_minten[2]),
    .I1(Reg_mTT[2]),
    .I2(Reg_HourJun[0]),
    .I3(Reg_HourTT[0]),
    .I4(Reg_HourJun[1]),
    .I5(Reg_HourTT[1]),
    .O(\Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_lut<2>_215 )
  );
  MUXCY   \Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_cy<2>  (
    .CI(\Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_cy<1>_214 ),
    .DI(GND_0),
    .S(\Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_lut<2>_215 ),
    .O(\Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_cy<2>_216 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_lut<3>  (
    .I0(Reg_HourJun[2]),
    .I1(Reg_HourTT[2]),
    .I2(Reg_HourJun[3]),
    .I3(Reg_HourTT[3]),
    .I4(Reg_HourSen[0]),
    .I5(Reg_TT[0]),
    .O(\Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_lut<3>_217 )
  );
  MUXCY   \Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_cy<3>  (
    .CI(\Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_cy<2>_216 ),
    .DI(GND_0),
    .S(\Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_lut<3>_217 ),
    .O(\Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_cy<3>_218 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_lut<4>  (
    .I0(Reg_HourSen[1]),
    .I1(Reg_TT[1]),
    .O(\Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_lut<4>_219 )
  );
  MUXCY   \Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_cy<4>  (
    .CI(\Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_cy<3>_218 ),
    .DI(GND_0),
    .S(\Mcompar_Reg_HourSen[1]_Reg_TT[1]_equal_18_o_lut<4>_219 ),
    .O(\Reg_HourSen[1]_Reg_TT[1]_equal_18_o )
  );
  MUXCY   \Mcount_RG_cy<0>  (
    .CI(GND_0),
    .DI(OUTCR_14_OBUF_73),
    .S(Mcount_RG_lut[0]),
    .O(Mcount_RG_cy[0])
  );
  XORCY   \Mcount_RG_xor<0>  (
    .CI(GND_0),
    .LI(Mcount_RG_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_RG_cy<1>  (
    .CI(Mcount_RG_cy[0]),
    .DI(GND_0),
    .S(\Mcount_RG_cy<1>_rt_421 ),
    .O(Mcount_RG_cy[1])
  );
  XORCY   \Mcount_RG_xor<1>  (
    .CI(Mcount_RG_cy[0]),
    .LI(\Mcount_RG_cy<1>_rt_421 ),
    .O(Result[1])
  );
  MUXCY   \Mcount_RG_cy<2>  (
    .CI(Mcount_RG_cy[1]),
    .DI(GND_0),
    .S(\Mcount_RG_cy<2>_rt_422 ),
    .O(Mcount_RG_cy[2])
  );
  XORCY   \Mcount_RG_xor<2>  (
    .CI(Mcount_RG_cy[1]),
    .LI(\Mcount_RG_cy<2>_rt_422 ),
    .O(Result[2])
  );
  MUXCY   \Mcount_RG_cy<3>  (
    .CI(Mcount_RG_cy[2]),
    .DI(GND_0),
    .S(\Mcount_RG_cy<3>_rt_423 ),
    .O(Mcount_RG_cy[3])
  );
  XORCY   \Mcount_RG_xor<3>  (
    .CI(Mcount_RG_cy[2]),
    .LI(\Mcount_RG_cy<3>_rt_423 ),
    .O(Result[3])
  );
  MUXCY   \Mcount_RG_cy<4>  (
    .CI(Mcount_RG_cy[3]),
    .DI(GND_0),
    .S(\Mcount_RG_cy<4>_rt_424 ),
    .O(Mcount_RG_cy[4])
  );
  XORCY   \Mcount_RG_xor<4>  (
    .CI(Mcount_RG_cy[3]),
    .LI(\Mcount_RG_cy<4>_rt_424 ),
    .O(Result[4])
  );
  MUXCY   \Mcount_RG_cy<5>  (
    .CI(Mcount_RG_cy[4]),
    .DI(GND_0),
    .S(\Mcount_RG_cy<5>_rt_425 ),
    .O(Mcount_RG_cy[5])
  );
  XORCY   \Mcount_RG_xor<5>  (
    .CI(Mcount_RG_cy[4]),
    .LI(\Mcount_RG_cy<5>_rt_425 ),
    .O(Result[5])
  );
  MUXCY   \Mcount_RG_cy<6>  (
    .CI(Mcount_RG_cy[5]),
    .DI(GND_0),
    .S(\Mcount_RG_cy<6>_rt_426 ),
    .O(Mcount_RG_cy[6])
  );
  XORCY   \Mcount_RG_xor<6>  (
    .CI(Mcount_RG_cy[5]),
    .LI(\Mcount_RG_cy<6>_rt_426 ),
    .O(Result[6])
  );
  MUXCY   \Mcount_RG_cy<7>  (
    .CI(Mcount_RG_cy[6]),
    .DI(GND_0),
    .S(\Mcount_RG_cy<7>_rt_427 ),
    .O(Mcount_RG_cy[7])
  );
  XORCY   \Mcount_RG_xor<7>  (
    .CI(Mcount_RG_cy[6]),
    .LI(\Mcount_RG_cy<7>_rt_427 ),
    .O(Result[7])
  );
  MUXCY   \Mcount_RG_cy<8>  (
    .CI(Mcount_RG_cy[7]),
    .DI(GND_0),
    .S(\Mcount_RG_cy<8>_rt_428 ),
    .O(Mcount_RG_cy[8])
  );
  XORCY   \Mcount_RG_xor<8>  (
    .CI(Mcount_RG_cy[7]),
    .LI(\Mcount_RG_cy<8>_rt_428 ),
    .O(Result[8])
  );
  MUXCY   \Mcount_RG_cy<9>  (
    .CI(Mcount_RG_cy[8]),
    .DI(GND_0),
    .S(\Mcount_RG_cy<9>_rt_429 ),
    .O(Mcount_RG_cy[9])
  );
  XORCY   \Mcount_RG_xor<9>  (
    .CI(Mcount_RG_cy[8]),
    .LI(\Mcount_RG_cy<9>_rt_429 ),
    .O(Result[9])
  );
  MUXCY   \Mcount_RG_cy<10>  (
    .CI(Mcount_RG_cy[9]),
    .DI(GND_0),
    .S(\Mcount_RG_cy<10>_rt_430 ),
    .O(Mcount_RG_cy[10])
  );
  XORCY   \Mcount_RG_xor<10>  (
    .CI(Mcount_RG_cy[9]),
    .LI(\Mcount_RG_cy<10>_rt_430 ),
    .O(Result[10])
  );
  MUXCY   \Mcount_RG_cy<11>  (
    .CI(Mcount_RG_cy[10]),
    .DI(GND_0),
    .S(\Mcount_RG_cy<11>_rt_431 ),
    .O(Mcount_RG_cy[11])
  );
  XORCY   \Mcount_RG_xor<11>  (
    .CI(Mcount_RG_cy[10]),
    .LI(\Mcount_RG_cy<11>_rt_431 ),
    .O(Result[11])
  );
  MUXCY   \Mcount_RG_cy<12>  (
    .CI(Mcount_RG_cy[11]),
    .DI(GND_0),
    .S(\Mcount_RG_cy<12>_rt_432 ),
    .O(Mcount_RG_cy[12])
  );
  XORCY   \Mcount_RG_xor<12>  (
    .CI(Mcount_RG_cy[11]),
    .LI(\Mcount_RG_cy<12>_rt_432 ),
    .O(Result[12])
  );
  MUXCY   \Mcount_RG_cy<13>  (
    .CI(Mcount_RG_cy[12]),
    .DI(GND_0),
    .S(\Mcount_RG_cy<13>_rt_433 ),
    .O(Mcount_RG_cy[13])
  );
  XORCY   \Mcount_RG_xor<13>  (
    .CI(Mcount_RG_cy[12]),
    .LI(\Mcount_RG_cy<13>_rt_433 ),
    .O(Result[13])
  );
  MUXCY   \Mcount_RG_cy<14>  (
    .CI(Mcount_RG_cy[13]),
    .DI(GND_0),
    .S(\Mcount_RG_cy<14>_rt_434 ),
    .O(Mcount_RG_cy[14])
  );
  XORCY   \Mcount_RG_xor<14>  (
    .CI(Mcount_RG_cy[13]),
    .LI(\Mcount_RG_cy<14>_rt_434 ),
    .O(Result[14])
  );
  MUXCY   \Mcount_RG_cy<15>  (
    .CI(Mcount_RG_cy[14]),
    .DI(GND_0),
    .S(\Mcount_RG_cy<15>_rt_435 ),
    .O(Mcount_RG_cy[15])
  );
  XORCY   \Mcount_RG_xor<15>  (
    .CI(Mcount_RG_cy[14]),
    .LI(\Mcount_RG_cy<15>_rt_435 ),
    .O(Result[15])
  );
  MUXCY   \Mcount_RG_cy<16>  (
    .CI(Mcount_RG_cy[15]),
    .DI(GND_0),
    .S(\Mcount_RG_cy<16>_rt_436 ),
    .O(Mcount_RG_cy[16])
  );
  XORCY   \Mcount_RG_xor<16>  (
    .CI(Mcount_RG_cy[15]),
    .LI(\Mcount_RG_cy<16>_rt_436 ),
    .O(Result[16])
  );
  MUXCY   \Mcount_RG_cy<17>  (
    .CI(Mcount_RG_cy[16]),
    .DI(GND_0),
    .S(\Mcount_RG_cy<17>_rt_437 ),
    .O(Mcount_RG_cy[17])
  );
  XORCY   \Mcount_RG_xor<17>  (
    .CI(Mcount_RG_cy[16]),
    .LI(\Mcount_RG_cy<17>_rt_437 ),
    .O(Result[17])
  );
  MUXCY   \Mcount_RG_cy<18>  (
    .CI(Mcount_RG_cy[17]),
    .DI(GND_0),
    .S(\Mcount_RG_cy<18>_rt_438 ),
    .O(Mcount_RG_cy[18])
  );
  XORCY   \Mcount_RG_xor<18>  (
    .CI(Mcount_RG_cy[17]),
    .LI(\Mcount_RG_cy<18>_rt_438 ),
    .O(Result[18])
  );
  MUXCY   \Mcount_RG_cy<19>  (
    .CI(Mcount_RG_cy[18]),
    .DI(GND_0),
    .S(\Mcount_RG_cy<19>_rt_439 ),
    .O(Mcount_RG_cy[19])
  );
  XORCY   \Mcount_RG_xor<19>  (
    .CI(Mcount_RG_cy[18]),
    .LI(\Mcount_RG_cy<19>_rt_439 ),
    .O(Result[19])
  );
  MUXCY   \Mcount_RG_cy<20>  (
    .CI(Mcount_RG_cy[19]),
    .DI(GND_0),
    .S(\Mcount_RG_cy<20>_rt_440 ),
    .O(Mcount_RG_cy[20])
  );
  XORCY   \Mcount_RG_xor<20>  (
    .CI(Mcount_RG_cy[19]),
    .LI(\Mcount_RG_cy<20>_rt_440 ),
    .O(Result[20])
  );
  MUXCY   \Mcount_RG_cy<21>  (
    .CI(Mcount_RG_cy[20]),
    .DI(GND_0),
    .S(\Mcount_RG_cy<21>_rt_441 ),
    .O(Mcount_RG_cy[21])
  );
  XORCY   \Mcount_RG_xor<21>  (
    .CI(Mcount_RG_cy[20]),
    .LI(\Mcount_RG_cy<21>_rt_441 ),
    .O(Result[21])
  );
  MUXCY   \Mcount_RG_cy<22>  (
    .CI(Mcount_RG_cy[21]),
    .DI(GND_0),
    .S(\Mcount_RG_cy<22>_rt_442 ),
    .O(Mcount_RG_cy[22])
  );
  XORCY   \Mcount_RG_xor<22>  (
    .CI(Mcount_RG_cy[21]),
    .LI(\Mcount_RG_cy<22>_rt_442 ),
    .O(Result[22])
  );
  MUXCY   \Mcount_RG_cy<23>  (
    .CI(Mcount_RG_cy[22]),
    .DI(GND_0),
    .S(\Mcount_RG_cy<23>_rt_443 ),
    .O(Mcount_RG_cy[23])
  );
  XORCY   \Mcount_RG_xor<23>  (
    .CI(Mcount_RG_cy[22]),
    .LI(\Mcount_RG_cy<23>_rt_443 ),
    .O(Result[23])
  );
  MUXCY   \Mcount_RG_cy<24>  (
    .CI(Mcount_RG_cy[23]),
    .DI(GND_0),
    .S(\Mcount_RG_cy<24>_rt_444 ),
    .O(Mcount_RG_cy[24])
  );
  XORCY   \Mcount_RG_xor<24>  (
    .CI(Mcount_RG_cy[23]),
    .LI(\Mcount_RG_cy<24>_rt_444 ),
    .O(Result[24])
  );
  XORCY   \Mcount_RG_xor<25>  (
    .CI(Mcount_RG_cy[24]),
    .LI(\Mcount_RG_xor<25>_rt_475 ),
    .O(Result[25])
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<0>  (
    .CI(GND_0),
    .DI(OUTCR_14_OBUF_73),
    .S(\beepalarm/Mcount_cnt_khz_lut [0]),
    .O(\beepalarm/Mcount_cnt_khz_cy [0])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<0>  (
    .CI(GND_0),
    .LI(\beepalarm/Mcount_cnt_khz_lut [0]),
    .O(\Result<0>7 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<1>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [0]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<1>_rt_445 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [1])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<1>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [0]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<1>_rt_445 ),
    .O(\Result<1>7 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<2>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [1]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<2>_rt_446 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [2])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<2>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [1]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<2>_rt_446 ),
    .O(\Result<2>6 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<3>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [2]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<3>_rt_447 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [3])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<3>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [2]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<3>_rt_447 ),
    .O(\Result<3>5 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<4>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [3]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<4>_rt_448 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [4])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<4>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [3]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<4>_rt_448 ),
    .O(\Result<4>1 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<5>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [4]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<5>_rt_449 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [5])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<5>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [4]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<5>_rt_449 ),
    .O(\Result<5>1 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<6>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [5]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<6>_rt_450 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [6])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<6>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [5]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<6>_rt_450 ),
    .O(\Result<6>1 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<7>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [6]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<7>_rt_451 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [7])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<7>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [6]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<7>_rt_451 ),
    .O(\Result<7>1 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<8>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [7]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<8>_rt_452 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [8])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<8>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [7]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<8>_rt_452 ),
    .O(\Result<8>1 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<9>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [8]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<9>_rt_453 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [9])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<9>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [8]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<9>_rt_453 ),
    .O(\Result<9>1 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<10>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [9]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<10>_rt_454 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [10])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<10>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [9]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<10>_rt_454 ),
    .O(\Result<10>1 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<11>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [10]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<11>_rt_455 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [11])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<11>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [10]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<11>_rt_455 ),
    .O(\Result<11>1 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<12>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [11]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<12>_rt_456 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [12])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<12>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [11]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<12>_rt_456 ),
    .O(\Result<12>1 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<13>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [12]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<13>_rt_457 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [13])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<13>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [12]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<13>_rt_457 ),
    .O(\Result<13>1 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<14>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [13]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<14>_rt_458 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [14])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<14>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [13]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<14>_rt_458 ),
    .O(\Result<14>1 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<15>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [14]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<15>_rt_459 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [15])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<15>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [14]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<15>_rt_459 ),
    .O(\Result<15>1 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<16>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [15]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<16>_rt_460 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [16])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<16>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [15]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<16>_rt_460 ),
    .O(\Result<16>1 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<17>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [16]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<17>_rt_461 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [17])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<17>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [16]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<17>_rt_461 ),
    .O(\Result<17>1 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<18>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [17]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<18>_rt_462 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [18])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<18>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [17]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<18>_rt_462 ),
    .O(\Result<18>1 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<19>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [18]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<19>_rt_463 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [19])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<19>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [18]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<19>_rt_463 ),
    .O(\Result<19>1 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<20>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [19]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<20>_rt_464 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [20])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<20>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [19]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<20>_rt_464 ),
    .O(\Result<20>1 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<21>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [20]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<21>_rt_465 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [21])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<21>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [20]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<21>_rt_465 ),
    .O(\Result<21>1 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<22>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [21]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<22>_rt_466 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [22])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<22>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [21]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<22>_rt_466 ),
    .O(\Result<22>1 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<23>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [22]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<23>_rt_467 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [23])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<23>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [22]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<23>_rt_467 ),
    .O(\Result<23>1 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<24>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [23]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<24>_rt_468 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [24])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<24>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [23]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<24>_rt_468 ),
    .O(\Result<24>1 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<25>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [24]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<25>_rt_469 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [25])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<25>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [24]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<25>_rt_469 ),
    .O(\Result<25>1 )
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<26>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [25]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<26>_rt_470 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [26])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<26>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [25]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<26>_rt_470 ),
    .O(Result[26])
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<27>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [26]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<27>_rt_471 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [27])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<27>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [26]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<27>_rt_471 ),
    .O(Result[27])
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<28>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [27]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<28>_rt_472 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [28])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<28>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [27]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<28>_rt_472 ),
    .O(Result[28])
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<29>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [28]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<29>_rt_473 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [29])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<29>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [28]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<29>_rt_473 ),
    .O(Result[29])
  );
  MUXCY   \beepalarm/Mcount_cnt_khz_cy<30>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [29]),
    .DI(GND_0),
    .S(\beepalarm/Mcount_cnt_khz_cy<30>_rt_474 ),
    .O(\beepalarm/Mcount_cnt_khz_cy [30])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<30>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [29]),
    .LI(\beepalarm/Mcount_cnt_khz_cy<30>_rt_474 ),
    .O(Result[30])
  );
  XORCY   \beepalarm/Mcount_cnt_khz_xor<31>  (
    .CI(\beepalarm/Mcount_cnt_khz_cy [30]),
    .LI(\beepalarm/Mcount_cnt_khz_xor<31>_rt_476 ),
    .O(Result[31])
  );
  LUT4 #(
    .INIT ( 16'hA7F7 ))
  \Reg_dynamics<1>_81  (
    .I0(\ubnc_c/deb_45 ),
    .I1(Reg_minten[2]),
    .I2(\ubnc_d/deb_46 ),
    .I3(Reg_secundes[2]),
    .O(\Reg_dynamics<1>_81_312 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \Reg_dynamics<1>_73  (
    .I0(\ubnc_c/deb_45 ),
    .I1(\ubnc_d/deb_46 ),
    .I2(Reg_minutes[2]),
    .I3(Reg_HourJun[2]),
    .I4(Reg_milisecfrst[2]),
    .I5(Reg_HourTT[2]),
    .O(\Reg_dynamics<1>_73_313 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \Reg_dynamics<1>_72  (
    .I0(\ubnc_c/deb_45 ),
    .I1(\ubnc_d/deb_46 ),
    .I2(Reg_secten[2]),
    .I3(Reg_minten[2]),
    .I4(Reg_milisecsec[2]),
    .I5(Reg_mTT[2]),
    .O(\Reg_dynamics<1>_72_314 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \Reg_dynamics<1>_61  (
    .I0(\ubnc_c/deb_45 ),
    .I1(\ubnc_d/deb_46 ),
    .I2(Reg_secundes[2]),
    .I3(Reg_minutes[2]),
    .I4(Reg_milisecth[2]),
    .I5(Reg_minTT[2]),
    .O(\Reg_dynamics<1>_61_315 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Reg_dynamics<1>_8  (
    .I0(\ubnc_d/deb_46 ),
    .I1(\ubnc_c/deb_45 ),
    .I2(Reg_secundes[1]),
    .I3(Reg_HourSen[1]),
    .I4(Reg_minten[1]),
    .I5(Reg_TT[1]),
    .O(\Reg_dynamics<1>_8_316 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Reg_dynamics<1>_71  (
    .I0(\ubnc_d/deb_46 ),
    .I1(\ubnc_c/deb_45 ),
    .I2(Reg_milisecfrst[1]),
    .I3(Reg_HourJun[1]),
    .I4(Reg_minutes[1]),
    .I5(Reg_HourTT[1]),
    .O(\Reg_dynamics<1>_71_317 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Reg_dynamics<1>_7  (
    .I0(\ubnc_d/deb_46 ),
    .I1(\ubnc_c/deb_45 ),
    .I2(Reg_milisecsec[1]),
    .I3(Reg_minten[1]),
    .I4(Reg_secten[1]),
    .I5(Reg_mTT[1]),
    .O(\Reg_dynamics<1>_7_318 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Reg_dynamics<1>_6  (
    .I0(\ubnc_d/deb_46 ),
    .I1(\ubnc_c/deb_45 ),
    .I2(Reg_milisecth[1]),
    .I3(Reg_minutes[1]),
    .I4(Reg_secundes[1]),
    .I5(Reg_minTT[1]),
    .O(\Reg_dynamics<1>_6_319 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \stofmult/Mmux_outData_8  (
    .I0(\ubnc_d/deb_46 ),
    .I1(\ubnc_c/deb_45 ),
    .I2(Reg_secundes[0]),
    .I3(Reg_HourSen[0]),
    .I4(Reg_minten[0]),
    .I5(Reg_TT[0]),
    .O(\stofmult/Mmux_outData_8_320 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \stofmult/Mmux_outData_71  (
    .I0(\ubnc_d/deb_46 ),
    .I1(\ubnc_c/deb_45 ),
    .I2(Reg_milisecfrst[0]),
    .I3(Reg_HourJun[0]),
    .I4(Reg_minutes[0]),
    .I5(Reg_HourTT[0]),
    .O(\stofmult/Mmux_outData_71_321 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \stofmult/Mmux_outData_7  (
    .I0(\ubnc_d/deb_46 ),
    .I1(\ubnc_c/deb_45 ),
    .I2(Reg_milisecsec[0]),
    .I3(Reg_minten[0]),
    .I4(Reg_secten[0]),
    .I5(Reg_mTT[0]),
    .O(\stofmult/Mmux_outData_7_322 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \stofmult/Mmux_outData_6  (
    .I0(\ubnc_d/deb_46 ),
    .I1(\ubnc_c/deb_45 ),
    .I2(Reg_milisecth[0]),
    .I3(Reg_minutes[0]),
    .I4(Reg_secundes[0]),
    .I5(Reg_minTT[0]),
    .O(\stofmult/Mmux_outData_6_323 )
  );
  FD   \ubnc_d/chain_9  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_d/chain [8]),
    .Q(\ubnc_d/chain [9])
  );
  FD   \ubnc_d/chain_8  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_d/chain [7]),
    .Q(\ubnc_d/chain [8])
  );
  FD   \ubnc_d/chain_7  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_d/chain [6]),
    .Q(\ubnc_d/chain [7])
  );
  FD   \ubnc_d/chain_6  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_d/chain [5]),
    .Q(\ubnc_d/chain [6])
  );
  FD   \ubnc_d/chain_5  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_d/chain [4]),
    .Q(\ubnc_d/chain [5])
  );
  FD   \ubnc_d/chain_4  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_d/chain [3]),
    .Q(\ubnc_d/chain [4])
  );
  FD   \ubnc_d/chain_3  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_d/chain [2]),
    .Q(\ubnc_d/chain [3])
  );
  FD   \ubnc_d/chain_2  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_d/chain [1]),
    .Q(\ubnc_d/chain [2])
  );
  FD   \ubnc_c/chain_9  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_c/chain [8]),
    .Q(\ubnc_c/chain [9])
  );
  FD   \ubnc_c/chain_8  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_c/chain [7]),
    .Q(\ubnc_c/chain [8])
  );
  FD   \ubnc_c/chain_7  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_c/chain [6]),
    .Q(\ubnc_c/chain [7])
  );
  FD   \ubnc_c/chain_6  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_c/chain [5]),
    .Q(\ubnc_c/chain [6])
  );
  FD   \ubnc_c/chain_5  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_c/chain [4]),
    .Q(\ubnc_c/chain [5])
  );
  FD   \ubnc_c/chain_4  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_c/chain [3]),
    .Q(\ubnc_c/chain [4])
  );
  FD   \ubnc_c/chain_3  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_c/chain [2]),
    .Q(\ubnc_c/chain [3])
  );
  FD   \ubnc_c/chain_2  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_c/chain [1]),
    .Q(\ubnc_c/chain [2])
  );
  FD   \ubnc_b/chain_9  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_b/chain [8]),
    .Q(\ubnc_b/chain [9])
  );
  FD   \ubnc_b/chain_8  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_b/chain [7]),
    .Q(\ubnc_b/chain [8])
  );
  FD   \ubnc_b/chain_7  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_b/chain [6]),
    .Q(\ubnc_b/chain [7])
  );
  FD   \ubnc_b/chain_6  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_b/chain [5]),
    .Q(\ubnc_b/chain [6])
  );
  FD   \ubnc_b/chain_5  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_b/chain [4]),
    .Q(\ubnc_b/chain [5])
  );
  FD   \ubnc_b/chain_4  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_b/chain [3]),
    .Q(\ubnc_b/chain [4])
  );
  FD   \ubnc_b/chain_3  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_b/chain [2]),
    .Q(\ubnc_b/chain [3])
  );
  FD   \ubnc_b/chain_2  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_b/chain [1]),
    .Q(\ubnc_b/chain [2])
  );
  FD   \ubnc_a/chain_9  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_a/chain [8]),
    .Q(\ubnc_a/chain [9])
  );
  FD   \ubnc_a/chain_8  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_a/chain [7]),
    .Q(\ubnc_a/chain [8])
  );
  FD   \ubnc_a/chain_7  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_a/chain [6]),
    .Q(\ubnc_a/chain [7])
  );
  FD   \ubnc_a/chain_6  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_a/chain [5]),
    .Q(\ubnc_a/chain [6])
  );
  FD   \ubnc_a/chain_5  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_a/chain [4]),
    .Q(\ubnc_a/chain [5])
  );
  FD   \ubnc_a/chain_4  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_a/chain [3]),
    .Q(\ubnc_a/chain [4])
  );
  FD   \ubnc_a/chain_3  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_a/chain [2]),
    .Q(\ubnc_a/chain [3])
  );
  FD   \ubnc_a/chain_2  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_a/chain [1]),
    .Q(\ubnc_a/chain [2])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \Atamaton[1]_GND_1_o_equal_104_o<1>1  (
    .I0(\ubnc_c/deb_45 ),
    .I1(\ubnc_d/deb_46 ),
    .O(\Atamaton[1]_GND_1_o_equal_104_o )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \Dynamic_d/Mram_DNM12  (
    .I0(Reg_dynamics[0]),
    .I1(Reg_dynamics[1]),
    .O(OUTCR_0_OBUF_56)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \Dynamic_d/Mram_DNM111  (
    .I0(Reg_dynamics[1]),
    .I1(Reg_dynamics[0]),
    .O(OUTCR_1_OBUF_55)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \Dynamic_d/Mram_DNM21  (
    .I0(Reg_dynamics[0]),
    .I1(Reg_dynamics[1]),
    .O(OUTCR_2_OBUF_54)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Dynamic_d/Mram_DNM31  (
    .I0(Reg_dynamics[1]),
    .I1(Reg_dynamics[0]),
    .O(OUTCR_3_OBUF_53)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_Reg_secundes_xor<1>11  (
    .I0(Reg_secundes[1]),
    .I1(Reg_secundes[0]),
    .O(\Result<1>2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_Reg_dynamics_xor<1>11  (
    .I0(Reg_dynamics[1]),
    .I1(Reg_dynamics[0]),
    .O(\Result<1>1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_Reg_secten_xor<1>11  (
    .I0(Reg_secten[1]),
    .I1(Reg_secten[0]),
    .O(\Result<1>3 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_Reg_milisecth_xor<1>11  (
    .I0(Reg_milisecth[1]),
    .I1(Reg_milisecth[0]),
    .O(\Result<1>4 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_Reg_HourTT_xor<1>11  (
    .I0(Reg_HourTT[1]),
    .I1(Reg_HourTT[0]),
    .O(\Result<1>8 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_Reg_milisecfrst_xor<1>11  (
    .I0(Reg_milisecfrst[1]),
    .I1(Reg_milisecfrst[0]),
    .O(\Result<1>6 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_Reg_minTT_xor<1>11  (
    .I0(Reg_minTT[1]),
    .I1(Reg_minTT[0]),
    .O(\Result<1>11 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_Reg_mTT_xor<1>11  (
    .I0(Reg_mTT[1]),
    .I1(Reg_mTT[0]),
    .O(\Result<1>9 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_Reg_TT_xor<1>11  (
    .I0(Reg_TT[1]),
    .I1(Reg_TT[0]),
    .O(\Result<1>10 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000020 ))
  \GND_1_o_GND_1_o_equal_19_o<23>11  (
    .I0(RG[13]),
    .I1(RG[9]),
    .I2(RG[5]),
    .I3(RG[6]),
    .I4(RG[4]),
    .I5(RG[3]),
    .O(\GND_1_o_GND_1_o_equal_19_o<23>1_328 )
  );
  LUT4 #(
    .INIT ( 16'h0180 ))
  Mmux_GND_1_o_GND_1_o_mux_30_OUT41 (
    .I0(Reg_HourJun[0]),
    .I1(Reg_HourJun[1]),
    .I2(Reg_HourJun[2]),
    .I3(Reg_HourJun[3]),
    .O(GND_1_o_GND_1_o_mux_30_OUT[3])
  );
  LUT6 #(
    .INIT ( 64'h1010101010101000 ))
  _n0516_inv1 (
    .I0(\ubnc_c/deb_45 ),
    .I1(\ubnc_d/deb_46 ),
    .I2(Reg_HourTT[3]),
    .I3(Reg_HourTT[0]),
    .I4(Reg_HourTT[1]),
    .I5(Reg_HourTT[2]),
    .O(_n0516_inv)
  );
  LUT6 #(
    .INIT ( 64'h1010101010101000 ))
  _n032731 (
    .I0(\ubnc_c/deb_45 ),
    .I1(\ubnc_d/deb_46 ),
    .I2(Reg_minTT[3]),
    .I3(Reg_minTT[0]),
    .I4(Reg_minTT[1]),
    .I5(Reg_minTT[2]),
    .O(_n03273)
  );
  LUT5 #(
    .INIT ( 32'h88888880 ))
  _n031531 (
    .I0(sec1KHZ_1_562),
    .I1(Reg_milisecth[3]),
    .I2(Reg_milisecth[2]),
    .I3(Reg_milisecth[1]),
    .I4(Reg_milisecth[0]),
    .O(_n03153)
  );
  LUT4 #(
    .INIT ( 16'h1444 ))
  \Mcount_Reg_minutes_xor<2>11  (
    .I0(Reg_minutes[3]),
    .I1(Reg_minutes[2]),
    .I2(Reg_minutes[0]),
    .I3(Reg_minutes[1]),
    .O(Mcount_Reg_minutes2)
  );
  LUT4 #(
    .INIT ( 16'h53B7 ))
  \serout/Mram_DNMSEG51  (
    .I0(Connect_MUX[1]),
    .I1(Connect_MUX[2]),
    .I2(Connect_MUX[0]),
    .I3(Connect_MUX[3]),
    .O(OUTCR_9_OBUF_60)
  );
  LUT4 #(
    .INIT ( 16'h5EDF ))
  \serout/Mram_DNMSEG41  (
    .I0(Connect_MUX[3]),
    .I1(Connect_MUX[0]),
    .I2(Connect_MUX[2]),
    .I3(Connect_MUX[1]),
    .O(OUTCR_8_OBUF_61)
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \Mcount_Reg_secundes_xor<3>11  (
    .I0(Reg_secundes[3]),
    .I1(Reg_secundes[0]),
    .I2(Reg_secundes[1]),
    .I3(Reg_secundes[2]),
    .O(\Result<3>1 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \Mcount_Reg_milisecth_xor<3>11  (
    .I0(Reg_milisecth[3]),
    .I1(Reg_milisecth[0]),
    .I2(Reg_milisecth[1]),
    .I3(Reg_milisecth[2]),
    .O(\Result<3>2 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \Mcount_Reg_HourTT_xor<3>11  (
    .I0(Reg_HourTT[3]),
    .I1(Reg_HourTT[0]),
    .I2(Reg_HourTT[1]),
    .I3(Reg_HourTT[2]),
    .O(\Result<3>6 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \Mcount_Reg_milisecfrst_xor<3>11  (
    .I0(Reg_milisecfrst[3]),
    .I1(Reg_milisecfrst[0]),
    .I2(Reg_milisecfrst[1]),
    .I3(Reg_milisecfrst[2]),
    .O(\Result<3>4 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \Mcount_Reg_minTT_xor<3>11  (
    .I0(Reg_minTT[3]),
    .I1(Reg_minTT[0]),
    .I2(Reg_minTT[1]),
    .I3(Reg_minTT[2]),
    .O(\Result<3>7 )
  );
  LUT4 #(
    .INIT ( 16'hA800 ))
  _n03271 (
    .I0(Reg_mTT[2]),
    .I1(Reg_mTT[1]),
    .I2(Reg_mTT[0]),
    .I3(_n03273),
    .O(_n0327)
  );
  LUT3 #(
    .INIT ( 8'h14 ))
  Mmux_GND_1_o_GND_1_o_mux_30_OUT21 (
    .I0(Reg_HourJun[3]),
    .I1(Reg_HourJun[0]),
    .I2(Reg_HourJun[1]),
    .O(GND_1_o_GND_1_o_mux_30_OUT[1])
  );
  LUT3 #(
    .INIT ( 8'h14 ))
  \Mcount_Reg_minutes_xor<1>11  (
    .I0(Reg_minutes[3]),
    .I1(Reg_minutes[0]),
    .I2(Reg_minutes[1]),
    .O(Mcount_Reg_minutes1)
  );
  LUT4 #(
    .INIT ( 16'h0155 ))
  \Mcount_Reg_minutes_xor<0>11  (
    .I0(Reg_minutes[0]),
    .I1(Reg_minutes[2]),
    .I2(Reg_minutes[1]),
    .I3(Reg_minutes[3]),
    .O(Mcount_Reg_minutes)
  );
  LUT4 #(
    .INIT ( 16'h0155 ))
  Mmux_GND_1_o_GND_1_o_mux_30_OUT11 (
    .I0(Reg_HourJun[0]),
    .I1(Reg_HourJun[2]),
    .I2(Reg_HourJun[1]),
    .I3(Reg_HourJun[3]),
    .O(GND_1_o_GND_1_o_mux_30_OUT[0])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Mcount_Reg_secundes_xor<2>11  (
    .I0(Reg_secundes[2]),
    .I1(Reg_secundes[0]),
    .I2(Reg_secundes[1]),
    .O(\Result<2>1 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Mcount_Reg_secten_xor<2>11  (
    .I0(Reg_secten[2]),
    .I1(Reg_secten[0]),
    .I2(Reg_secten[1]),
    .O(\Result<2>2 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Mcount_Reg_milisecth_xor<2>11  (
    .I0(Reg_milisecth[2]),
    .I1(Reg_milisecth[0]),
    .I2(Reg_milisecth[1]),
    .O(\Result<2>3 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Mcount_Reg_milisecfrst_xor<2>11  (
    .I0(Reg_milisecfrst[2]),
    .I1(Reg_milisecfrst[0]),
    .I2(Reg_milisecfrst[1]),
    .O(\Result<2>5 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Mcount_Reg_mTT_xor<2>11  (
    .I0(Reg_mTT[2]),
    .I1(Reg_mTT[0]),
    .I2(Reg_mTT[1]),
    .O(\Result<2>8 )
  );
  LUT4 #(
    .INIT ( 16'hBDFA ))
  \serout/Mram_DNMSEG12  (
    .I0(Connect_MUX[3]),
    .I1(Connect_MUX[0]),
    .I2(Connect_MUX[1]),
    .I3(Connect_MUX[2]),
    .O(OUTCR_4_OBUF_65)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Reg_dynamics<1>3  (
    .I0(Reg_dynamics[0]),
    .I1(Reg_dynamics[1]),
    .I2(\stofmult/Mmux_outData_7_322 ),
    .I3(\stofmult/Mmux_outData_8_320 ),
    .I4(\stofmult/Mmux_outData_71_321 ),
    .I5(\stofmult/Mmux_outData_6_323 ),
    .O(Connect_MUX[0])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Reg_dynamics<1>11  (
    .I0(Reg_dynamics[0]),
    .I1(Reg_dynamics[1]),
    .I2(\Reg_dynamics<1>_7_318 ),
    .I3(\Reg_dynamics<1>_8_316 ),
    .I4(\Reg_dynamics<1>_71_317 ),
    .I5(\Reg_dynamics<1>_6_319 ),
    .O(Connect_MUX[1])
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \Reg_dynamics<1>21  (
    .I0(Reg_dynamics[0]),
    .I1(Reg_dynamics[1]),
    .I2(\Reg_dynamics<1>_72_314 ),
    .I3(\Reg_dynamics<1>_81_312 ),
    .I4(\Reg_dynamics<1>_73_313 ),
    .I5(\Reg_dynamics<1>_61_315 ),
    .O(Connect_MUX[2])
  );
  LUT4 #(
    .INIT ( 16'h9EFB ))
  \serout/Mram_DNMSEG61  (
    .I0(Connect_MUX[1]),
    .I1(Connect_MUX[2]),
    .I2(Connect_MUX[3]),
    .I3(Connect_MUX[0]),
    .O(OUTCR_10_OBUF_59)
  );
  LUT5 #(
    .INIT ( 32'hA0A0A080 ))
  _n0292121 (
    .I0(Reg_secundes[3]),
    .I1(Reg_secundes[2]),
    .I2(tikTak_7),
    .I3(Reg_secundes[1]),
    .I4(Reg_secundes[0]),
    .O(_n029212)
  );
  LUT4 #(
    .INIT ( 16'hA800 ))
  _n029211 (
    .I0(Reg_secten[2]),
    .I1(Reg_secten[1]),
    .I2(Reg_secten[0]),
    .I3(_n029212),
    .O(_n02921)
  );
  LUT6 #(
    .INIT ( 64'h1540154015001540 ))
  Mmux_GND_1_o_GND_1_o_mux_30_OUT31 (
    .I0(Reg_HourJun[3]),
    .I1(Reg_HourJun[0]),
    .I2(Reg_HourJun[1]),
    .I3(Reg_HourJun[2]),
    .I4(Reg_HourSen[1]),
    .I5(Reg_HourSen[0]),
    .O(GND_1_o_GND_1_o_mux_30_OUT[2])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Mcount_Reg_HourTT_xor<2>11  (
    .I0(Reg_HourTT[2]),
    .I1(Reg_HourTT[0]),
    .I2(Reg_HourTT[1]),
    .O(\Result<2>7 )
  );
  LUT4 #(
    .INIT ( 16'h0180 ))
  \Mcount_Reg_minutes_xor<3>11  (
    .I0(Reg_minutes[0]),
    .I1(Reg_minutes[1]),
    .I2(Reg_minutes[2]),
    .I3(Reg_minutes[3]),
    .O(Mcount_Reg_minutes3)
  );
  LUT4 #(
    .INIT ( 16'hDF71 ))
  \serout/Mram_DNMSEG111  (
    .I0(Connect_MUX[0]),
    .I1(Connect_MUX[1]),
    .I2(Connect_MUX[2]),
    .I3(Connect_MUX[3]),
    .O(OUTCR_5_OBUF_64)
  );
  LUT4 #(
    .INIT ( 16'hFD51 ))
  \serout/Mram_DNMSEG21  (
    .I0(Connect_MUX[0]),
    .I1(Connect_MUX[2]),
    .I2(Connect_MUX[1]),
    .I3(Connect_MUX[3]),
    .O(OUTCR_6_OBUF_63)
  );
  LUT4 #(
    .INIT ( 16'h3DEB ))
  \serout/Mram_DNMSEG31  (
    .I0(Connect_MUX[3]),
    .I1(Connect_MUX[0]),
    .I2(Connect_MUX[2]),
    .I3(Connect_MUX[1]),
    .O(OUTCR_7_OBUF_62)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \beepalarm/_n0018_inv11  (
    .I0(\beepalarm/cnt_khz [0]),
    .I1(\beepalarm/cnt_khz [31]),
    .I2(\beepalarm/cnt_khz [30]),
    .I3(\beepalarm/cnt_khz [29]),
    .I4(\beepalarm/cnt_khz [28]),
    .I5(\beepalarm/cnt_khz [27]),
    .O(\beepalarm/_n0018_inv11_372 )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \beepalarm/_n0018_inv12  (
    .I0(\beepalarm/cnt_khz [10]),
    .I1(\beepalarm/cnt_khz [11]),
    .I2(\beepalarm/cnt_khz [6]),
    .I3(\beepalarm/cnt_khz [8]),
    .I4(\beepalarm/cnt_khz [7]),
    .O(\beepalarm/_n0018_inv12_373 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \beepalarm/_n0018_inv13  (
    .I0(\beepalarm/cnt_khz [26]),
    .I1(\beepalarm/cnt_khz [25]),
    .I2(\beepalarm/cnt_khz [24]),
    .I3(\beepalarm/cnt_khz [23]),
    .I4(\beepalarm/cnt_khz [22]),
    .I5(\beepalarm/cnt_khz [21]),
    .O(\beepalarm/_n0018_inv13_374 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \beepalarm/_n0018_inv14  (
    .I0(\beepalarm/cnt_khz [19]),
    .I1(\beepalarm/cnt_khz [20]),
    .I2(\beepalarm/cnt_khz [18]),
    .I3(\beepalarm/cnt_khz [16]),
    .I4(\beepalarm/cnt_khz [17]),
    .I5(\beepalarm/cnt_khz [15]),
    .O(\beepalarm/_n0018_inv14_375 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \beepalarm/_n0018_inv16  (
    .I0(\beepalarm/cnt_khz [9]),
    .I1(\beepalarm/cnt_khz [13]),
    .I2(\beepalarm/cnt_khz [5]),
    .I3(\beepalarm/cnt_khz [4]),
    .I4(\beepalarm/cnt_khz [3]),
    .I5(\beepalarm/cnt_khz [2]),
    .O(\beepalarm/_n0018_inv16_376 )
  );
  LUT6 #(
    .INIT ( 64'hEFFFFFFFFFFFFFFF ))
  \RG[15]_GND_1_o_equal_22_o<15>_SW0  (
    .I0(RG[10]),
    .I1(RG[12]),
    .I2(RG[14]),
    .I3(RG[2]),
    .I4(RG[0]),
    .I5(RG[1]),
    .O(N0)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000800 ))
  \RG[15]_GND_1_o_equal_22_o<15>  (
    .I0(\GND_1_o_GND_1_o_equal_19_o<23>1_328 ),
    .I1(RG[7]),
    .I2(RG[11]),
    .I3(RG[8]),
    .I4(RG[15]),
    .I5(N0),
    .O(\RG[15]_GND_1_o_equal_22_o )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Reg_dynamics<1>51  (
    .I0(\ubnc_d/deb_46 ),
    .I1(Reg_dynamics[1]),
    .I2(Reg_milisecth[3]),
    .I3(Reg_milisecfrst[3]),
    .I4(Reg_HourTT[3]),
    .I5(Reg_minTT[3]),
    .O(\Reg_dynamics<1>5 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  _n02922_SW0 (
    .I0(Reg_minten[2]),
    .I1(Reg_minten[1]),
    .I2(Reg_minten[0]),
    .O(N2)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  Mcount_Reg_HourTT_val_SW0 (
    .I0(\ubnc_c/deb_45 ),
    .I1(Reg_TT[0]),
    .I2(Reg_HourTT[2]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF00004000 ))
  Mcount_Reg_HourTT_val (
    .I0(\ubnc_d/deb_46 ),
    .I1(Reg_HourTT[1]),
    .I2(Reg_TT[1]),
    .I3(Reg_HourTT[0]),
    .I4(N4),
    .I5(_n0516_inv),
    .O(Mcount_Reg_HourTT_val_190)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA00002000 ))
  Mcount_Reg_TT_val (
    .I0(Reg_TT[1]),
    .I1(\ubnc_d/deb_46 ),
    .I2(Reg_HourTT[1]),
    .I3(Reg_HourTT[0]),
    .I4(N4),
    .I5(_n0516_inv),
    .O(Mcount_Reg_TT_val_200)
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \RG[25]_PWR_1_o_LessThan_20_o_inv1  (
    .I0(RG[22]),
    .I1(RG[23]),
    .I2(RG[19]),
    .I3(RG[20]),
    .I4(RG[21]),
    .O(\RG[25]_PWR_1_o_LessThan_20_o_inv1_381 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \RG[25]_PWR_1_o_LessThan_20_o_inv2  (
    .I0(RG[9]),
    .I1(RG[7]),
    .I2(RG[11]),
    .I3(RG[10]),
    .I4(RG[8]),
    .O(\RG[25]_PWR_1_o_LessThan_20_o_inv2_382 )
  );
  LUT6 #(
    .INIT ( 64'hEAAAAAAAAAAAAAAA ))
  \RG[25]_PWR_1_o_LessThan_20_o_inv3  (
    .I0(RG[16]),
    .I1(RG[13]),
    .I2(RG[12]),
    .I3(RG[15]),
    .I4(RG[14]),
    .I5(\RG[25]_PWR_1_o_LessThan_20_o_inv2_382 ),
    .O(\RG[25]_PWR_1_o_LessThan_20_o_inv3_383 )
  );
  LUT6 #(
    .INIT ( 64'hFE00AA00FA00AA00 ))
  \RG[25]_PWR_1_o_LessThan_20_o_inv4  (
    .I0(RG[24]),
    .I1(RG[17]),
    .I2(RG[18]),
    .I3(RG[25]),
    .I4(\RG[25]_PWR_1_o_LessThan_20_o_inv1_381 ),
    .I5(\RG[25]_PWR_1_o_LessThan_20_o_inv3_383 ),
    .O(\RG[25]_PWR_1_o_LessThan_20_o_inv )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \GND_1_o_GND_1_o_equal_19_o<23>1  (
    .I0(RG[22]),
    .I1(RG[2]),
    .I2(RG[1]),
    .I3(RG[16]),
    .I4(RG[14]),
    .I5(RG[0]),
    .O(GND_1_o_GND_1_o_equal_19_o_1[23])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \GND_1_o_GND_1_o_equal_19_o<23>2  (
    .I0(RG[17]),
    .I1(RG[18]),
    .I2(RG[12]),
    .I3(RG[15]),
    .I4(RG[10]),
    .I5(RG[11]),
    .O(\GND_1_o_GND_1_o_equal_19_o<23>2_385 )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \GND_1_o_GND_1_o_equal_19_o<23>3  (
    .I0(RG[8]),
    .I1(RG[7]),
    .I2(RG[23]),
    .I3(RG[21]),
    .I4(RG[20]),
    .I5(RG[19]),
    .O(\GND_1_o_GND_1_o_equal_19_o<23>3_386 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \GND_1_o_GND_1_o_equal_19_o<23>4  (
    .I0(\GND_1_o_GND_1_o_equal_19_o<23>1_328 ),
    .I1(GND_1_o_GND_1_o_equal_19_o_1[23]),
    .I2(\GND_1_o_GND_1_o_equal_19_o<23>2_385 ),
    .I3(\GND_1_o_GND_1_o_equal_19_o<23>3_386 ),
    .O(GND_1_o_GND_1_o_equal_19_o)
  );
  LUT6 #(
    .INIT ( 64'hFEFEFEFEFEFEFE00 ))
  _n0315_SW0 (
    .I0(Reg_milisecfrst[2]),
    .I1(Reg_milisecfrst[1]),
    .I2(Reg_milisecfrst[0]),
    .I3(Reg_milisecsec[2]),
    .I4(Reg_milisecsec[1]),
    .I5(Reg_milisecsec[0]),
    .O(N10)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  _n0315 (
    .I0(Reg_milisecfrst[3]),
    .I1(Reg_milisecsec[3]),
    .I2(N10),
    .I3(_n03153),
    .O(_n0315_48)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFF7FFFFFF ))
  _n0489_inv_SW0 (
    .I0(\ubnc_c/deb_45 ),
    .I1(\ubnc_d/deb_46 ),
    .I2(\ubnc_a/deb_43 ),
    .I3(SETtikTak_6),
    .I4(Reg_HourSen[1]),
    .I5(Reg_HourSen[0]),
    .O(N12)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \ubnc_d/_n0013_SW0  (
    .I0(\ubnc_d/chain [9]),
    .I1(\ubnc_d/chain [6]),
    .I2(\ubnc_d/chain [5]),
    .I3(\ubnc_d/chain [4]),
    .O(N14)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \ubnc_d/out_SW0  (
    .I0(\ubnc_d/chain [9]),
    .I1(\ubnc_d/chain [6]),
    .I2(\ubnc_d/chain [5]),
    .I3(\ubnc_d/chain [4]),
    .O(N16)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \ubnc_c/_n0013_SW0  (
    .I0(\ubnc_c/chain [9]),
    .I1(\ubnc_c/chain [6]),
    .I2(\ubnc_c/chain [5]),
    .I3(\ubnc_c/chain [4]),
    .O(N18)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \ubnc_c/_n0013  (
    .I0(\ubnc_c/chain [2]),
    .I1(\ubnc_c/chain [1]),
    .I2(\ubnc_c/chain [8]),
    .I3(\ubnc_c/chain [7]),
    .I4(\ubnc_c/chain [3]),
    .I5(N18),
    .O(\ubnc_c/_n0013_339 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \ubnc_c/out_SW0  (
    .I0(\ubnc_c/chain [9]),
    .I1(\ubnc_c/chain [6]),
    .I2(\ubnc_c/chain [5]),
    .I3(\ubnc_c/chain [4]),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \ubnc_c/out  (
    .I0(\ubnc_c/chain [2]),
    .I1(\ubnc_c/chain [1]),
    .I2(\ubnc_c/chain [8]),
    .I3(\ubnc_c/chain [7]),
    .I4(\ubnc_c/chain [3]),
    .I5(N20),
    .O(\ubnc_c/chain[9]_reduce_and_2_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \ubnc_b/_n0013_SW0  (
    .I0(\ubnc_b/chain [9]),
    .I1(\ubnc_b/chain [6]),
    .I2(\ubnc_b/chain [5]),
    .I3(\ubnc_b/chain [4]),
    .O(N22)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \ubnc_b/_n0013  (
    .I0(\ubnc_b/chain [2]),
    .I1(\ubnc_b/chain [1]),
    .I2(\ubnc_b/chain [8]),
    .I3(\ubnc_b/chain [7]),
    .I4(\ubnc_b/chain [3]),
    .I5(N22),
    .O(\ubnc_b/_n0013_350 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \ubnc_b/out_SW0  (
    .I0(\ubnc_b/chain [9]),
    .I1(\ubnc_b/chain [6]),
    .I2(\ubnc_b/chain [5]),
    .I3(\ubnc_b/chain [4]),
    .O(N24)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \ubnc_b/out  (
    .I0(\ubnc_b/chain [2]),
    .I1(\ubnc_b/chain [1]),
    .I2(\ubnc_b/chain [8]),
    .I3(\ubnc_b/chain [7]),
    .I4(\ubnc_b/chain [3]),
    .I5(N24),
    .O(\ubnc_b/chain[9]_reduce_and_2_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \ubnc_a/_n0013_SW0  (
    .I0(\ubnc_a/chain [9]),
    .I1(\ubnc_a/chain [6]),
    .I2(\ubnc_a/chain [5]),
    .I3(\ubnc_a/chain [4]),
    .O(N26)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \ubnc_a/_n0013  (
    .I0(\ubnc_a/chain [2]),
    .I1(\ubnc_a/chain [1]),
    .I2(\ubnc_a/chain [8]),
    .I3(\ubnc_a/chain [7]),
    .I4(\ubnc_a/chain [3]),
    .I5(N26),
    .O(\ubnc_a/_n0013_361 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \ubnc_a/out_SW0  (
    .I0(\ubnc_a/chain [9]),
    .I1(\ubnc_a/chain [6]),
    .I2(\ubnc_a/chain [5]),
    .I3(\ubnc_a/chain [4]),
    .O(N28)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \ubnc_a/out  (
    .I0(\ubnc_a/chain [2]),
    .I1(\ubnc_a/chain [1]),
    .I2(\ubnc_a/chain [8]),
    .I3(\ubnc_a/chain [7]),
    .I4(\ubnc_a/chain [3]),
    .I5(N28),
    .O(\ubnc_a/chain[9]_reduce_and_2_o )
  );
  IBUF   swch_1_IBUF (
    .I(swch[1]),
    .O(swch_1_IBUF_1)
  );
  IBUF   swch_0_IBUF (
    .I(swch[0]),
    .O(swch_0_IBUF_0)
  );
  IBUF   BUT1_IBUF (
    .I(BUT1),
    .O(BUT1_IBUF_3)
  );
  IBUF   BUT2_IBUF (
    .I(BUT2),
    .O(BUT2_IBUF_4)
  );
  OBUF   OUTCR_15_OBUF (
    .I(OUTCR_14_OBUF_73),
    .O(OUTCR[15])
  );
  OBUF   OUTCR_14_OBUF (
    .I(OUTCR_14_OBUF_73),
    .O(OUTCR[14])
  );
  OBUF   OUTCR_13_OBUF (
    .I(\beepalarm/clk_1k_5 ),
    .O(OUTCR[13])
  );
  OBUF   OUTCR_12_OBUF (
    .I(RG[25]),
    .O(OUTCR[12])
  );
  OBUF   OUTCR_11_OBUF (
    .I(Reg_secundes[0]),
    .O(OUTCR[11])
  );
  OBUF   OUTCR_10_OBUF (
    .I(OUTCR_10_OBUF_59),
    .O(OUTCR[10])
  );
  OBUF   OUTCR_9_OBUF (
    .I(OUTCR_9_OBUF_60),
    .O(OUTCR[9])
  );
  OBUF   OUTCR_8_OBUF (
    .I(OUTCR_8_OBUF_61),
    .O(OUTCR[8])
  );
  OBUF   OUTCR_7_OBUF (
    .I(OUTCR_7_OBUF_62),
    .O(OUTCR[7])
  );
  OBUF   OUTCR_6_OBUF (
    .I(OUTCR_6_OBUF_63),
    .O(OUTCR[6])
  );
  OBUF   OUTCR_5_OBUF (
    .I(OUTCR_5_OBUF_64),
    .O(OUTCR[5])
  );
  OBUF   OUTCR_4_OBUF (
    .I(OUTCR_4_OBUF_65),
    .O(OUTCR[4])
  );
  OBUF   OUTCR_3_OBUF (
    .I(OUTCR_3_OBUF_53),
    .O(OUTCR[3])
  );
  OBUF   OUTCR_2_OBUF (
    .I(OUTCR_2_OBUF_54),
    .O(OUTCR[2])
  );
  OBUF   OUTCR_1_OBUF (
    .I(OUTCR_1_OBUF_55),
    .O(OUTCR[1])
  );
  OBUF   OUTCR_0_OBUF (
    .I(OUTCR_0_OBUF_56),
    .O(OUTCR[0])
  );
  FD #(
    .INIT ( 1'b1 ))
  ALARM (
    .C(clk_BUFGP_2),
    .D(ALARM_glue_rst),
    .Q(ALARM_35)
  );
  FD #(
    .INIT ( 1'b1 ))
  Reg_minTT_0 (
    .C(in_BUT2_inv),
    .D(Reg_minTT_0_glue_rst_419),
    .Q(Reg_minTT[0])
  );
  FD #(
    .INIT ( 1'b1 ))
  Reg_minTT_2 (
    .C(in_BUT2_inv),
    .D(Reg_minTT_2_glue_rst_420),
    .Q(Reg_minTT[2])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_cy<1>_rt  (
    .I0(RG[1]),
    .O(\Mcount_RG_cy<1>_rt_421 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_cy<2>_rt  (
    .I0(RG[2]),
    .O(\Mcount_RG_cy<2>_rt_422 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_cy<3>_rt  (
    .I0(RG[3]),
    .O(\Mcount_RG_cy<3>_rt_423 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_cy<4>_rt  (
    .I0(RG[4]),
    .O(\Mcount_RG_cy<4>_rt_424 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_cy<5>_rt  (
    .I0(RG[5]),
    .O(\Mcount_RG_cy<5>_rt_425 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_cy<6>_rt  (
    .I0(RG[6]),
    .O(\Mcount_RG_cy<6>_rt_426 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_cy<7>_rt  (
    .I0(RG[7]),
    .O(\Mcount_RG_cy<7>_rt_427 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_cy<8>_rt  (
    .I0(RG[8]),
    .O(\Mcount_RG_cy<8>_rt_428 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_cy<9>_rt  (
    .I0(RG[9]),
    .O(\Mcount_RG_cy<9>_rt_429 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_cy<10>_rt  (
    .I0(RG[10]),
    .O(\Mcount_RG_cy<10>_rt_430 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_cy<11>_rt  (
    .I0(RG[11]),
    .O(\Mcount_RG_cy<11>_rt_431 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_cy<12>_rt  (
    .I0(RG[12]),
    .O(\Mcount_RG_cy<12>_rt_432 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_cy<13>_rt  (
    .I0(RG[13]),
    .O(\Mcount_RG_cy<13>_rt_433 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_cy<14>_rt  (
    .I0(RG[14]),
    .O(\Mcount_RG_cy<14>_rt_434 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_cy<15>_rt  (
    .I0(RG[15]),
    .O(\Mcount_RG_cy<15>_rt_435 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_cy<16>_rt  (
    .I0(RG[16]),
    .O(\Mcount_RG_cy<16>_rt_436 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_cy<17>_rt  (
    .I0(RG[17]),
    .O(\Mcount_RG_cy<17>_rt_437 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_cy<18>_rt  (
    .I0(RG[18]),
    .O(\Mcount_RG_cy<18>_rt_438 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_cy<19>_rt  (
    .I0(RG[19]),
    .O(\Mcount_RG_cy<19>_rt_439 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_cy<20>_rt  (
    .I0(RG[20]),
    .O(\Mcount_RG_cy<20>_rt_440 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_cy<21>_rt  (
    .I0(RG[21]),
    .O(\Mcount_RG_cy<21>_rt_441 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_cy<22>_rt  (
    .I0(RG[22]),
    .O(\Mcount_RG_cy<22>_rt_442 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_cy<23>_rt  (
    .I0(RG[23]),
    .O(\Mcount_RG_cy<23>_rt_443 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_cy<24>_rt  (
    .I0(RG[24]),
    .O(\Mcount_RG_cy<24>_rt_444 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<1>_rt  (
    .I0(\beepalarm/cnt_khz [1]),
    .O(\beepalarm/Mcount_cnt_khz_cy<1>_rt_445 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<2>_rt  (
    .I0(\beepalarm/cnt_khz [2]),
    .O(\beepalarm/Mcount_cnt_khz_cy<2>_rt_446 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<3>_rt  (
    .I0(\beepalarm/cnt_khz [3]),
    .O(\beepalarm/Mcount_cnt_khz_cy<3>_rt_447 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<4>_rt  (
    .I0(\beepalarm/cnt_khz [4]),
    .O(\beepalarm/Mcount_cnt_khz_cy<4>_rt_448 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<5>_rt  (
    .I0(\beepalarm/cnt_khz [5]),
    .O(\beepalarm/Mcount_cnt_khz_cy<5>_rt_449 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<6>_rt  (
    .I0(\beepalarm/cnt_khz [6]),
    .O(\beepalarm/Mcount_cnt_khz_cy<6>_rt_450 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<7>_rt  (
    .I0(\beepalarm/cnt_khz [7]),
    .O(\beepalarm/Mcount_cnt_khz_cy<7>_rt_451 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<8>_rt  (
    .I0(\beepalarm/cnt_khz [8]),
    .O(\beepalarm/Mcount_cnt_khz_cy<8>_rt_452 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<9>_rt  (
    .I0(\beepalarm/cnt_khz [9]),
    .O(\beepalarm/Mcount_cnt_khz_cy<9>_rt_453 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<10>_rt  (
    .I0(\beepalarm/cnt_khz [10]),
    .O(\beepalarm/Mcount_cnt_khz_cy<10>_rt_454 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<11>_rt  (
    .I0(\beepalarm/cnt_khz [11]),
    .O(\beepalarm/Mcount_cnt_khz_cy<11>_rt_455 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<12>_rt  (
    .I0(\beepalarm/cnt_khz [12]),
    .O(\beepalarm/Mcount_cnt_khz_cy<12>_rt_456 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<13>_rt  (
    .I0(\beepalarm/cnt_khz [13]),
    .O(\beepalarm/Mcount_cnt_khz_cy<13>_rt_457 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<14>_rt  (
    .I0(\beepalarm/cnt_khz [14]),
    .O(\beepalarm/Mcount_cnt_khz_cy<14>_rt_458 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<15>_rt  (
    .I0(\beepalarm/cnt_khz [15]),
    .O(\beepalarm/Mcount_cnt_khz_cy<15>_rt_459 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<16>_rt  (
    .I0(\beepalarm/cnt_khz [16]),
    .O(\beepalarm/Mcount_cnt_khz_cy<16>_rt_460 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<17>_rt  (
    .I0(\beepalarm/cnt_khz [17]),
    .O(\beepalarm/Mcount_cnt_khz_cy<17>_rt_461 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<18>_rt  (
    .I0(\beepalarm/cnt_khz [18]),
    .O(\beepalarm/Mcount_cnt_khz_cy<18>_rt_462 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<19>_rt  (
    .I0(\beepalarm/cnt_khz [19]),
    .O(\beepalarm/Mcount_cnt_khz_cy<19>_rt_463 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<20>_rt  (
    .I0(\beepalarm/cnt_khz [20]),
    .O(\beepalarm/Mcount_cnt_khz_cy<20>_rt_464 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<21>_rt  (
    .I0(\beepalarm/cnt_khz [21]),
    .O(\beepalarm/Mcount_cnt_khz_cy<21>_rt_465 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<22>_rt  (
    .I0(\beepalarm/cnt_khz [22]),
    .O(\beepalarm/Mcount_cnt_khz_cy<22>_rt_466 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<23>_rt  (
    .I0(\beepalarm/cnt_khz [23]),
    .O(\beepalarm/Mcount_cnt_khz_cy<23>_rt_467 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<24>_rt  (
    .I0(\beepalarm/cnt_khz [24]),
    .O(\beepalarm/Mcount_cnt_khz_cy<24>_rt_468 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<25>_rt  (
    .I0(\beepalarm/cnt_khz [25]),
    .O(\beepalarm/Mcount_cnt_khz_cy<25>_rt_469 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<26>_rt  (
    .I0(\beepalarm/cnt_khz [26]),
    .O(\beepalarm/Mcount_cnt_khz_cy<26>_rt_470 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<27>_rt  (
    .I0(\beepalarm/cnt_khz [27]),
    .O(\beepalarm/Mcount_cnt_khz_cy<27>_rt_471 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<28>_rt  (
    .I0(\beepalarm/cnt_khz [28]),
    .O(\beepalarm/Mcount_cnt_khz_cy<28>_rt_472 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<29>_rt  (
    .I0(\beepalarm/cnt_khz [29]),
    .O(\beepalarm/Mcount_cnt_khz_cy<29>_rt_473 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_cy<30>_rt  (
    .I0(\beepalarm/cnt_khz [30]),
    .O(\beepalarm/Mcount_cnt_khz_cy<30>_rt_474 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_RG_xor<25>_rt  (
    .I0(RG[25]),
    .O(\Mcount_RG_xor<25>_rt_475 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \beepalarm/Mcount_cnt_khz_xor<31>_rt  (
    .I0(\beepalarm/cnt_khz [31]),
    .O(\beepalarm/Mcount_cnt_khz_xor<31>_rt_476 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/clk_1k  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/clk_1k_rstpot_477 ),
    .Q(\beepalarm/clk_1k_5 )
  );
  FD   \ubnc_d/deb  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_d/deb_rstpot_478 ),
    .Q(\ubnc_d/deb_46 )
  );
  FD   \ubnc_c/deb  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_c/deb_rstpot_479 ),
    .Q(\ubnc_c/deb_45 )
  );
  FD   \ubnc_b/deb  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_b/deb_rstpot_480 ),
    .Q(\ubnc_b/deb_44 )
  );
  FD   \ubnc_a/deb  (
    .C(sec1KHZ_BUFG_8),
    .D(\ubnc_a/deb_rstpot_481 ),
    .Q(\ubnc_a/deb_43 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  _n0292_SW0_SW0 (
    .I0(Reg_HourSen[1]),
    .I1(Reg_HourJun[2]),
    .O(N30)
  );
  LUT5 #(
    .INIT ( 32'hCCC80000 ))
  _n02922_SW1 (
    .I0(Reg_minutes[2]),
    .I1(Reg_minutes[3]),
    .I2(Reg_minutes[0]),
    .I3(Reg_minutes[1]),
    .I4(N2),
    .O(N32)
  );
  LUT6 #(
    .INIT ( 64'hFFFF400040004000 ))
  _n0365_inv1 (
    .I0(\ubnc_a/deb_43 ),
    .I1(\ubnc_c/deb_45 ),
    .I2(\ubnc_d/deb_46 ),
    .I3(SETtikTak_6),
    .I4(N32),
    .I5(_n02921),
    .O(_n0365_inv)
  );
  FD #(
    .INIT ( 1'b0 ))
  Reg_HourSen_0 (
    .C(clk_BUFGP_2),
    .D(Reg_HourSen_0_rstpot_484),
    .Q(Reg_HourSen[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  Reg_HourSen_1 (
    .C(clk_BUFGP_2),
    .D(Reg_HourSen_1_rstpot_485),
    .Q(Reg_HourSen[1])
  );
  LUT6 #(
    .INIT ( 64'hEEEEEEEFFFFFFFFF ))
  _n02922_SW2 (
    .I0(Reg_HourSen[0]),
    .I1(Reg_HourJun[3]),
    .I2(Reg_minutes[0]),
    .I3(Reg_minutes[2]),
    .I4(Reg_minutes[1]),
    .I5(Reg_HourJun[0]),
    .O(N34)
  );
  LUT3 #(
    .INIT ( 8'hDF ))
  \beepalarm/_n0018_inv15_SW0  (
    .I0(\beepalarm/cnt_khz [14]),
    .I1(\beepalarm/cnt_khz [1]),
    .I2(\beepalarm/cnt_khz [12]),
    .O(N36)
  );
  LUT6 #(
    .INIT ( 64'h4000000000000000 ))
  \beepalarm/_n0018_inv17  (
    .I0(N36),
    .I1(\beepalarm/_n0018_inv12_373 ),
    .I2(\beepalarm/_n0018_inv16_376 ),
    .I3(\beepalarm/_n0018_inv11_372 ),
    .I4(\beepalarm/_n0018_inv13_374 ),
    .I5(\beepalarm/_n0018_inv14_375 ),
    .O(\beepalarm/_n0018_inv1 )
  );
  LUT4 #(
    .INIT ( 16'hFFBF ))
  _n0489_inv_SW1 (
    .I0(Reg_HourJun[2]),
    .I1(Reg_HourJun[0]),
    .I2(Reg_HourJun[1]),
    .I3(N12),
    .O(N38)
  );
  LUT5 #(
    .INIT ( 32'h33372337 ))
  _n0489_inv_SW2 (
    .I0(Reg_HourJun[2]),
    .I1(Reg_HourJun[3]),
    .I2(Reg_HourJun[0]),
    .I3(Reg_HourJun[1]),
    .I4(N12),
    .O(N39)
  );
  LUT6 #(
    .INIT ( 64'h0000CC110000C1C1 ))
  Reg_HourSen_0_rstpot (
    .I0(Reg_HourSen[1]),
    .I1(Reg_HourSen[0]),
    .I2(N38),
    .I3(N39),
    .I4(_n0292_47),
    .I5(_n0365_inv),
    .O(Reg_HourSen_0_rstpot_484)
  );
  LUT5 #(
    .INIT ( 32'hAAA8AEA8 ))
  _n0489_inv_SW4 (
    .I0(Reg_HourJun[3]),
    .I1(Reg_HourJun[1]),
    .I2(Reg_HourJun[2]),
    .I3(Reg_HourJun[0]),
    .I4(N12),
    .O(N42)
  );
  LUT6 #(
    .INIT ( 64'h00002C2C0000CC22 ))
  Reg_HourSen_1_rstpot (
    .I0(Reg_HourSen[0]),
    .I1(Reg_HourSen[1]),
    .I2(N42),
    .I3(N38),
    .I4(_n0292_47),
    .I5(_n0365_inv),
    .O(Reg_HourSen_1_rstpot_485)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \ubnc_c/deb_rstpot  (
    .I0(\ubnc_c/_n0013_339 ),
    .I1(\ubnc_c/deb_45 ),
    .I2(\ubnc_c/chain[9]_reduce_and_2_o ),
    .O(\ubnc_c/deb_rstpot_479 )
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \ubnc_b/deb_rstpot  (
    .I0(\ubnc_b/_n0013_350 ),
    .I1(\ubnc_b/deb_44 ),
    .I2(\ubnc_b/chain[9]_reduce_and_2_o ),
    .O(\ubnc_b/deb_rstpot_480 )
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \ubnc_a/deb_rstpot  (
    .I0(\ubnc_a/_n0013_361 ),
    .I1(\ubnc_a/deb_43 ),
    .I2(\ubnc_a/chain[9]_reduce_and_2_o ),
    .O(\ubnc_a/deb_rstpot_481 )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  _n0416_inv1_rstpot (
    .I0(Reg_minutes[3]),
    .I1(Reg_minutes[0]),
    .I2(Reg_minutes[1]),
    .I3(Reg_minutes[2]),
    .O(_n0416_inv1_rstpot_491)
  );
  LUT3 #(
    .INIT ( 8'hDF ))
  _n029211_SW0 (
    .I0(\ubnc_d/deb_46 ),
    .I1(\ubnc_b/deb_44 ),
    .I2(\ubnc_c/deb_45 ),
    .O(N44)
  );
  LUT6 #(
    .INIT ( 64'hF4F4F44444444444 ))
  _n0380_inv1 (
    .I0(N44),
    .I1(SETtikTak_6),
    .I2(Reg_secten[2]),
    .I3(Reg_secten[1]),
    .I4(Reg_secten[0]),
    .I5(_n029212),
    .O(_n0380_inv)
  );
  LUT6 #(
    .INIT ( 64'hA8A8A80000000000 ))
  _n0292_SW0 (
    .I0(Reg_secten[2]),
    .I1(Reg_secten[1]),
    .I2(Reg_secten[0]),
    .I3(Reg_minten[0]),
    .I4(Reg_minten[1]),
    .I5(Reg_HourJun[1]),
    .O(N46)
  );
  LUT6 #(
    .INIT ( 64'h0000080000000000 ))
  _n0292 (
    .I0(Reg_minten[2]),
    .I1(Reg_minutes[3]),
    .I2(N30),
    .I3(N46),
    .I4(N34),
    .I5(_n029212),
    .O(_n0292_47)
  );
  MUXCY   ALARM_glue_rst_cy (
    .CI(\Reg_HourSen[1]_Reg_TT[1]_equal_18_o ),
    .DI(GND_0),
    .S(ALARM_glue_rst_cy_rt_497),
    .O(ALARM_glue_rst)
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \beepalarm/clk_1k_rstpot  (
    .I0(\beepalarm/clk_1k_5 ),
    .I1(ALARM_35),
    .I2(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/clk_1k_rstpot_477 )
  );
  LUT4 #(
    .INIT ( 16'h4666 ))
  Reg_minten_0_dpot (
    .I0(_n0416_inv1_rstpot_491),
    .I1(Reg_minten[0]),
    .I2(Reg_minten[1]),
    .I3(Reg_minten[2]),
    .O(Reg_minten_0_dpot_492)
  );
  LUT4 #(
    .INIT ( 16'h12AA ))
  Reg_minten_1_dpot (
    .I0(Reg_minten[1]),
    .I1(Reg_minten[2]),
    .I2(Reg_minten[0]),
    .I3(_n0416_inv1_rstpot_491),
    .O(Reg_minten_1_dpot_493)
  );
  LUT4 #(
    .INIT ( 16'h42AA ))
  Reg_minten_2_dpot (
    .I0(Reg_minten[2]),
    .I1(Reg_minten[0]),
    .I2(Reg_minten[1]),
    .I3(_n0416_inv1_rstpot_491),
    .O(Reg_minten_2_dpot_494)
  );
  LUT6 #(
    .INIT ( 64'hEEEFEFEF01000000 ))
  Reg_minTT_2_glue_rst (
    .I0(\ubnc_c/deb_45 ),
    .I1(\ubnc_d/deb_46 ),
    .I2(Reg_minTT[3]),
    .I3(Reg_minTT[0]),
    .I4(Reg_minTT[1]),
    .I5(Reg_minTT[2]),
    .O(Reg_minTT_2_glue_rst_420)
  );
  LUT6 #(
    .INIT ( 64'hE0E1E0E1E0E1E1E1 ))
  Reg_minTT_0_glue_rst (
    .I0(\ubnc_c/deb_45 ),
    .I1(\ubnc_d/deb_46 ),
    .I2(Reg_minTT[0]),
    .I3(Reg_minTT[3]),
    .I4(Reg_minTT[1]),
    .I5(Reg_minTT[2]),
    .O(Reg_minTT_0_glue_rst_419)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  ALARM_glue_rst_cy_rt (
    .I0(RG[25]),
    .O(ALARM_glue_rst_cy_rt_497)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_0_rstpot (
    .I0(Result[0]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv ),
    .O(RG_0_rstpot_498)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_0 (
    .C(clk_BUFGP_2),
    .D(RG_0_rstpot_498),
    .Q(RG[0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_1_rstpot (
    .I0(Result[1]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv ),
    .O(RG_1_rstpot_499)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_1 (
    .C(clk_BUFGP_2),
    .D(RG_1_rstpot_499),
    .Q(RG[1])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_2_rstpot (
    .I0(Result[2]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv ),
    .O(RG_2_rstpot_500)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_2 (
    .C(clk_BUFGP_2),
    .D(RG_2_rstpot_500),
    .Q(RG[2])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_3_rstpot (
    .I0(Result[3]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv ),
    .O(RG_3_rstpot_501)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_3 (
    .C(clk_BUFGP_2),
    .D(RG_3_rstpot_501),
    .Q(RG[3])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_4_rstpot (
    .I0(Result[4]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv ),
    .O(RG_4_rstpot_502)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_4 (
    .C(clk_BUFGP_2),
    .D(RG_4_rstpot_502),
    .Q(RG[4])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_5_rstpot (
    .I0(Result[5]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv ),
    .O(RG_5_rstpot_503)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_5 (
    .C(clk_BUFGP_2),
    .D(RG_5_rstpot_503),
    .Q(RG[5])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_6_rstpot (
    .I0(Result[6]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv ),
    .O(RG_6_rstpot_504)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_6 (
    .C(clk_BUFGP_2),
    .D(RG_6_rstpot_504),
    .Q(RG[6])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_7_rstpot (
    .I0(Result[7]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv ),
    .O(RG_7_rstpot_505)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_7 (
    .C(clk_BUFGP_2),
    .D(RG_7_rstpot_505),
    .Q(RG[7])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_8_rstpot (
    .I0(Result[8]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv ),
    .O(RG_8_rstpot_506)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_8 (
    .C(clk_BUFGP_2),
    .D(RG_8_rstpot_506),
    .Q(RG[8])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_9_rstpot (
    .I0(Result[9]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv ),
    .O(RG_9_rstpot_507)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_9 (
    .C(clk_BUFGP_2),
    .D(RG_9_rstpot_507),
    .Q(RG[9])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_10_rstpot (
    .I0(Result[10]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv ),
    .O(RG_10_rstpot_508)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_10 (
    .C(clk_BUFGP_2),
    .D(RG_10_rstpot_508),
    .Q(RG[10])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_11_rstpot (
    .I0(Result[11]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv ),
    .O(RG_11_rstpot_509)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_11 (
    .C(clk_BUFGP_2),
    .D(RG_11_rstpot_509),
    .Q(RG[11])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_12_rstpot (
    .I0(Result[12]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv ),
    .O(RG_12_rstpot_510)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_12 (
    .C(clk_BUFGP_2),
    .D(RG_12_rstpot_510),
    .Q(RG[12])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_13_rstpot (
    .I0(Result[13]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv4_524 ),
    .O(RG_13_rstpot_511)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_13 (
    .C(clk_BUFGP_2),
    .D(RG_13_rstpot_511),
    .Q(RG[13])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_14_rstpot (
    .I0(Result[14]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv4_524 ),
    .O(RG_14_rstpot_512)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_14 (
    .C(clk_BUFGP_2),
    .D(RG_14_rstpot_512),
    .Q(RG[14])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_15_rstpot (
    .I0(Result[15]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv4_524 ),
    .O(RG_15_rstpot_513)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_15 (
    .C(clk_BUFGP_2),
    .D(RG_15_rstpot_513),
    .Q(RG[15])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_16_rstpot (
    .I0(Result[16]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv4_524 ),
    .O(RG_16_rstpot_514)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_16 (
    .C(clk_BUFGP_2),
    .D(RG_16_rstpot_514),
    .Q(RG[16])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_17_rstpot (
    .I0(Result[17]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv4_524 ),
    .O(RG_17_rstpot_515)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_17 (
    .C(clk_BUFGP_2),
    .D(RG_17_rstpot_515),
    .Q(RG[17])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_18_rstpot (
    .I0(Result[18]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv4_524 ),
    .O(RG_18_rstpot_516)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_18 (
    .C(clk_BUFGP_2),
    .D(RG_18_rstpot_516),
    .Q(RG[18])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_19_rstpot (
    .I0(Result[19]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv4_524 ),
    .O(RG_19_rstpot_517)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_19 (
    .C(clk_BUFGP_2),
    .D(RG_19_rstpot_517),
    .Q(RG[19])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_20_rstpot (
    .I0(Result[20]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv4_524 ),
    .O(RG_20_rstpot_518)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_20 (
    .C(clk_BUFGP_2),
    .D(RG_20_rstpot_518),
    .Q(RG[20])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_21_rstpot (
    .I0(Result[21]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv4_524 ),
    .O(RG_21_rstpot_519)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_21 (
    .C(clk_BUFGP_2),
    .D(RG_21_rstpot_519),
    .Q(RG[21])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_22_rstpot (
    .I0(Result[22]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv4_524 ),
    .O(RG_22_rstpot_520)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_22 (
    .C(clk_BUFGP_2),
    .D(RG_22_rstpot_520),
    .Q(RG[22])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_23_rstpot (
    .I0(Result[23]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv4_524 ),
    .O(RG_23_rstpot_521)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_23 (
    .C(clk_BUFGP_2),
    .D(RG_23_rstpot_521),
    .Q(RG[23])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_24_rstpot (
    .I0(Result[24]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv4_524 ),
    .O(RG_24_rstpot_522)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_24 (
    .C(clk_BUFGP_2),
    .D(RG_24_rstpot_522),
    .Q(RG[24])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  RG_25_rstpot (
    .I0(Result[25]),
    .I1(\RG[25]_PWR_1_o_LessThan_20_o_inv4_524 ),
    .O(RG_25_rstpot_523)
  );
  FD #(
    .INIT ( 1'b0 ))
  RG_25 (
    .C(clk_BUFGP_2),
    .D(RG_25_rstpot_523),
    .Q(RG[25])
  );
  LUT6 #(
    .INIT ( 64'hFE00AA00FA00AA00 ))
  \RG[25]_PWR_1_o_LessThan_20_o_inv4_1  (
    .I0(RG[24]),
    .I1(RG[17]),
    .I2(RG[18]),
    .I3(RG[25]),
    .I4(\RG[25]_PWR_1_o_LessThan_20_o_inv1_381 ),
    .I5(\RG[25]_PWR_1_o_LessThan_20_o_inv3_383 ),
    .O(\RG[25]_PWR_1_o_LessThan_20_o_inv4_524 )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  _n03081_rstpot (
    .I0(Reg_milisecsec[3]),
    .I1(Reg_milisecsec[0]),
    .I2(Reg_milisecsec[1]),
    .I3(Reg_milisecsec[2]),
    .O(_n03081_rstpot_525)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Reg_milisecfrst_0_dpot (
    .I0(_n03081_rstpot_525),
    .I1(Reg_milisecfrst[0]),
    .I2(\Result<0>6 ),
    .O(Reg_milisecfrst_0_dpot_526)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Reg_milisecfrst_1_dpot (
    .I0(_n03081_rstpot_525),
    .I1(Reg_milisecfrst[1]),
    .I2(\Result<1>6 ),
    .O(Reg_milisecfrst_1_dpot_527)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Reg_milisecfrst_2_dpot (
    .I0(_n03081_rstpot_525),
    .I1(Reg_milisecfrst[2]),
    .I2(\Result<2>5 ),
    .O(Reg_milisecfrst_2_dpot_528)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Reg_milisecfrst_3_dpot (
    .I0(_n03081_rstpot_525),
    .I1(Reg_milisecfrst[3]),
    .I2(\Result<3>4 ),
    .O(Reg_milisecfrst_3_dpot_529)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_0_rstpot  (
    .I0(\Result<0>7 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_0_rstpot_530 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_0  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_0_rstpot_530 ),
    .Q(\beepalarm/cnt_khz [0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_1_rstpot  (
    .I0(\Result<1>7 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_1_rstpot_531 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_1  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_1_rstpot_531 ),
    .Q(\beepalarm/cnt_khz [1])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_2_rstpot  (
    .I0(\Result<2>6 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_2_rstpot_532 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_2  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_2_rstpot_532 ),
    .Q(\beepalarm/cnt_khz [2])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_3_rstpot  (
    .I0(\Result<3>5 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_3_rstpot_533 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_3  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_3_rstpot_533 ),
    .Q(\beepalarm/cnt_khz [3])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_4_rstpot  (
    .I0(\Result<4>1 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_4_rstpot_534 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_4  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_4_rstpot_534 ),
    .Q(\beepalarm/cnt_khz [4])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_5_rstpot  (
    .I0(\Result<5>1 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_5_rstpot_535 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_5  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_5_rstpot_535 ),
    .Q(\beepalarm/cnt_khz [5])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_6_rstpot  (
    .I0(\Result<6>1 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_6_rstpot_536 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_6  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_6_rstpot_536 ),
    .Q(\beepalarm/cnt_khz [6])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_7_rstpot  (
    .I0(\Result<7>1 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_7_rstpot_537 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_7  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_7_rstpot_537 ),
    .Q(\beepalarm/cnt_khz [7])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_8_rstpot  (
    .I0(\Result<8>1 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_8_rstpot_538 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_8  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_8_rstpot_538 ),
    .Q(\beepalarm/cnt_khz [8])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_9_rstpot  (
    .I0(\Result<9>1 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_9_rstpot_539 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_9  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_9_rstpot_539 ),
    .Q(\beepalarm/cnt_khz [9])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_10_rstpot  (
    .I0(\Result<10>1 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_10_rstpot_540 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_10  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_10_rstpot_540 ),
    .Q(\beepalarm/cnt_khz [10])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_11_rstpot  (
    .I0(\Result<11>1 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_11_rstpot_541 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_11  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_11_rstpot_541 ),
    .Q(\beepalarm/cnt_khz [11])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_12_rstpot  (
    .I0(\Result<12>1 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_12_rstpot_542 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_12  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_12_rstpot_542 ),
    .Q(\beepalarm/cnt_khz [12])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_13_rstpot  (
    .I0(\Result<13>1 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_13_rstpot_543 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_13  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_13_rstpot_543 ),
    .Q(\beepalarm/cnt_khz [13])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_14_rstpot  (
    .I0(\Result<14>1 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_14_rstpot_544 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_14  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_14_rstpot_544 ),
    .Q(\beepalarm/cnt_khz [14])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_15_rstpot  (
    .I0(\Result<15>1 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_15_rstpot_545 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_15  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_15_rstpot_545 ),
    .Q(\beepalarm/cnt_khz [15])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_16_rstpot  (
    .I0(\Result<16>1 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_16_rstpot_546 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_16  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_16_rstpot_546 ),
    .Q(\beepalarm/cnt_khz [16])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_17_rstpot  (
    .I0(\Result<17>1 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_17_rstpot_547 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_17  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_17_rstpot_547 ),
    .Q(\beepalarm/cnt_khz [17])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_18_rstpot  (
    .I0(\Result<18>1 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_18_rstpot_548 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_18  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_18_rstpot_548 ),
    .Q(\beepalarm/cnt_khz [18])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_19_rstpot  (
    .I0(\Result<19>1 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_19_rstpot_549 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_19  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_19_rstpot_549 ),
    .Q(\beepalarm/cnt_khz [19])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_20_rstpot  (
    .I0(\Result<20>1 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_20_rstpot_550 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_20  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_20_rstpot_550 ),
    .Q(\beepalarm/cnt_khz [20])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_21_rstpot  (
    .I0(\Result<21>1 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_21_rstpot_551 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_21  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_21_rstpot_551 ),
    .Q(\beepalarm/cnt_khz [21])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_22_rstpot  (
    .I0(\Result<22>1 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_22_rstpot_552 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_22  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_22_rstpot_552 ),
    .Q(\beepalarm/cnt_khz [22])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_23_rstpot  (
    .I0(\Result<23>1 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_23_rstpot_553 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_23  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_23_rstpot_553 ),
    .Q(\beepalarm/cnt_khz [23])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_24_rstpot  (
    .I0(\Result<24>1 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_24_rstpot_554 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_24  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_24_rstpot_554 ),
    .Q(\beepalarm/cnt_khz [24])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_25_rstpot  (
    .I0(\Result<25>1 ),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_25_rstpot_555 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_25  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_25_rstpot_555 ),
    .Q(\beepalarm/cnt_khz [25])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_26_rstpot  (
    .I0(Result[26]),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_26_rstpot_556 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_26  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_26_rstpot_556 ),
    .Q(\beepalarm/cnt_khz [26])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_27_rstpot  (
    .I0(Result[27]),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_27_rstpot_557 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_27  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_27_rstpot_557 ),
    .Q(\beepalarm/cnt_khz [27])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_28_rstpot  (
    .I0(Result[28]),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_28_rstpot_558 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_28  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_28_rstpot_558 ),
    .Q(\beepalarm/cnt_khz [28])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_29_rstpot  (
    .I0(Result[29]),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_29_rstpot_559 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_29  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_29_rstpot_559 ),
    .Q(\beepalarm/cnt_khz [29])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_30_rstpot  (
    .I0(Result[30]),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_30_rstpot_560 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_30  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_30_rstpot_560 ),
    .Q(\beepalarm/cnt_khz [30])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \beepalarm/cnt_khz_31_rstpot  (
    .I0(Result[31]),
    .I1(\beepalarm/_n0018_inv1 ),
    .O(\beepalarm/cnt_khz_31_rstpot_561 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \beepalarm/cnt_khz_31  (
    .C(clk_BUFGP_2),
    .D(\beepalarm/cnt_khz_31_rstpot_561 ),
    .Q(\beepalarm/cnt_khz [31])
  );
  FD #(
    .INIT ( 1'b0 ))
  sec1KHZ_1 (
    .C(clk_BUFGP_2),
    .D(\RG[15]_GND_1_o_equal_22_o ),
    .Q(sec1KHZ_1_562)
  );
  FD #(
    .INIT ( 1'b0 ))
  Reg_milisecsec_0 (
    .C(clk_BUFGP_2),
    .D(Reg_milisecsec_0_rstpot_563),
    .Q(Reg_milisecsec[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  Reg_milisecsec_1 (
    .C(clk_BUFGP_2),
    .D(Reg_milisecsec_1_rstpot_564),
    .Q(Reg_milisecsec[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  Reg_milisecsec_2 (
    .C(clk_BUFGP_2),
    .D(Reg_milisecsec_2_rstpot_565),
    .Q(Reg_milisecsec[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  Reg_milisecsec_3 (
    .C(clk_BUFGP_2),
    .D(Reg_milisecsec_3_rstpot_566),
    .Q(Reg_milisecsec[3])
  );
  LUT5 #(
    .INIT ( 32'h6222222A ))
  Reg_milisecsec_3_rstpot (
    .I0(Reg_milisecsec[3]),
    .I1(_n03153),
    .I2(Reg_milisecsec[0]),
    .I3(Reg_milisecsec[1]),
    .I4(Reg_milisecsec[2]),
    .O(Reg_milisecsec_3_rstpot_566)
  );
  LUT5 #(
    .INIT ( 32'h1444CCCC ))
  Reg_milisecsec_2_rstpot (
    .I0(Reg_milisecsec[3]),
    .I1(Reg_milisecsec[2]),
    .I2(Reg_milisecsec[1]),
    .I3(Reg_milisecsec[0]),
    .I4(_n03153),
    .O(Reg_milisecsec_2_rstpot_565)
  );
  LUT4 #(
    .INIT ( 16'h12AA ))
  Reg_milisecsec_1_rstpot (
    .I0(Reg_milisecsec[1]),
    .I1(Reg_milisecsec[3]),
    .I2(Reg_milisecsec[0]),
    .I3(_n03153),
    .O(Reg_milisecsec_1_rstpot_564)
  );
  LUT5 #(
    .INIT ( 32'h46464666 ))
  Reg_milisecsec_0_rstpot (
    .I0(_n03153),
    .I1(Reg_milisecsec[0]),
    .I2(Reg_milisecsec[3]),
    .I3(Reg_milisecsec[1]),
    .I4(Reg_milisecsec[2]),
    .O(Reg_milisecsec_0_rstpot_563)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_2)
  );
  BUFG   sec1KHZ_BUFG (
    .O(sec1KHZ_BUFG_8),
    .I(sec1KHZ_567)
  );
  INV   \Mcount_RG_lut<0>_INV_0  (
    .I(RG[0]),
    .O(Mcount_RG_lut[0])
  );
  INV   \beepalarm/Mcount_cnt_khz_lut<0>_INV_0  (
    .I(\beepalarm/cnt_khz [0]),
    .O(\beepalarm/Mcount_cnt_khz_lut [0])
  );
  INV   in_BUT1_inv1_INV_0 (
    .I(\ubnc_a/deb_43 ),
    .O(in_BUT1_inv)
  );
  INV   in_BUT2_inv1_INV_0 (
    .I(\ubnc_b/deb_44 ),
    .O(in_BUT2_inv)
  );
  INV   \Mcount_Reg_secundes_xor<0>11_INV_0  (
    .I(Reg_secundes[0]),
    .O(\Result<0>2 )
  );
  INV   \Mcount_Reg_dynamics_xor<0>11_INV_0  (
    .I(Reg_dynamics[0]),
    .O(\Result<0>1 )
  );
  INV   \Mcount_Reg_secten_xor<0>11_INV_0  (
    .I(Reg_secten[0]),
    .O(\Result<0>3 )
  );
  INV   \Mcount_Reg_milisecth_xor<0>11_INV_0  (
    .I(Reg_milisecth[0]),
    .O(\Result<0>4 )
  );
  INV   \Mcount_Reg_HourTT_xor<0>11_INV_0  (
    .I(Reg_HourTT[0]),
    .O(\Result<0>8 )
  );
  INV   \Mcount_Reg_milisecfrst_xor<0>11_INV_0  (
    .I(Reg_milisecfrst[0]),
    .O(\Result<0>6 )
  );
  INV   \Mcount_Reg_mTT_xor<0>11_INV_0  (
    .I(Reg_mTT[0]),
    .O(\Result<0>9 )
  );
  INV   \Mcount_Reg_TT_xor<0>11_INV_0  (
    .I(Reg_TT[0]),
    .O(\Result<0>10 )
  );
  MUXF7   \ubnc_d/deb_rstpot  (
    .I0(N48),
    .I1(N49),
    .S(\ubnc_d/chain [2]),
    .O(\ubnc_d/deb_rstpot_478 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAA8 ))
  \ubnc_d/deb_rstpot_F  (
    .I0(\ubnc_d/deb_46 ),
    .I1(\ubnc_d/chain [1]),
    .I2(\ubnc_d/chain [8]),
    .I3(\ubnc_d/chain [7]),
    .I4(\ubnc_d/chain [3]),
    .I5(N14),
    .O(N48)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80000000 ))
  \ubnc_d/deb_rstpot_G  (
    .I0(\ubnc_d/chain [1]),
    .I1(\ubnc_d/chain [8]),
    .I2(\ubnc_d/chain [7]),
    .I3(\ubnc_d/chain [3]),
    .I4(N16),
    .I5(\ubnc_d/deb_46 ),
    .O(N49)
  );
  MUXF7   \Reg_dynamics<1>54  (
    .I0(N50),
    .I1(N51),
    .S(\ubnc_c/deb_45 ),
    .O(Connect_MUX[3])
  );
  LUT6 #(
    .INIT ( 64'hDDD55D5588800800 ))
  \Reg_dynamics<1>54_F  (
    .I0(Reg_dynamics[0]),
    .I1(\ubnc_d/deb_46 ),
    .I2(Reg_dynamics[1]),
    .I3(Reg_milisecsec[3]),
    .I4(Reg_secundes[3]),
    .I5(\Reg_dynamics<1>5 ),
    .O(N50)
  );
  LUT6 #(
    .INIT ( 64'h5515410154144000 ))
  \Reg_dynamics<1>54_G  (
    .I0(Reg_dynamics[0]),
    .I1(Reg_dynamics[1]),
    .I2(\ubnc_d/deb_46 ),
    .I3(Reg_HourJun[3]),
    .I4(Reg_minutes[3]),
    .I5(Reg_secundes[3]),
    .O(N51)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \ubnc_d/Mshreg_chain_1  (
    .A0(GND_0),
    .A1(GND_0),
    .A2(GND_0),
    .A3(GND_0),
    .CE(OUTCR_14_OBUF_73),
    .CLK(sec1KHZ_BUFG_8),
    .D(swch_1_IBUF_1),
    .Q(\ubnc_d/Mshreg_chain_1_572 ),
    .Q15(\NLW_ubnc_d/Mshreg_chain_1_Q15_UNCONNECTED )
  );
  FDE   \ubnc_d/chain_1  (
    .C(sec1KHZ_BUFG_8),
    .CE(OUTCR_14_OBUF_73),
    .D(\ubnc_d/Mshreg_chain_1_572 ),
    .Q(\ubnc_d/chain [1])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \ubnc_c/Mshreg_chain_1  (
    .A0(GND_0),
    .A1(GND_0),
    .A2(GND_0),
    .A3(GND_0),
    .CE(OUTCR_14_OBUF_73),
    .CLK(sec1KHZ_BUFG_8),
    .D(swch_0_IBUF_0),
    .Q(\ubnc_c/Mshreg_chain_1_573 ),
    .Q15(\NLW_ubnc_c/Mshreg_chain_1_Q15_UNCONNECTED )
  );
  FDE   \ubnc_c/chain_1  (
    .C(sec1KHZ_BUFG_8),
    .CE(OUTCR_14_OBUF_73),
    .D(\ubnc_c/Mshreg_chain_1_573 ),
    .Q(\ubnc_c/chain [1])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \ubnc_b/Mshreg_chain_1  (
    .A0(GND_0),
    .A1(GND_0),
    .A2(GND_0),
    .A3(GND_0),
    .CE(OUTCR_14_OBUF_73),
    .CLK(sec1KHZ_BUFG_8),
    .D(BUT2_IBUF_4),
    .Q(\ubnc_b/Mshreg_chain_1_574 ),
    .Q15(\NLW_ubnc_b/Mshreg_chain_1_Q15_UNCONNECTED )
  );
  FDE   \ubnc_b/chain_1  (
    .C(sec1KHZ_BUFG_8),
    .CE(OUTCR_14_OBUF_73),
    .D(\ubnc_b/Mshreg_chain_1_574 ),
    .Q(\ubnc_b/chain [1])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \ubnc_a/Mshreg_chain_1  (
    .A0(GND_0),
    .A1(GND_0),
    .A2(GND_0),
    .A3(GND_0),
    .CE(OUTCR_14_OBUF_73),
    .CLK(sec1KHZ_BUFG_8),
    .D(BUT1_IBUF_3),
    .Q(\ubnc_a/Mshreg_chain_1_575 ),
    .Q15(\NLW_ubnc_a/Mshreg_chain_1_Q15_UNCONNECTED )
  );
  FDE   \ubnc_a/chain_1  (
    .C(sec1KHZ_BUFG_8),
    .CE(OUTCR_14_OBUF_73),
    .D(\ubnc_a/Mshreg_chain_1_575 ),
    .Q(\ubnc_a/chain [1])
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif


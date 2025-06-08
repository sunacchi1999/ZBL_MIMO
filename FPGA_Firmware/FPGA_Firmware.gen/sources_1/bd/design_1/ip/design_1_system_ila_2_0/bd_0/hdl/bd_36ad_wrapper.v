//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_36ad_wrapper.bd
//Design : bd_36ad_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_36ad_wrapper
   (clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4);
  input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [27:0]probe2;
  input [23:0]probe3;
  input [7:0]probe4;

  wire clk;
  wire [0:0]probe0;
  wire [0:0]probe1;
  wire [27:0]probe2;
  wire [23:0]probe3;
  wire [7:0]probe4;

  bd_36ad bd_36ad_i
       (.clk(clk),
        .probe0(probe0),
        .probe1(probe1),
        .probe2(probe2),
        .probe3(probe3),
        .probe4(probe4));
endmodule

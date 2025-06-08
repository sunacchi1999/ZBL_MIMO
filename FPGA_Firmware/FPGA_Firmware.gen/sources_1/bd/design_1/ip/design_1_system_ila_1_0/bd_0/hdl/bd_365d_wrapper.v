//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_365d_wrapper.bd
//Design : bd_365d_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_365d_wrapper
   (clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4,
    probe5);
  input clk;
  input [0:0]probe0;
  input [3:0]probe1;
  input [27:0]probe2;
  input [23:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;

  wire clk;
  wire [0:0]probe0;
  wire [3:0]probe1;
  wire [27:0]probe2;
  wire [23:0]probe3;
  wire [0:0]probe4;
  wire [0:0]probe5;

  bd_365d bd_365d_i
       (.clk(clk),
        .probe0(probe0),
        .probe1(probe1),
        .probe2(probe2),
        .probe3(probe3),
        .probe4(probe4),
        .probe5(probe5));
endmodule

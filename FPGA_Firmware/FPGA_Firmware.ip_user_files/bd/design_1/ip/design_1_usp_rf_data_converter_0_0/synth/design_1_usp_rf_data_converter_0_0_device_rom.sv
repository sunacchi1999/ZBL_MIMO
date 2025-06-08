//----------------------------------------------------------------------------
// Title : ROM for tile configuration
// Project : Ultrascale+ RF Data Converter Subsystem
//----------------------------------------------------------------------------
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 

`timescale 1ps/1ps

module design_1_usp_rf_data_converter_0_0_device_rom (
    aux_clk,
    data_index,
    data_out,
    addr_out,
    tile_out
  );

    input aux_clk;

    input [10:0] data_index;

    output [15:0] data_out;
    output [10:0] addr_out;
    output [2:0]  tile_out;

    reg [29:0] data;

    // The 30-bit data in the array follows the format below:
    // 29:27 |  26:24  |    23:16    |    15:0
    // Tile  |  Slice  | DRP Address |  DRP Data

    (* rom_style = "distributed" *) reg [29:0] data_array [0:650] = '{
       30'h07230000,  // Clock Network Control 0 (ADC0)
       30'h07240008,  // Clock Network Control 1(ADC0)
       30'h07224028,  // Clock Distribution Control (ADC0)
       30'h00740080, // RX_PAIR_MC_CONFIG0 (ADC00)
       30'h01740080, // RX_PAIR_MC_CONFIG0 (ADC01)
       30'h02740080, // RX_PAIR_MC_CONFIG0 (ADC02)
       30'h03740080, // RX_PAIR_MC_CONFIG0 (ADC03)
       30'h070c0000,  // PLL Output Divide (ADC0)
       30'h072c0022,  // CLK_DIV (ADC0)
       30'h07280280,  // SYSREF Distribution (ADC0)
       30'h072df0fe,  // HSCOM_PWR_MASK (ADC0)
       30'h07310062,  // CLOCK_DETECT_CTRL0 (ADC0)
       30'h07320032,  // CLOCK_DETECT_CTRL1 (ADC0)
       30'h07300000,  // FIFO_START (ADC0)
       30'h00020504,  // ADC00 Data Width
       30'h00100000,  // ADC00 Decimation Config
       30'h00110001,  // ADC00 Decimation Mode
       30'h00200000,  // ADC00 Mixer Config 0
       30'h00210924,  // ADC00 Mixer Config 1
       30'h003a0000,  // ADC00 Switch Matrix Config
       30'h007121e1,  // ADC00 RX MC Config 0
       30'h00780002,  // ADC00 DSA Control
       30'h005181c3,  // ADC00 TI_DCB_CTRL0
       30'h0055d448,  // ADC00 TI_TIME_SKEW_CTRL0
       30'h005a0001,  // ADC00 TI_TIME_SKEW_CTRL5
       30'h0005003f,  // ADC00 FABRIC_IMR
       30'h000f3fff,  // ADC00 DATAPATH_IMR
       30'h000d00ff,  // ADC00 DECODER_IMR
       30'h00060005,  // ADC00 FABRIC_DEBUG
       30'h01020504,  // ADC01 Data Width
       30'h01100000,  // ADC01 Decimation Config
       30'h01110001,  // ADC01 Decimation Mode
       30'h01200000,  // ADC01 Mixer Config 0
       30'h01210924,  // ADC01 Mixer Config 1
       30'h013a0004,  // ADC01 Switch Matrix Config
       30'h017121e1,  // ADC01 RX MC Config 0
       30'h01780002,  // ADC01 DSA Control
       30'h015181c3,  // ADC01 TI_DCB_CTRL0
       30'h0155d448,  // ADC01 TI_TIME_SKEW_CTRL0
       30'h015a0001,  // ADC01 TI_TIME_SKEW_CTRL5
       30'h0105003f,  // ADC01 FABRIC_IMR
       30'h010f3fff,  // ADC01 DATAPATH_IMR
       30'h010d00ff,  // ADC01 DECODER_IMR
       30'h01060005,  // ADC01 FABRIC_DEBUG
       30'h02020504,  // ADC02 Data Width
       30'h02100000,  // ADC02 Decimation Config
       30'h02110001,  // ADC02 Decimation Mode
       30'h02200000,  // ADC02 Mixer Config 0
       30'h02210924,  // ADC02 Mixer Config 1
       30'h023a0008,  // ADC02 Switch Matrix Config
       30'h027121e1,  // ADC02 RX MC Config 0
       30'h02780002,  // ADC02 DSA Control
       30'h025181c3,  // ADC02 TI_DCB_CTRL0
       30'h0255d448,  // ADC02 TI_TIME_SKEW_CTRL0
       30'h025a0001,  // ADC02 TI_TIME_SKEW_CTRL5
       30'h0205003f,  // ADC02 FABRIC_IMR
       30'h020f3fff,  // ADC02 DATAPATH_IMR
       30'h020d00ff,  // ADC02 DECODER_IMR
       30'h02060005,  // ADC02 FABRIC_DEBUG
       30'h03020504,  // ADC03 Data Width
       30'h03100000,  // ADC03 Decimation Config
       30'h03110001,  // ADC03 Decimation Mode
       30'h03200000,  // ADC03 Mixer Config 0
       30'h03210924,  // ADC03 Mixer Config 1
       30'h033a000c,  // ADC03 Switch Matrix Config
       30'h037121e1,  // ADC03 RX MC Config 0
       30'h03780002,  // ADC03 DSA Control
       30'h035181c3,  // ADC03 TI_DCB_CTRL0
       30'h0355d448,  // ADC03 TI_TIME_SKEW_CTRL0
       30'h035a0001,  // ADC03 TI_TIME_SKEW_CTRL5
       30'h0305003f,  // ADC03 FABRIC_IMR
       30'h030f3fff,  // ADC03 DATAPATH_IMR
       30'h030d00ff,  // ADC03 DECODER_IMR
       30'h03060005,  // ADC03 FABRIC_DEBUG
       30'h0f230000,  // Clock Network Control 0 (ADC1)
       30'h0f240028,  // Clock Network Control 1(ADC1)
       30'h0f228ca0,  // Clock Distribution Control (ADC1)
       30'h08740080, // RX_PAIR_MC_CONFIG0 (ADC10)
       30'h09740080, // RX_PAIR_MC_CONFIG0 (ADC11)
       30'h0a740080, // RX_PAIR_MC_CONFIG0 (ADC12)
       30'h0b740080, // RX_PAIR_MC_CONFIG0 (ADC13)
       30'h0f17003a,  // PLL FB Div (ADC1)
       30'h0f0c00c1,  // PLL Output Divide (ADC1)
       30'h0f100010,  // PLL Ref clock divide (ADC1)
       30'h0f000080,  // PLL SDM CONFIG0 (ADC1)
       30'h0f060111,  // PLL SDM seed (ADC1)
       30'h0f070011,  // PLL SDM seed setup (ADC1)
       30'h0f0e0d07,  // PLL ChargePump setup (ADC1)
       30'h0f0f2080,  // PLL temprature sensor control (ADC1)
       30'h0f123fff,  // PLL ChargePump setup (ADC1)
       30'h0f137f84,  // PLL loop filter setup (ADC1)
       30'h0f140006,  // PLL loop filter setup (ADC1)
       30'h0f155800,  // PLL VCO setup (ADC1)
       30'h0f160008,  // PLL VCO setup (ADC1)
       30'h0f0a7a20,  // PLL Coarse Frequency setup (ADC1)
       30'h0f0b7008,  // PLL Coarse Frequency setup (ADC1)
       30'h0f11002d,  // PLL Voltage Regulator setup (ADC1)
       30'h0f2c0025,  // CLK_DIV (ADC1)
       30'h0f280600,  // SYSREF Distribution (ADC1)
       30'h0f2dfffc,  // HSCOM_PWR_MASK (ADC1)
       30'h0f310062,  // CLOCK_DETECT_CTRL0 (ADC1)
       30'h0f320032,  // CLOCK_DETECT_CTRL1 (ADC1)
       30'h0f300000,  // FIFO_START (ADC1)
       30'h08020504,  // ADC10 Data Width
       30'h08100000,  // ADC10 Decimation Config
       30'h08110001,  // ADC10 Decimation Mode
       30'h08200000,  // ADC10 Mixer Config 0
       30'h08210924,  // ADC10 Mixer Config 1
       30'h083a0000,  // ADC10 Switch Matrix Config
       30'h087121e1,  // ADC10 RX MC Config 0
       30'h08780002,  // ADC10 DSA Control
       30'h085181c3,  // ADC10 TI_DCB_CTRL0
       30'h0855d448,  // ADC10 TI_TIME_SKEW_CTRL0
       30'h085a0001,  // ADC10 TI_TIME_SKEW_CTRL5
       30'h0805003f,  // ADC10 FABRIC_IMR
       30'h080f3fff,  // ADC10 DATAPATH_IMR
       30'h080d00ff,  // ADC10 DECODER_IMR
       30'h08060005,  // ADC10 FABRIC_DEBUG
       30'h09020504,  // ADC11 Data Width
       30'h09100000,  // ADC11 Decimation Config
       30'h09110001,  // ADC11 Decimation Mode
       30'h09200000,  // ADC11 Mixer Config 0
       30'h09210924,  // ADC11 Mixer Config 1
       30'h093a0004,  // ADC11 Switch Matrix Config
       30'h097121e1,  // ADC11 RX MC Config 0
       30'h09780002,  // ADC11 DSA Control
       30'h095181c3,  // ADC11 TI_DCB_CTRL0
       30'h0955d448,  // ADC11 TI_TIME_SKEW_CTRL0
       30'h095a0001,  // ADC11 TI_TIME_SKEW_CTRL5
       30'h0905003f,  // ADC11 FABRIC_IMR
       30'h090f3fff,  // ADC11 DATAPATH_IMR
       30'h090d00ff,  // ADC11 DECODER_IMR
       30'h09060005,  // ADC11 FABRIC_DEBUG
       30'h0a020504,  // ADC12 Data Width
       30'h0a100000,  // ADC12 Decimation Config
       30'h0a110001,  // ADC12 Decimation Mode
       30'h0a200000,  // ADC12 Mixer Config 0
       30'h0a210924,  // ADC12 Mixer Config 1
       30'h0a3a0008,  // ADC12 Switch Matrix Config
       30'h0a7121e1,  // ADC12 RX MC Config 0
       30'h0a780002,  // ADC12 DSA Control
       30'h0a5181c3,  // ADC12 TI_DCB_CTRL0
       30'h0a55d448,  // ADC12 TI_TIME_SKEW_CTRL0
       30'h0a5a0001,  // ADC12 TI_TIME_SKEW_CTRL5
       30'h0a05003f,  // ADC12 FABRIC_IMR
       30'h0a0f3fff,  // ADC12 DATAPATH_IMR
       30'h0a0d00ff,  // ADC12 DECODER_IMR
       30'h0a060005,  // ADC12 FABRIC_DEBUG
       30'h0b020504,  // ADC13 Data Width
       30'h0b100000,  // ADC13 Decimation Config
       30'h0b110001,  // ADC13 Decimation Mode
       30'h0b200000,  // ADC13 Mixer Config 0
       30'h0b210924,  // ADC13 Mixer Config 1
       30'h0b3a000c,  // ADC13 Switch Matrix Config
       30'h0b7121e1,  // ADC13 RX MC Config 0
       30'h0b780002,  // ADC13 DSA Control
       30'h0b5181c3,  // ADC13 TI_DCB_CTRL0
       30'h0b55d448,  // ADC13 TI_TIME_SKEW_CTRL0
       30'h0b5a0001,  // ADC13 TI_TIME_SKEW_CTRL5
       30'h0b05003f,  // ADC13 FABRIC_IMR
       30'h0b0f3fff,  // ADC13 DATAPATH_IMR
       30'h0b0d00ff,  // ADC13 DECODER_IMR
       30'h0b060005,  // ADC13 FABRIC_DEBUG
       30'h17230000,  // Clock Network Control 0 (ADC2)
       30'h17240008,  // Clock Network Control 1(ADC2)
       30'h17228228,  // Clock Distribution Control (ADC2)
       30'h10740080, // RX_PAIR_MC_CONFIG0 (ADC20)
       30'h11740080, // RX_PAIR_MC_CONFIG0 (ADC21)
       30'h12740080, // RX_PAIR_MC_CONFIG0 (ADC22)
       30'h13740080, // RX_PAIR_MC_CONFIG0 (ADC23)
       30'h170c0000,  // PLL Output Divide (ADC2)
       30'h172c0025,  // CLK_DIV (ADC2)
       30'h17288880,  // SYSREF Distribution (ADC2)
       30'h172df0fe,  // HSCOM_PWR_MASK (ADC2)
       30'h17310062,  // CLOCK_DETECT_CTRL0 (ADC2)
       30'h17320032,  // CLOCK_DETECT_CTRL1 (ADC2)
       30'h17300000,  // FIFO_START (ADC2)
       30'h10020504,  // ADC20 Data Width
       30'h10100000,  // ADC20 Decimation Config
       30'h10110001,  // ADC20 Decimation Mode
       30'h10200000,  // ADC20 Mixer Config 0
       30'h10210924,  // ADC20 Mixer Config 1
       30'h103a0000,  // ADC20 Switch Matrix Config
       30'h107121e1,  // ADC20 RX MC Config 0
       30'h10780002,  // ADC20 DSA Control
       30'h105181c3,  // ADC20 TI_DCB_CTRL0
       30'h1055d448,  // ADC20 TI_TIME_SKEW_CTRL0
       30'h105a0001,  // ADC20 TI_TIME_SKEW_CTRL5
       30'h1005003f,  // ADC20 FABRIC_IMR
       30'h100f3fff,  // ADC20 DATAPATH_IMR
       30'h100d00ff,  // ADC20 DECODER_IMR
       30'h10060005,  // ADC20 FABRIC_DEBUG
       30'h11020504,  // ADC21 Data Width
       30'h11100000,  // ADC21 Decimation Config
       30'h11110001,  // ADC21 Decimation Mode
       30'h11200000,  // ADC21 Mixer Config 0
       30'h11210924,  // ADC21 Mixer Config 1
       30'h113a0004,  // ADC21 Switch Matrix Config
       30'h117121e1,  // ADC21 RX MC Config 0
       30'h11780002,  // ADC21 DSA Control
       30'h115181c3,  // ADC21 TI_DCB_CTRL0
       30'h1155d448,  // ADC21 TI_TIME_SKEW_CTRL0
       30'h115a0001,  // ADC21 TI_TIME_SKEW_CTRL5
       30'h1105003f,  // ADC21 FABRIC_IMR
       30'h110f3fff,  // ADC21 DATAPATH_IMR
       30'h110d00ff,  // ADC21 DECODER_IMR
       30'h11060005,  // ADC21 FABRIC_DEBUG
       30'h12020504,  // ADC22 Data Width
       30'h12100000,  // ADC22 Decimation Config
       30'h12110001,  // ADC22 Decimation Mode
       30'h12200000,  // ADC22 Mixer Config 0
       30'h12210924,  // ADC22 Mixer Config 1
       30'h123a0008,  // ADC22 Switch Matrix Config
       30'h127121e1,  // ADC22 RX MC Config 0
       30'h12780002,  // ADC22 DSA Control
       30'h125181c3,  // ADC22 TI_DCB_CTRL0
       30'h1255d448,  // ADC22 TI_TIME_SKEW_CTRL0
       30'h125a0001,  // ADC22 TI_TIME_SKEW_CTRL5
       30'h1205003f,  // ADC22 FABRIC_IMR
       30'h120f3fff,  // ADC22 DATAPATH_IMR
       30'h120d00ff,  // ADC22 DECODER_IMR
       30'h12060005,  // ADC22 FABRIC_DEBUG
       30'h13020504,  // ADC23 Data Width
       30'h13100000,  // ADC23 Decimation Config
       30'h13110001,  // ADC23 Decimation Mode
       30'h13200000,  // ADC23 Mixer Config 0
       30'h13210924,  // ADC23 Mixer Config 1
       30'h133a000c,  // ADC23 Switch Matrix Config
       30'h137121e1,  // ADC23 RX MC Config 0
       30'h13780002,  // ADC23 DSA Control
       30'h135181c3,  // ADC23 TI_DCB_CTRL0
       30'h1355d448,  // ADC23 TI_TIME_SKEW_CTRL0
       30'h135a0001,  // ADC23 TI_TIME_SKEW_CTRL5
       30'h1305003f,  // ADC23 FABRIC_IMR
       30'h130f3fff,  // ADC23 DATAPATH_IMR
       30'h130d00ff,  // ADC23 DECODER_IMR
       30'h13060005,  // ADC23 FABRIC_DEBUG
       30'h1f230000,  // Clock Network Control 0 (ADC3)
       30'h1f240008,  // Clock Network Control 1(ADC3)
       30'h1f220060,  // Clock Distribution Control (ADC3)
       30'h18740080, // RX_PAIR_MC_CONFIG0 (ADC30)
       30'h19740080, // RX_PAIR_MC_CONFIG0 (ADC31)
       30'h1a740080, // RX_PAIR_MC_CONFIG0 (ADC32)
       30'h1b740080, // RX_PAIR_MC_CONFIG0 (ADC33)
       30'h1f0c0000,  // PLL Output Divide (ADC3)
       30'h1f2c0025,  // CLK_DIV (ADC3)
       30'h1f280700,  // SYSREF Distribution (ADC3)
       30'h1f2df0fe,  // HSCOM_PWR_MASK (ADC3)
       30'h1f310062,  // CLOCK_DETECT_CTRL0 (ADC3)
       30'h1f320032,  // CLOCK_DETECT_CTRL1 (ADC3)
       30'h1f300000,  // FIFO_START (ADC3)
       30'h18020504,  // ADC30 Data Width
       30'h18100000,  // ADC30 Decimation Config
       30'h18110001,  // ADC30 Decimation Mode
       30'h18200000,  // ADC30 Mixer Config 0
       30'h18210924,  // ADC30 Mixer Config 1
       30'h183a0000,  // ADC30 Switch Matrix Config
       30'h187121e1,  // ADC30 RX MC Config 0
       30'h18780002,  // ADC30 DSA Control
       30'h185181c3,  // ADC30 TI_DCB_CTRL0
       30'h1855d448,  // ADC30 TI_TIME_SKEW_CTRL0
       30'h185a0001,  // ADC30 TI_TIME_SKEW_CTRL5
       30'h1805003f,  // ADC30 FABRIC_IMR
       30'h180f3fff,  // ADC30 DATAPATH_IMR
       30'h180d00ff,  // ADC30 DECODER_IMR
       30'h18060005,  // ADC30 FABRIC_DEBUG
       30'h19020504,  // ADC31 Data Width
       30'h19100000,  // ADC31 Decimation Config
       30'h19110001,  // ADC31 Decimation Mode
       30'h19200000,  // ADC31 Mixer Config 0
       30'h19210924,  // ADC31 Mixer Config 1
       30'h193a0004,  // ADC31 Switch Matrix Config
       30'h197121e1,  // ADC31 RX MC Config 0
       30'h19780002,  // ADC31 DSA Control
       30'h195181c3,  // ADC31 TI_DCB_CTRL0
       30'h1955d448,  // ADC31 TI_TIME_SKEW_CTRL0
       30'h195a0001,  // ADC31 TI_TIME_SKEW_CTRL5
       30'h1905003f,  // ADC31 FABRIC_IMR
       30'h190f3fff,  // ADC31 DATAPATH_IMR
       30'h190d00ff,  // ADC31 DECODER_IMR
       30'h19060005,  // ADC31 FABRIC_DEBUG
       30'h1a020504,  // ADC32 Data Width
       30'h1a100000,  // ADC32 Decimation Config
       30'h1a110001,  // ADC32 Decimation Mode
       30'h1a200000,  // ADC32 Mixer Config 0
       30'h1a210924,  // ADC32 Mixer Config 1
       30'h1a3a0008,  // ADC32 Switch Matrix Config
       30'h1a7121e1,  // ADC32 RX MC Config 0
       30'h1a780002,  // ADC32 DSA Control
       30'h1a5181c3,  // ADC32 TI_DCB_CTRL0
       30'h1a55d448,  // ADC32 TI_TIME_SKEW_CTRL0
       30'h1a5a0001,  // ADC32 TI_TIME_SKEW_CTRL5
       30'h1a05003f,  // ADC32 FABRIC_IMR
       30'h1a0f3fff,  // ADC32 DATAPATH_IMR
       30'h1a0d00ff,  // ADC32 DECODER_IMR
       30'h1a060005,  // ADC32 FABRIC_DEBUG
       30'h1b020504,  // ADC33 Data Width
       30'h1b100000,  // ADC33 Decimation Config
       30'h1b110001,  // ADC33 Decimation Mode
       30'h1b200000,  // ADC33 Mixer Config 0
       30'h1b210924,  // ADC33 Mixer Config 1
       30'h1b3a000c,  // ADC33 Switch Matrix Config
       30'h1b7121e1,  // ADC33 RX MC Config 0
       30'h1b780002,  // ADC33 DSA Control
       30'h1b5181c3,  // ADC33 TI_DCB_CTRL0
       30'h1b55d448,  // ADC33 TI_TIME_SKEW_CTRL0
       30'h1b5a0001,  // ADC33 TI_TIME_SKEW_CTRL5
       30'h1b05003f,  // ADC33 FABRIC_IMR
       30'h1b0f3fff,  // ADC33 DATAPATH_IMR
       30'h1b0d00ff,  // ADC33 DECODER_IMR
       30'h1b060005,  // ADC33 FABRIC_DEBUG
       30'h27230000,  // Clock Network Control 0 (DAC0)
       30'h27240008,  // Clock Network Control 1 (DAC0)
       30'h27224028,  // Clock Distribution Control (DAC0)
       30'h270c0840,  // PLL Output Divide (DAC0)
       30'h272c0015,  // CLK_DIV (DAC0)
       30'h2728ca80,  // SYSREF Distribution (DAC0)
       30'h272df07e,  // HSCOM_PWR_MASK (DAC0)
       30'h273103e6,  // CLOCK_DETECT_CTRL0 (DAC0)
       30'h273204e1,  // CLOCK_DETECT_CTRL1 (DAC0)
       30'h20020810,  // DAC00 Data Width
       30'h20100001,  // DAC00 Interpolation Control
       30'h20110000,  // DAC00 Interpolation Data
       30'h20200000,  // DAC00 Mixer Config 0
       30'h20210924,  // DAC00 Mixer Config 1
       30'h20300000,  // DAC00 Inv Sinc Filter
       30'h20310040,  // DAC00 Multiband Config
       30'h20600009,  // DAC00 Decoder Control
       30'h20610001,  // DAC00 Decoder Clock Enable
       30'h2071a000,  // DAC00 MC_CONFIG0
       30'h2073aa53,  // DAC00 MC_CONFIG2
       30'h20746a45,  // DAC00 MC_CONFIG3
       30'h20660001,  // DAC00 VOP_CTRL
       30'h200d0000,  // DAC00 DATAPATH
       30'h20040000,  // DAC00 FIFO_START
       30'h2006003f,  // DAC00 FABRIC_IMR
       30'h200fffff,  // DAC00 DATAPATH_IMR
       30'h20070008,  // DAC00 FABRIC_DEBUG
       30'h21020810,  // DAC01 Data Width
       30'h21100001,  // DAC01 Interpolation Control
       30'h21110000,  // DAC01 Interpolation Data
       30'h21200000,  // DAC01 Mixer Config 0
       30'h21210924,  // DAC01 Mixer Config 1
       30'h21300000,  // DAC01 Inv Sinc Filter
       30'h21310040,  // DAC01 Multiband Config
       30'h21600009,  // DAC01 Decoder Control
       30'h21610001,  // DAC01 Decoder Clock Enable
       30'h2171a000,  // DAC01 MC_CONFIG0
       30'h2173aa53,  // DAC01 MC_CONFIG2
       30'h21746a45,  // DAC01 MC_CONFIG3
       30'h21660001,  // DAC01 VOP_CTRL
       30'h210d0000,  // DAC01 DATAPATH
       30'h21040000,  // DAC01 FIFO_START
       30'h2106003f,  // DAC01 FABRIC_IMR
       30'h210fffff,  // DAC01 DATAPATH_IMR
       30'h21070008,  // DAC01 FABRIC_DEBUG
       30'h22020810,  // DAC02 Data Width
       30'h22100001,  // DAC02 Interpolation Control
       30'h22110000,  // DAC02 Interpolation Data
       30'h22200000,  // DAC02 Mixer Config 0
       30'h22210924,  // DAC02 Mixer Config 1
       30'h22300000,  // DAC02 Inv Sinc Filter
       30'h22310040,  // DAC02 Multiband Config
       30'h22600009,  // DAC02 Decoder Control
       30'h22610001,  // DAC02 Decoder Clock Enable
       30'h2271a000,  // DAC02 MC_CONFIG0
       30'h2273aa53,  // DAC02 MC_CONFIG2
       30'h22746a45,  // DAC02 MC_CONFIG3
       30'h22660001,  // DAC02 VOP_CTRL
       30'h220d0000,  // DAC02 DATAPATH
       30'h22040000,  // DAC02 FIFO_START
       30'h2206003f,  // DAC02 FABRIC_IMR
       30'h220fffff,  // DAC02 DATAPATH_IMR
       30'h22070008,  // DAC02 FABRIC_DEBUG
       30'h23020810,  // DAC03 Data Width
       30'h23100001,  // DAC03 Interpolation Control
       30'h23110000,  // DAC03 Interpolation Data
       30'h23200000,  // DAC03 Mixer Config 0
       30'h23210924,  // DAC03 Mixer Config 1
       30'h23300000,  // DAC03 Inv Sinc Filter
       30'h23310040,  // DAC03 Multiband Config
       30'h23600009,  // DAC03 Decoder Control
       30'h23610001,  // DAC03 Decoder Clock Enable
       30'h2371a000,  // DAC03 MC_CONFIG0
       30'h2373aa53,  // DAC03 MC_CONFIG2
       30'h23746a45,  // DAC03 MC_CONFIG3
       30'h23660001,  // DAC03 VOP_CTRL
       30'h230d0000,  // DAC03 DATAPATH
       30'h23040000,  // DAC03 FIFO_START
       30'h2306003f,  // DAC03 FABRIC_IMR
       30'h230fffff,  // DAC03 DATAPATH_IMR
       30'h23070008,  // DAC03 FABRIC_DEBUG
       30'h2f230000,  // Clock Network Control 0 (DAC1)
       30'h2f240028,  // Clock Network Control 1 (DAC1)
       30'h2f228ca0,  // Clock Distribution Control (DAC1)
       30'h2f17003e,  // PLL FB Div (DAC1)
       30'h2f0c0040,  // PLL Output Divide (DAC1)
       30'h2f100010,  // PLL Ref clock divide (DAC1)
       30'h2f000080,  // PLL SDM CONFIG0 (DAC1)
       30'h2f060111,  // PLL SDM seed (DAC1)
       30'h2f070011,  // PLL SDM seed setup (DAC1)
       30'h2f0e0d07,  // PLL ChargePump setup (DAC1)
       30'h2f0f2080,  // PLL temprature sensor control (DAC1)
       30'h2f123fff,  // PLL ChargePump setup (DAC1)
       30'h2f137f84,  // PLL loop filter setup (DAC1)
       30'h2f140006,  // PLL loop filter setup (DAC1)
       30'h2f155f03,  // PLL VCO setup (DAC1)
       30'h2f160008,  // PLL VCO setup (DAC1)
       30'h2f0a7a20,  // PLL Coarse Frequency setup (DAC1)
       30'h2f0b7008,  // PLL Coarse Frequency setup (DAC1)
       30'h2f11002d,  // PLL Voltage Regulator setup (DAC1)
       30'h2f2c0015,  // CLK_DIV (DAC1)
       30'h2f282400,  // SYSREF Distribution (DAC1)
       30'h2f2dfffc,  // HSCOM_PWR_MASK (DAC1)
       30'h2f3103e6,  // CLOCK_DETECT_CTRL0 (DAC1)
       30'h2f3204e1,  // CLOCK_DETECT_CTRL1 (DAC1)
       30'h28020810,  // DAC10 Data Width
       30'h28100001,  // DAC10 Interpolation Control
       30'h28110000,  // DAC10 Interpolation Data
       30'h28200000,  // DAC10 Mixer Config 0
       30'h28210924,  // DAC10 Mixer Config 1
       30'h28300000,  // DAC10 Inv Sinc Filter
       30'h28310040,  // DAC10 Multiband Config
       30'h28600009,  // DAC10 Decoder Control
       30'h28610001,  // DAC10 Decoder Clock Enable
       30'h2871a000,  // DAC10 MC_CONFIG0
       30'h2873aa53,  // DAC10 MC_CONFIG2
       30'h28746a45,  // DAC10 MC_CONFIG3
       30'h28660001,  // DAC10 VOP_CTRL
       30'h280d0000,  // DAC10 DATAPATH
       30'h28040000,  // DAC10 FIFO_START
       30'h2806003f,  // DAC10 FABRIC_IMR
       30'h280fffff,  // DAC10 DATAPATH_IMR
       30'h28070008,  // DAC10 FABRIC_DEBUG
       30'h29020810,  // DAC11 Data Width
       30'h29100001,  // DAC11 Interpolation Control
       30'h29110000,  // DAC11 Interpolation Data
       30'h29200000,  // DAC11 Mixer Config 0
       30'h29210924,  // DAC11 Mixer Config 1
       30'h29300000,  // DAC11 Inv Sinc Filter
       30'h29310040,  // DAC11 Multiband Config
       30'h29600009,  // DAC11 Decoder Control
       30'h29610001,  // DAC11 Decoder Clock Enable
       30'h2971a000,  // DAC11 MC_CONFIG0
       30'h2973aa53,  // DAC11 MC_CONFIG2
       30'h29746a45,  // DAC11 MC_CONFIG3
       30'h29660001,  // DAC11 VOP_CTRL
       30'h290d0000,  // DAC11 DATAPATH
       30'h29040000,  // DAC11 FIFO_START
       30'h2906003f,  // DAC11 FABRIC_IMR
       30'h290fffff,  // DAC11 DATAPATH_IMR
       30'h29070008,  // DAC11 FABRIC_DEBUG
       30'h2a020810,  // DAC12 Data Width
       30'h2a100001,  // DAC12 Interpolation Control
       30'h2a110000,  // DAC12 Interpolation Data
       30'h2a200000,  // DAC12 Mixer Config 0
       30'h2a210924,  // DAC12 Mixer Config 1
       30'h2a300000,  // DAC12 Inv Sinc Filter
       30'h2a310040,  // DAC12 Multiband Config
       30'h2a600009,  // DAC12 Decoder Control
       30'h2a610001,  // DAC12 Decoder Clock Enable
       30'h2a71a000,  // DAC12 MC_CONFIG0
       30'h2a73aa53,  // DAC12 MC_CONFIG2
       30'h2a746a45,  // DAC12 MC_CONFIG3
       30'h2a660001,  // DAC12 VOP_CTRL
       30'h2a0d0000,  // DAC12 DATAPATH
       30'h2a040000,  // DAC12 FIFO_START
       30'h2a06003f,  // DAC12 FABRIC_IMR
       30'h2a0fffff,  // DAC12 DATAPATH_IMR
       30'h2a070008,  // DAC12 FABRIC_DEBUG
       30'h2b020810,  // DAC13 Data Width
       30'h2b100001,  // DAC13 Interpolation Control
       30'h2b110000,  // DAC13 Interpolation Data
       30'h2b200000,  // DAC13 Mixer Config 0
       30'h2b210924,  // DAC13 Mixer Config 1
       30'h2b300000,  // DAC13 Inv Sinc Filter
       30'h2b310040,  // DAC13 Multiband Config
       30'h2b600009,  // DAC13 Decoder Control
       30'h2b610001,  // DAC13 Decoder Clock Enable
       30'h2b71a000,  // DAC13 MC_CONFIG0
       30'h2b73aa53,  // DAC13 MC_CONFIG2
       30'h2b746a45,  // DAC13 MC_CONFIG3
       30'h2b660001,  // DAC13 VOP_CTRL
       30'h2b0d0000,  // DAC13 DATAPATH
       30'h2b040000,  // DAC13 FIFO_START
       30'h2b06003f,  // DAC13 FABRIC_IMR
       30'h2b0fffff,  // DAC13 DATAPATH_IMR
       30'h2b070008,  // DAC13 FABRIC_DEBUG
       30'h37230000,  // Clock Network Control 0 (DAC2)
       30'h37240008,  // Clock Network Control 1 (DAC2)
       30'h37228228,  // Clock Distribution Control (DAC2)
       30'h370c0840,  // PLL Output Divide (DAC2)
       30'h372c0015,  // CLK_DIV (DAC2)
       30'h37280980,  // SYSREF Distribution (DAC2)
       30'h372df07e,  // HSCOM_PWR_MASK (DAC2)
       30'h373103e6,  // CLOCK_DETECT_CTRL0 (DAC2)
       30'h373204e1,  // CLOCK_DETECT_CTRL1 (DAC2)
       30'h30020810,  // DAC20 Data Width
       30'h30100001,  // DAC20 Interpolation Control
       30'h30110000,  // DAC20 Interpolation Data
       30'h30200000,  // DAC20 Mixer Config 0
       30'h30210924,  // DAC20 Mixer Config 1
       30'h30300000,  // DAC20 Inv Sinc Filter
       30'h30310040,  // DAC20 Multiband Config
       30'h30600009,  // DAC20 Decoder Control
       30'h30610001,  // DAC20 Decoder Clock Enable
       30'h3071a000,  // DAC20 MC_CONFIG0
       30'h3073aa53,  // DAC20 MC_CONFIG2
       30'h30746a45,  // DAC20 MC_CONFIG3
       30'h30660001,  // DAC20 VOP_CTRL
       30'h300d0000,  // DAC20 DATAPATH
       30'h30040000,  // DAC20 FIFO_START
       30'h3006003f,  // DAC20 FABRIC_IMR
       30'h300fffff,  // DAC20 DATAPATH_IMR
       30'h30070008,  // DAC20 FABRIC_DEBUG
       30'h31020810,  // DAC21 Data Width
       30'h31100001,  // DAC21 Interpolation Control
       30'h31110000,  // DAC21 Interpolation Data
       30'h31200000,  // DAC21 Mixer Config 0
       30'h31210924,  // DAC21 Mixer Config 1
       30'h31300000,  // DAC21 Inv Sinc Filter
       30'h31310040,  // DAC21 Multiband Config
       30'h31600009,  // DAC21 Decoder Control
       30'h31610001,  // DAC21 Decoder Clock Enable
       30'h3171a000,  // DAC21 MC_CONFIG0
       30'h3173aa53,  // DAC21 MC_CONFIG2
       30'h31746a45,  // DAC21 MC_CONFIG3
       30'h31660001,  // DAC21 VOP_CTRL
       30'h310d0000,  // DAC21 DATAPATH
       30'h31040000,  // DAC21 FIFO_START
       30'h3106003f,  // DAC21 FABRIC_IMR
       30'h310fffff,  // DAC21 DATAPATH_IMR
       30'h31070008,  // DAC21 FABRIC_DEBUG
       30'h32020810,  // DAC22 Data Width
       30'h32100001,  // DAC22 Interpolation Control
       30'h32110000,  // DAC22 Interpolation Data
       30'h32200000,  // DAC22 Mixer Config 0
       30'h32210924,  // DAC22 Mixer Config 1
       30'h32300000,  // DAC22 Inv Sinc Filter
       30'h32310040,  // DAC22 Multiband Config
       30'h32600009,  // DAC22 Decoder Control
       30'h32610001,  // DAC22 Decoder Clock Enable
       30'h3271a000,  // DAC22 MC_CONFIG0
       30'h3273aa53,  // DAC22 MC_CONFIG2
       30'h32746a45,  // DAC22 MC_CONFIG3
       30'h32660001,  // DAC22 VOP_CTRL
       30'h320d0000,  // DAC22 DATAPATH
       30'h32040000,  // DAC22 FIFO_START
       30'h3206003f,  // DAC22 FABRIC_IMR
       30'h320fffff,  // DAC22 DATAPATH_IMR
       30'h32070008,  // DAC22 FABRIC_DEBUG
       30'h33020810,  // DAC23 Data Width
       30'h33100001,  // DAC23 Interpolation Control
       30'h33110000,  // DAC23 Interpolation Data
       30'h33200000,  // DAC23 Mixer Config 0
       30'h33210924,  // DAC23 Mixer Config 1
       30'h33300000,  // DAC23 Inv Sinc Filter
       30'h33310040,  // DAC23 Multiband Config
       30'h33600009,  // DAC23 Decoder Control
       30'h33610001,  // DAC23 Decoder Clock Enable
       30'h3371a000,  // DAC23 MC_CONFIG0
       30'h3373aa53,  // DAC23 MC_CONFIG2
       30'h33746a45,  // DAC23 MC_CONFIG3
       30'h33660001,  // DAC23 VOP_CTRL
       30'h330d0000,  // DAC23 DATAPATH
       30'h33040000,  // DAC23 FIFO_START
       30'h3306003f,  // DAC23 FABRIC_IMR
       30'h330fffff,  // DAC23 DATAPATH_IMR
       30'h33070008,  // DAC23 FABRIC_DEBUG
       30'h3f230000,  // Clock Network Control 0 (DAC3)
       30'h3f240008,  // Clock Network Control 1 (DAC3)
       30'h3f220020,  // Clock Distribution Control (DAC3)
       30'h3f0c0840,  // PLL Output Divide (DAC3)
       30'h3f2c0015,  // CLK_DIV (DAC3)
       30'h3f280100,  // SYSREF Distribution (DAC3)
       30'h3f2df07e,  // HSCOM_PWR_MASK (DAC3)
       30'h3f3103e6,  // CLOCK_DETECT_CTRL0 (DAC3)
       30'h3f3204e1,  // CLOCK_DETECT_CTRL1 (DAC3)
       30'h38020810,  // DAC30 Data Width
       30'h38100001,  // DAC30 Interpolation Control
       30'h38110000,  // DAC30 Interpolation Data
       30'h38200000,  // DAC30 Mixer Config 0
       30'h38210924,  // DAC30 Mixer Config 1
       30'h38300000,  // DAC30 Inv Sinc Filter
       30'h38310040,  // DAC30 Multiband Config
       30'h38600009,  // DAC30 Decoder Control
       30'h38610001,  // DAC30 Decoder Clock Enable
       30'h3871a000,  // DAC30 MC_CONFIG0
       30'h3873aa53,  // DAC30 MC_CONFIG2
       30'h38746a45,  // DAC30 MC_CONFIG3
       30'h38660001,  // DAC30 VOP_CTRL
       30'h380d0000,  // DAC30 DATAPATH
       30'h38040000,  // DAC30 FIFO_START
       30'h3806003f,  // DAC30 FABRIC_IMR
       30'h380fffff,  // DAC30 DATAPATH_IMR
       30'h38070008,  // DAC30 FABRIC_DEBUG
       30'h39020810,  // DAC31 Data Width
       30'h39100001,  // DAC31 Interpolation Control
       30'h39110000,  // DAC31 Interpolation Data
       30'h39200000,  // DAC31 Mixer Config 0
       30'h39210924,  // DAC31 Mixer Config 1
       30'h39300000,  // DAC31 Inv Sinc Filter
       30'h39310040,  // DAC31 Multiband Config
       30'h39600009,  // DAC31 Decoder Control
       30'h39610001,  // DAC31 Decoder Clock Enable
       30'h3971a000,  // DAC31 MC_CONFIG0
       30'h3973aa53,  // DAC31 MC_CONFIG2
       30'h39746a45,  // DAC31 MC_CONFIG3
       30'h39660001,  // DAC31 VOP_CTRL
       30'h390d0000,  // DAC31 DATAPATH
       30'h39040000,  // DAC31 FIFO_START
       30'h3906003f,  // DAC31 FABRIC_IMR
       30'h390fffff,  // DAC31 DATAPATH_IMR
       30'h39070008,  // DAC31 FABRIC_DEBUG
       30'h3a020810,  // DAC32 Data Width
       30'h3a100001,  // DAC32 Interpolation Control
       30'h3a110000,  // DAC32 Interpolation Data
       30'h3a200000,  // DAC32 Mixer Config 0
       30'h3a210924,  // DAC32 Mixer Config 1
       30'h3a300000,  // DAC32 Inv Sinc Filter
       30'h3a310040,  // DAC32 Multiband Config
       30'h3a600009,  // DAC32 Decoder Control
       30'h3a610001,  // DAC32 Decoder Clock Enable
       30'h3a71a000,  // DAC32 MC_CONFIG0
       30'h3a73aa53,  // DAC32 MC_CONFIG2
       30'h3a746a45,  // DAC32 MC_CONFIG3
       30'h3a660001,  // DAC32 VOP_CTRL
       30'h3a0d0000,  // DAC32 DATAPATH
       30'h3a040000,  // DAC32 FIFO_START
       30'h3a06003f,  // DAC32 FABRIC_IMR
       30'h3a0fffff,  // DAC32 DATAPATH_IMR
       30'h3a070008,  // DAC32 FABRIC_DEBUG
       30'h3b020810,  // DAC33 Data Width
       30'h3b100001,  // DAC33 Interpolation Control
       30'h3b110000,  // DAC33 Interpolation Data
       30'h3b200000,  // DAC33 Mixer Config 0
       30'h3b210924,  // DAC33 Mixer Config 1
       30'h3b300000,  // DAC33 Inv Sinc Filter
       30'h3b310040,  // DAC33 Multiband Config
       30'h3b600009,  // DAC33 Decoder Control
       30'h3b610001,  // DAC33 Decoder Clock Enable
       30'h3b71a000,  // DAC33 MC_CONFIG0
       30'h3b73aa53,  // DAC33 MC_CONFIG2
       30'h3b746a45,  // DAC33 MC_CONFIG3
       30'h3b660001,  // DAC33 VOP_CTRL
       30'h3b0d0000,  // DAC33 DATAPATH
       30'h3b040000,  // DAC33 FIFO_START
       30'h3b06003f,  // DAC33 FABRIC_IMR
       30'h3b0fffff,  // DAC33 DATAPATH_IMR
       30'h3b070008,  // DAC33 FABRIC_DEBUG
       30'h00000000};

    //-------------------------------------------------------------------------
    // Output the tile number, address and data for the DRP writes
    // depending on the data_index input
    //-------------------------------------------------------------------------
    always @(posedge aux_clk)
    begin
      data <= data_array[data_index];
    end

    assign data_out = data[15:0];
    assign addr_out = data[26:16];
    assign tile_out = data[29:27];

endmodule

//----------------------------------------------------------------------------
// Title : Ultrascale+ RF Data Converter Subsystem Wrapper
// Project : Ultrascale+ RF Data Converter Subsystem
//----------------------------------------------------------------------------
// File : design_1_usp_rf_data_converter_0_0.v
//----------------------------------------------------------------------------
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

`timescale 1ns / 1ps

(* CORE_GENERATION_INFO = "design_1_usp_rf_data_converter_0_0,usp_rf_data_converter_v2_4_0,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=usp_rf_data_converter,x_ipVersion=2.4,x_ipCoreRevision=0,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_AMS_Factory_Var=0,C_COMPONENT_NAME=design_1_usp_rf_data_converter_0_0,C_High_Speed_ADC=0,C_IP_Type=2,C_Axiclk_Freq=100.0,C_Sysref_Source=1,C_Converter_Setup=1,C_ADC_Debug=false,C_DAC_Debug=false,C_DAC_Output_Current=0,C_DAC_VOP_Mode=1,C_DAC_RTS=false,C_ADC_RTS=false,C_Analog_Detection=1,C_Calibration_Freeze=false,C_Auto_Calibration_Freeze=false,C_Calibration_Time=10,C_DAC_NCO_RTS=false,C_DAC_VOP_RTS=false,C_ADC_NCO_RTS=false,C_ADC_DSA_RTS=false,C_RESERVED_2=false,C_ADC0_Enable=1,C_ADC0_PLL_Enable=false,C_ADC0_Sampling_Rate=2.0,C_ADC0_Fs_Max=2.500,C_ADC0_Refclk_Freq=2000.000,C_ADC0_Outclk_Freq=250.000,C_ADC0_FBDIV=10,C_ADC0_OutDiv=1,C_ADC0_Vco=8500.0,C_ADC0_Fabric_Freq=400.000,C_ADC0_Multi_Tile_Sync=true,C_ADC0_Link_Coupling=0,C_ADC0_Band=0,C_ADC0_Refclk_Div=1,C_ADC0_Slices=4,C_ADC0_Decimation=1,C_ADC0_Clock_Source=1,C_ADC0_Clock_Dist=0,C_ADC_Slice00_Enable=true,C_ADC_Dither00=true,C_ADC_Data_Type00=0,C_ADC_Decimation_Mode00=1,C_ADC_CalOpt_Mode00=1,C_ADC_Mixer_Type00=1,C_ADC_Mixer_Mode00=2,C_ADC_Data_Width00=5,C_ADC_Coarse_Mixer_Freq00=3,C_ADC_NCO_Freq00=0.0,C_ADC_NCO_Phase00=0,C_ADC_Neg_Quadrature00=false,C_ADC_Nyquist00=0,C_ADC_Bypass_BG_Cal00=false,C_ADC_RESERVED_1_00=false,C_ADC_TDD_RTS00=0,C_ADC_OBS00=false,C_ADC00_Dig_Port=1,C_ADC_Slice01_Enable=true,C_ADC_Dither01=true,C_ADC_Data_Type01=0,C_ADC_Decimation_Mode01=1,C_ADC_CalOpt_Mode01=1,C_ADC_Mixer_Type01=1,C_ADC_Mixer_Mode01=2,C_ADC_Data_Width01=5,C_ADC_Coarse_Mixer_Freq01=3,C_ADC_NCO_Freq01=0.0,C_ADC_NCO_Phase01=0,C_ADC_Neg_Quadrature01=false,C_ADC_Nyquist01=0,C_ADC_Bypass_BG_Cal01=false,C_ADC_RESERVED_1_01=false,C_ADC_TDD_RTS01=0,C_ADC_OBS01=false,C_ADC01_Dig_Port=1,C_ADC_Slice02_Enable=true,C_ADC_Dither02=true,C_ADC_Data_Type02=0,C_ADC_Decimation_Mode02=1,C_ADC_CalOpt_Mode02=1,C_ADC_Mixer_Type02=1,C_ADC_Mixer_Mode02=2,C_ADC_Data_Width02=5,C_ADC_Coarse_Mixer_Freq02=3,C_ADC_NCO_Freq02=0.0,C_ADC_NCO_Phase02=0,C_ADC_Neg_Quadrature02=false,C_ADC_Nyquist02=0,C_ADC_Bypass_BG_Cal02=false,C_ADC_RESERVED_1_02=false,C_ADC_TDD_RTS02=0,C_ADC_OBS02=false,C_ADC02_Dig_Port=1,C_ADC_Slice03_Enable=true,C_ADC_Dither03=true,C_ADC_Data_Type03=0,C_ADC_Decimation_Mode03=1,C_ADC_CalOpt_Mode03=1,C_ADC_Mixer_Type03=1,C_ADC_Mixer_Mode03=2,C_ADC_Data_Width03=5,C_ADC_Coarse_Mixer_Freq03=3,C_ADC_NCO_Freq03=0.0,C_ADC_NCO_Phase03=0,C_ADC_Neg_Quadrature03=false,C_ADC_Nyquist03=0,C_ADC_Bypass_BG_Cal03=false,C_ADC_RESERVED_1_03=false,C_ADC_TDD_RTS03=0,C_ADC_OBS03=false,C_ADC03_Dig_Port=1,C_ADC1_Enable=1,C_ADC1_PLL_Enable=true,C_ADC1_Sampling_Rate=2.0,C_ADC1_Fs_Max=2.500,C_ADC1_Refclk_Freq=200.000,C_ADC1_Outclk_Freq=31.250,C_ADC1_FBDIV=60,C_ADC1_OutDiv=6,C_ADC1_Vco=12000.0,C_ADC1_Fabric_Freq=400.000,C_ADC1_Multi_Tile_Sync=true,C_ADC1_Link_Coupling=0,C_ADC1_Band=0,C_ADC1_Refclk_Div=1,C_ADC1_Slices=4,C_ADC1_Decimation=1,C_ADC1_Clock_Source=1,C_ADC1_Clock_Dist=2,C_ADC_Slice10_Enable=true,C_ADC_Dither10=true,C_ADC_Data_Type10=0,C_ADC_Decimation_Mode10=1,C_ADC_CalOpt_Mode10=1,C_ADC_Mixer_Type10=1,C_ADC_Mixer_Mode10=2,C_ADC_Data_Width10=5,C_ADC_Coarse_Mixer_Freq10=3,C_ADC_NCO_Freq10=0.0,C_ADC_NCO_Phase10=0,C_ADC_Neg_Quadrature10=false,C_ADC_Nyquist10=0,C_ADC_Bypass_BG_Cal10=false,C_ADC_RESERVED_1_10=false,C_ADC_TDD_RTS10=0,C_ADC_OBS10=false,C_ADC10_Dig_Port=1,C_ADC_Slice11_Enable=true,C_ADC_Dither11=true,C_ADC_Data_Type11=0,C_ADC_Decimation_Mode11=1,C_ADC_CalOpt_Mode11=1,C_ADC_Mixer_Type11=1,C_ADC_Mixer_Mode11=2,C_ADC_Data_Width11=5,C_ADC_Coarse_Mixer_Freq11=3,C_ADC_NCO_Freq11=0.0,C_ADC_NCO_Phase11=0,C_ADC_Neg_Quadrature11=false,C_ADC_Nyquist11=0,C_ADC_Bypass_BG_Cal11=false,C_ADC_RESERVED_1_11=false,C_ADC_TDD_RTS11=0,C_ADC_OBS11=false,C_ADC11_Dig_Port=1,C_ADC_Slice12_Enable=true,C_ADC_Dither12=true,C_ADC_Data_Type12=0,C_ADC_Decimation_Mode12=1,C_ADC_CalOpt_Mode12=1,C_ADC_Mixer_Type12=1,C_ADC_Mixer_Mode12=2,C_ADC_Data_Width12=5,C_ADC_Coarse_Mixer_Freq12=3,C_ADC_NCO_Freq12=0.0,C_ADC_NCO_Phase12=0,C_ADC_Neg_Quadrature12=false,C_ADC_Nyquist12=0,C_ADC_Bypass_BG_Cal12=false,C_ADC_RESERVED_1_12=false,C_ADC_TDD_RTS12=0,C_ADC_OBS12=false,C_ADC12_Dig_Port=1,C_ADC_Slice13_Enable=true,C_ADC_Dither13=true,C_ADC_Data_Type13=0,C_ADC_Decimation_Mode13=1,C_ADC_CalOpt_Mode13=1,C_ADC_Mixer_Type13=1,C_ADC_Mixer_Mode13=2,C_ADC_Data_Width13=5,C_ADC_Coarse_Mixer_Freq13=3,C_ADC_NCO_Freq13=0.0,C_ADC_NCO_Phase13=0,C_ADC_Neg_Quadrature13=false,C_ADC_Nyquist13=0,C_ADC_Bypass_BG_Cal13=false,C_ADC_RESERVED_1_13=false,C_ADC_TDD_RTS13=0,C_ADC_OBS13=false,C_ADC13_Dig_Port=1,C_ADC2_Enable=1,C_ADC2_PLL_Enable=false,C_ADC2_Sampling_Rate=2.0,C_ADC2_Fs_Max=2.500,C_ADC2_Refclk_Freq=2000.000,C_ADC2_Outclk_Freq=31.250,C_ADC2_FBDIV=10,C_ADC2_OutDiv=1,C_ADC2_Vco=8500.0,C_ADC2_Fabric_Freq=400.000,C_ADC2_Multi_Tile_Sync=true,C_ADC2_Link_Coupling=0,C_ADC2_Band=0,C_ADC2_Refclk_Div=1,C_ADC2_Slices=4,C_ADC2_Decimation=1,C_ADC2_Clock_Source=1,C_ADC2_Clock_Dist=0,C_ADC_Slice20_Enable=true,C_ADC_Dither20=true,C_ADC_Data_Type20=0,C_ADC_Decimation_Mode20=1,C_ADC_CalOpt_Mode20=1,C_ADC_Mixer_Type20=1,C_ADC_Mixer_Mode20=2,C_ADC_Data_Width20=5,C_ADC_Coarse_Mixer_Freq20=3,C_ADC_NCO_Freq20=0.0,C_ADC_NCO_Phase20=0,C_ADC_Neg_Quadrature20=false,C_ADC_Nyquist20=0,C_ADC_Bypass_BG_Cal20=false,C_ADC_RESERVED_1_20=false,C_ADC_TDD_RTS20=0,C_ADC_OBS20=false,C_ADC20_Dig_Port=1,C_ADC_Slice21_Enable=true,C_ADC_Dither21=true,C_ADC_Data_Type21=0,C_ADC_Decimation_Mode21=1,C_ADC_CalOpt_Mode21=1,C_ADC_Mixer_Type21=1,C_ADC_Mixer_Mode21=2,C_ADC_Data_Width21=5,C_ADC_Coarse_Mixer_Freq21=3,C_ADC_NCO_Freq21=0.0,C_ADC_NCO_Phase21=0,C_ADC_Neg_Quadrature21=false,C_ADC_Nyquist21=0,C_ADC_Bypass_BG_Cal21=false,C_ADC_RESERVED_1_21=false,C_ADC_TDD_RTS21=0,C_ADC_OBS21=false,C_ADC21_Dig_Port=1,C_ADC_Slice22_Enable=true,C_ADC_Dither22=true,C_ADC_Data_Type22=0,C_ADC_Decimation_Mode22=1,C_ADC_CalOpt_Mode22=1,C_ADC_Mixer_Type22=1,C_ADC_Mixer_Mode22=2,C_ADC_Data_Width22=5,C_ADC_Coarse_Mixer_Freq22=3,C_ADC_NCO_Freq22=0.0,C_ADC_NCO_Phase22=0,C_ADC_Neg_Quadrature22=false,C_ADC_Nyquist22=0,C_ADC_Bypass_BG_Cal22=false,C_ADC_RESERVED_1_22=false,C_ADC_TDD_RTS22=0,C_ADC_OBS22=false,C_ADC22_Dig_Port=1,C_ADC_Slice23_Enable=true,C_ADC_Dither23=true,C_ADC_Data_Type23=0,C_ADC_Decimation_Mode23=1,C_ADC_CalOpt_Mode23=1,C_ADC_Mixer_Type23=1,C_ADC_Mixer_Mode23=2,C_ADC_Data_Width23=5,C_ADC_Coarse_Mixer_Freq23=3,C_ADC_NCO_Freq23=0.0,C_ADC_NCO_Phase23=0,C_ADC_Neg_Quadrature23=false,C_ADC_Nyquist23=0,C_ADC_Bypass_BG_Cal23=false,C_ADC_RESERVED_1_23=false,C_ADC_TDD_RTS23=0,C_ADC_OBS23=false,C_ADC23_Dig_Port=1,C_ADC3_Enable=1,C_ADC3_PLL_Enable=false,C_ADC3_Sampling_Rate=2.0,C_ADC3_Fs_Max=2.500,C_ADC3_Refclk_Freq=2000.000,C_ADC3_Outclk_Freq=31.250,C_ADC3_FBDIV=10,C_ADC3_OutDiv=1,C_ADC3_Vco=8500.0,C_ADC3_Fabric_Freq=400.000,C_ADC3_Multi_Tile_Sync=true,C_ADC3_Link_Coupling=0,C_ADC3_Band=0,C_ADC3_Refclk_Div=1,C_ADC3_Slices=4,C_ADC3_Decimation=1,C_ADC3_Clock_Source=1,C_ADC3_Clock_Dist=0,C_ADC_Slice30_Enable=true,C_ADC_Dither30=true,C_ADC_Data_Type30=0,C_ADC_Decimation_Mode30=1,C_ADC_CalOpt_Mode30=1,C_ADC_Mixer_Type30=1,C_ADC_Mixer_Mode30=2,C_ADC_Data_Width30=5,C_ADC_Coarse_Mixer_Freq30=3,C_ADC_NCO_Freq30=0.0,C_ADC_NCO_Phase30=0,C_ADC_Neg_Quadrature30=false,C_ADC_Nyquist30=0,C_ADC_Bypass_BG_Cal30=false,C_ADC_RESERVED_1_30=false,C_ADC_TDD_RTS30=0,C_ADC_OBS30=false,C_ADC30_Dig_Port=1,C_ADC_Slice31_Enable=true,C_ADC_Dither31=true,C_ADC_Data_Type31=0,C_ADC_Decimation_Mode31=1,C_ADC_CalOpt_Mode31=1,C_ADC_Mixer_Type31=1,C_ADC_Mixer_Mode31=2,C_ADC_Data_Width31=5,C_ADC_Coarse_Mixer_Freq31=3,C_ADC_NCO_Freq31=0.0,C_ADC_NCO_Phase31=0,C_ADC_Neg_Quadrature31=false,C_ADC_Nyquist31=0,C_ADC_Bypass_BG_Cal31=false,C_ADC_RESERVED_1_31=false,C_ADC_TDD_RTS31=0,C_ADC_OBS31=false,C_ADC31_Dig_Port=1,C_ADC_Slice32_Enable=true,C_ADC_Dither32=true,C_ADC_Data_Type32=0,C_ADC_Decimation_Mode32=1,C_ADC_CalOpt_Mode32=1,C_ADC_Mixer_Type32=1,C_ADC_Mixer_Mode32=2,C_ADC_Data_Width32=5,C_ADC_Coarse_Mixer_Freq32=3,C_ADC_NCO_Freq32=0.0,C_ADC_NCO_Phase32=0,C_ADC_Neg_Quadrature32=false,C_ADC_Nyquist32=0,C_ADC_Bypass_BG_Cal32=false,C_ADC_RESERVED_1_32=false,C_ADC_TDD_RTS32=0,C_ADC_OBS32=false,C_ADC32_Dig_Port=1,C_ADC_Slice33_Enable=true,C_ADC_Dither33=true,C_ADC_Data_Type33=0,C_ADC_Decimation_Mode33=1,C_ADC_CalOpt_Mode33=1,C_ADC_Mixer_Type33=1,C_ADC_Mixer_Mode33=2,C_ADC_Data_Width33=5,C_ADC_Coarse_Mixer_Freq33=3,C_ADC_NCO_Freq33=0.0,C_ADC_NCO_Phase33=0,C_ADC_Neg_Quadrature33=false,C_ADC_Nyquist33=0,C_ADC_Bypass_BG_Cal33=false,C_ADC_RESERVED_1_33=false,C_ADC_TDD_RTS33=0,C_ADC_OBS33=false,C_ADC33_Dig_Port=1,C_DAC0_Enable=1,C_DAC0_PLL_Enable=false,C_DAC0_Sampling_Rate=6.4,C_DAC0_Fs_Max=7.000,C_DAC0_Refclk_Freq=6400.000,C_DAC0_Outclk_Freq=50.000,C_DAC0_FBDIV=10,C_DAC0_OutDiv=2,C_DAC0_Vco=8500.0,C_DAC0_Fabric_Freq=400.000,C_DAC0_Multi_Tile_Sync=true,C_DAC0_Band=0,C_DAC0_VOP=20.0,C_DAC0_Refclk_Div=1,C_DAC0_Slices=4,C_DAC0_Interpolation=1,C_DAC0_Clock_Source=5,C_DAC0_Clock_Dist=0,C_DAC_Slice00_Enable=true,C_DAC_Data_Type00=0,C_DAC_Data_Width00=16,C_DAC_Interpolation_Mode00=1,C_DAC_Decoder_Mode00=0,C_DAC_Mixer_Type00=1,C_DAC_Mixer_Mode00=2,C_DAC_Invsinc_Ctrl00=false,C_DAC_Coarse_Mixer_Freq00=3,C_DAC_NCO_Freq00=0.0,C_DAC_NCO_Phase00=0,C_DAC_Neg_Quadrature00=false,C_DAC_Nyquist00=0,C_DAC_Mode00=0,C_DAC_RESERVED_1_00=false,C_DAC_TDD_RTS00=0,C_DAC_Slice01_Enable=true,C_DAC_Data_Type01=0,C_DAC_Data_Width01=16,C_DAC_Interpolation_Mode01=1,C_DAC_Decoder_Mode01=0,C_DAC_Mixer_Type01=1,C_DAC_Mixer_Mode01=2,C_DAC_Invsinc_Ctrl01=false,C_DAC_Coarse_Mixer_Freq01=3,C_DAC_NCO_Freq01=0.0,C_DAC_NCO_Phase01=0,C_DAC_Neg_Quadrature01=false,C_DAC_Nyquist01=0,C_DAC_Mode01=0,C_DAC_RESERVED_1_01=false,C_DAC_TDD_RTS01=0,C_DAC_Slice02_Enable=true,C_DAC_Data_Type02=0,C_DAC_Data_Width02=16,C_DAC_Interpolation_Mode02=1,C_DAC_Decoder_Mode02=0,C_DAC_Mixer_Type02=1,C_DAC_Mixer_Mode02=2,C_DAC_Invsinc_Ctrl02=false,C_DAC_Coarse_Mixer_Freq02=3,C_DAC_NCO_Freq02=0.0,C_DAC_NCO_Phase02=0,C_DAC_Neg_Quadrature02=false,C_DAC_Nyquist02=0,C_DAC_Mode02=0,C_DAC_RESERVED_1_02=false,C_DAC_TDD_RTS02=0,C_DAC_Slice03_Enable=true,C_DAC_Data_Type03=0,C_DAC_Data_Width03=16,C_DAC_Interpolation_Mode03=1,C_DAC_Decoder_Mode03=0,C_DAC_Mixer_Type03=1,C_DAC_Mixer_Mode03=2,C_DAC_Invsinc_Ctrl03=false,C_DAC_Coarse_Mixer_Freq03=3,C_DAC_NCO_Freq03=0.0,C_DAC_NCO_Phase03=0,C_DAC_Neg_Quadrature03=false,C_DAC_Nyquist03=0,C_DAC_Mode03=0,C_DAC_RESERVED_1_03=false,C_DAC_TDD_RTS03=0,C_DAC1_Enable=1,C_DAC1_PLL_Enable=true,C_DAC1_Sampling_Rate=6.4,C_DAC1_Fs_Max=7.000,C_DAC1_Refclk_Freq=200.000,C_DAC1_Outclk_Freq=50.000,C_DAC1_FBDIV=64,C_DAC1_OutDiv=2,C_DAC1_Vco=12800.0,C_DAC1_Fabric_Freq=400.000,C_DAC1_Multi_Tile_Sync=true,C_DAC1_Band=0,C_DAC1_VOP=20.0,C_DAC1_Refclk_Div=1,C_DAC1_Slices=4,C_DAC1_Interpolation=1,C_DAC1_Clock_Source=5,C_DAC1_Clock_Dist=2,C_DAC_Slice10_Enable=true,C_DAC_Data_Type10=0,C_DAC_Data_Width10=16,C_DAC_Interpolation_Mode10=1,C_DAC_Decoder_Mode10=0,C_DAC_Mixer_Type10=1,C_DAC_Mixer_Mode10=2,C_DAC_Invsinc_Ctrl10=false,C_DAC_Coarse_Mixer_Freq10=3,C_DAC_NCO_Freq10=0.0,C_DAC_NCO_Phase10=0,C_DAC_Neg_Quadrature10=false,C_DAC_Nyquist10=0,C_DAC_Mode10=0,C_DAC_RESERVED_1_10=false,C_DAC_TDD_RTS10=0,C_DAC_Slice11_Enable=true,C_DAC_Data_Type11=0,C_DAC_Data_Width11=16,C_DAC_Interpolation_Mode11=1,C_DAC_Decoder_Mode11=0,C_DAC_Mixer_Type11=1,C_DAC_Mixer_Mode11=2,C_DAC_Invsinc_Ctrl11=false,C_DAC_Coarse_Mixer_Freq11=3,C_DAC_NCO_Freq11=0.0,C_DAC_NCO_Phase11=0,C_DAC_Neg_Quadrature11=false,C_DAC_Nyquist11=0,C_DAC_Mode11=0,C_DAC_RESERVED_1_11=false,C_DAC_TDD_RTS11=0,C_DAC_Slice12_Enable=true,C_DAC_Data_Type12=0,C_DAC_Data_Width12=16,C_DAC_Interpolation_Mode12=1,C_DAC_Decoder_Mode12=0,C_DAC_Mixer_Type12=1,C_DAC_Mixer_Mode12=2,C_DAC_Invsinc_Ctrl12=false,C_DAC_Coarse_Mixer_Freq12=3,C_DAC_NCO_Freq12=0.0,C_DAC_NCO_Phase12=0,C_DAC_Neg_Quadrature12=false,C_DAC_Nyquist12=0,C_DAC_Mode12=0,C_DAC_RESERVED_1_12=false,C_DAC_TDD_RTS12=0,C_DAC_Slice13_Enable=true,C_DAC_Data_Type13=0,C_DAC_Data_Width13=16,C_DAC_Interpolation_Mode13=1,C_DAC_Decoder_Mode13=0,C_DAC_Mixer_Type13=1,C_DAC_Mixer_Mode13=2,C_DAC_Invsinc_Ctrl13=false,C_DAC_Coarse_Mixer_Freq13=3,C_DAC_NCO_Freq13=0.0,C_DAC_NCO_Phase13=0,C_DAC_Neg_Quadrature13=false,C_DAC_Nyquist13=0,C_DAC_Mode13=0,C_DAC_RESERVED_1_13=false,C_DAC_TDD_RTS13=0,C_DAC2_Enable=1,C_DAC2_PLL_Enable=false,C_DAC2_Sampling_Rate=6.4,C_DAC2_Fs_Max=7.000,C_DAC2_Refclk_Freq=6400.000,C_DAC2_Outclk_Freq=50.000,C_DAC2_FBDIV=10,C_DAC2_OutDiv=2,C_DAC2_Vco=8500.0,C_DAC2_Fabric_Freq=400.000,C_DAC2_Multi_Tile_Sync=true,C_DAC2_Band=0,C_DAC2_VOP=20.0,C_DAC2_Refclk_Div=1,C_DAC2_Slices=4,C_DAC2_Interpolation=1,C_DAC2_Clock_Source=5,C_DAC2_Clock_Dist=0,C_DAC_Slice20_Enable=true,C_DAC_Data_Type20=0,C_DAC_Data_Width20=16,C_DAC_Interpolation_Mode20=1,C_DAC_Decoder_Mode20=0,C_DAC_Mixer_Type20=1,C_DAC_Mixer_Mode20=2,C_DAC_Invsinc_Ctrl20=false,C_DAC_Coarse_Mixer_Freq20=3,C_DAC_NCO_Freq20=0.0,C_DAC_NCO_Phase20=0,C_DAC_Neg_Quadrature20=false,C_DAC_Nyquist20=0,C_DAC_Mode20=0,C_DAC_RESERVED_1_20=false,C_DAC_TDD_RTS20=0,C_DAC_Slice21_Enable=true,C_DAC_Data_Type21=0,C_DAC_Data_Width21=16,C_DAC_Interpolation_Mode21=1,C_DAC_Decoder_Mode21=0,C_DAC_Mixer_Type21=1,C_DAC_Mixer_Mode21=2,C_DAC_Invsinc_Ctrl21=false,C_DAC_Coarse_Mixer_Freq21=3,C_DAC_NCO_Freq21=0.0,C_DAC_NCO_Phase21=0,C_DAC_Neg_Quadrature21=false,C_DAC_Nyquist21=0,C_DAC_Mode21=0,C_DAC_RESERVED_1_21=false,C_DAC_TDD_RTS21=0,C_DAC_Slice22_Enable=true,C_DAC_Data_Type22=0,C_DAC_Data_Width22=16,C_DAC_Interpolation_Mode22=1,C_DAC_Decoder_Mode22=0,C_DAC_Mixer_Type22=1,C_DAC_Mixer_Mode22=2,C_DAC_Invsinc_Ctrl22=false,C_DAC_Coarse_Mixer_Freq22=3,C_DAC_NCO_Freq22=0.0,C_DAC_NCO_Phase22=0,C_DAC_Neg_Quadrature22=false,C_DAC_Nyquist22=0,C_DAC_Mode22=0,C_DAC_RESERVED_1_22=false,C_DAC_TDD_RTS22=0,C_DAC_Slice23_Enable=true,C_DAC_Data_Type23=0,C_DAC_Data_Width23=16,C_DAC_Interpolation_Mode23=1,C_DAC_Decoder_Mode23=0,C_DAC_Mixer_Type23=1,C_DAC_Mixer_Mode23=2,C_DAC_Invsinc_Ctrl23=false,C_DAC_Coarse_Mixer_Freq23=3,C_DAC_NCO_Freq23=0.0,C_DAC_NCO_Phase23=0,C_DAC_Neg_Quadrature23=false,C_DAC_Nyquist23=0,C_DAC_Mode23=0,C_DAC_RESERVED_1_23=false,C_DAC_TDD_RTS23=0,C_DAC3_Enable=1,C_DAC3_PLL_Enable=false,C_DAC3_Sampling_Rate=6.4,C_DAC3_Fs_Max=7.000,C_DAC3_Refclk_Freq=6400.000,C_DAC3_Outclk_Freq=50.000,C_DAC3_FBDIV=10,C_DAC3_OutDiv=2,C_DAC3_Vco=8500.0,C_DAC3_Fabric_Freq=400.000,C_DAC3_Multi_Tile_Sync=true,C_DAC3_Band=0,C_DAC3_VOP=20.0,C_DAC3_Refclk_Div=1,C_DAC3_Slices=4,C_DAC3_Interpolation=1,C_DAC3_Clock_Source=5,C_DAC3_Clock_Dist=0,C_DAC_Slice30_Enable=true,C_DAC_Data_Type30=0,C_DAC_Data_Width30=16,C_DAC_Interpolation_Mode30=1,C_DAC_Decoder_Mode30=0,C_DAC_Mixer_Type30=1,C_DAC_Mixer_Mode30=2,C_DAC_Invsinc_Ctrl30=false,C_DAC_Coarse_Mixer_Freq30=3,C_DAC_NCO_Freq30=0.0,C_DAC_NCO_Phase30=0,C_DAC_Neg_Quadrature30=false,C_DAC_Nyquist30=0,C_DAC_Mode30=0,C_DAC_RESERVED_1_30=false,C_DAC_TDD_RTS30=0,C_DAC_Slice31_Enable=true,C_DAC_Data_Type31=0,C_DAC_Data_Width31=16,C_DAC_Interpolation_Mode31=1,C_DAC_Decoder_Mode31=0,C_DAC_Mixer_Type31=1,C_DAC_Mixer_Mode31=2,C_DAC_Invsinc_Ctrl31=false,C_DAC_Coarse_Mixer_Freq31=3,C_DAC_NCO_Freq31=0.0,C_DAC_NCO_Phase31=0,C_DAC_Neg_Quadrature31=false,C_DAC_Nyquist31=0,C_DAC_Mode31=0,C_DAC_RESERVED_1_31=false,C_DAC_TDD_RTS31=0,C_DAC_Slice32_Enable=true,C_DAC_Data_Type32=0,C_DAC_Data_Width32=16,C_DAC_Interpolation_Mode32=1,C_DAC_Decoder_Mode32=0,C_DAC_Mixer_Type32=1,C_DAC_Mixer_Mode32=2,C_DAC_Invsinc_Ctrl32=false,C_DAC_Coarse_Mixer_Freq32=3,C_DAC_NCO_Freq32=0.0,C_DAC_NCO_Phase32=0,C_DAC_Neg_Quadrature32=false,C_DAC_Nyquist32=0,C_DAC_Mode32=0,C_DAC_RESERVED_1_32=false,C_DAC_TDD_RTS32=0,C_DAC_Slice33_Enable=true,C_DAC_Data_Type33=0,C_DAC_Data_Width33=16,C_DAC_Interpolation_Mode33=1,C_DAC_Decoder_Mode33=0,C_DAC_Mixer_Type33=1,C_DAC_Mixer_Mode33=2,C_DAC_Invsinc_Ctrl33=false,C_DAC_Coarse_Mixer_Freq33=3,C_DAC_NCO_Freq33=0.0,C_DAC_NCO_Phase33=0,C_DAC_Neg_Quadrature33=false,C_DAC_Nyquist33=0,C_DAC_Mode33=0,C_DAC_RESERVED_1_33=false,C_DAC_TDD_RTS33=0,C_Clock_Forwarding=false,production_simulation=0,disable_bg_cal_en=1,C_VNC_Testing=false,C_RESERVED_3=110000,C_VNC_Include_OIS_Change=true,C_VNC_Include_Fs2_Change=true,C_RF_Analyzer=0,C_PL_Clock_Freq=100.0,tb_dac_fft=true,tb_adc_fft=true,use_bram=1,C_Silicon_Revision=1}" *)
(* X_CORE_INFO = "usp_rf_data_converter_v2_4_0,Vivado 2020.2" *)
//***********************************Entity Declaration************************
(* DowngradeIPIdentifiedWarnings="yes" *)
module design_1_usp_rf_data_converter_0_0 (
  // AXI-Lite Control/Status
  input             s_axi_aclk,
  input             s_axi_aresetn,
  input   [17:0]    s_axi_awaddr,
  input             s_axi_awvalid,
  output            s_axi_awready,
  input   [31:0]    s_axi_wdata,
  input    [3:0]    s_axi_wstrb,
  input             s_axi_wvalid,
  output            s_axi_wready,
  output   [1:0]    s_axi_bresp,
  output            s_axi_bvalid,
  input             s_axi_bready,
  input   [17:0]    s_axi_araddr,
  input             s_axi_arvalid,
  output            s_axi_arready,
  output  [31:0]    s_axi_rdata,
  output   [1:0]    s_axi_rresp,
  output            s_axi_rvalid,
  input             s_axi_rready,

  // External SYSREF input
  input             sysref_in_p,
  input             sysref_in_n,
  // ADC User SYSREF Input
  input             user_sysref_adc,
  // DAC User SYSREF Input
  input             user_sysref_dac,

  // ADC Fabric Feedback Clock for Tile 0
  output            clk_adc0,

  // ADC AXI Streaming Clock and reset for ADC0
  input             m0_axis_aclk,
  input             m0_axis_aresetn,

  // ADC Reference Clock for Tile 1
  input             adc1_clk_p,
  input             adc1_clk_n,
  
  // ADC Fabric Feedback Clock for Tile 1
  output            clk_adc1,

  // ADC AXI Streaming Clock and reset for ADC1
  input             m1_axis_aclk,
  input             m1_axis_aresetn,

  // ADC Fabric Feedback Clock for Tile 2
  output            clk_adc2,

  // ADC AXI Streaming Clock and reset for ADC2
  input             m2_axis_aclk,
  input             m2_axis_aresetn,

  // ADC Fabric Feedback Clock for Tile 3
  output            clk_adc3,

  // ADC AXI Streaming Clock and reset for ADC3
  input             m3_axis_aclk,
  input             m3_axis_aresetn,

  input             vin00_p,
  input             vin00_n,

  input             vin01_p,
  input             vin01_n,

  input             vin02_p,
  input             vin02_n,

  input             vin03_p,
  input             vin03_n,

  input             vin10_p,
  input             vin10_n,

  input             vin11_p,
  input             vin11_n,

  input             vin12_p,
  input             vin12_n,

  input             vin13_p,
  input             vin13_n,

  input             vin20_p,
  input             vin20_n,

  input             vin21_p,
  input             vin21_n,

  input             vin22_p,
  input             vin22_n,

  input             vin23_p,
  input             vin23_n,

  input             vin30_p,
  input             vin30_n,

  input             vin31_p,
  input             vin31_n,

  input             vin32_p,
  input             vin32_n,

  input             vin33_p,
  input             vin33_n,

  // ADC AXI Streaming Data for ADC00
  output [79:0]    m00_axis_tdata,
  output            m00_axis_tvalid,
  input             m00_axis_tready,

  // ADC AXI Streaming Data for ADC01
  output [79:0]    m01_axis_tdata,
  output            m01_axis_tvalid,
  input             m01_axis_tready,

  // ADC AXI Streaming Data for ADC02
  output [79:0]    m02_axis_tdata,
  output            m02_axis_tvalid,
  input             m02_axis_tready,

  // ADC AXI Streaming Data for ADC03
  output [79:0]    m03_axis_tdata,
  output            m03_axis_tvalid,
  input             m03_axis_tready,

  // ADC AXI Streaming Data for ADC10
  output [79:0]    m10_axis_tdata,
  output            m10_axis_tvalid,
  input             m10_axis_tready,

  // ADC AXI Streaming Data for ADC11
  output [79:0]    m11_axis_tdata,
  output            m11_axis_tvalid,
  input             m11_axis_tready,

  // ADC AXI Streaming Data for ADC12
  output [79:0]    m12_axis_tdata,
  output            m12_axis_tvalid,
  input             m12_axis_tready,

  // ADC AXI Streaming Data for ADC13
  output [79:0]    m13_axis_tdata,
  output            m13_axis_tvalid,
  input             m13_axis_tready,

  // ADC AXI Streaming Data for ADC20
  output [79:0]    m20_axis_tdata,
  output            m20_axis_tvalid,
  input             m20_axis_tready,

  // ADC AXI Streaming Data for ADC21
  output [79:0]    m21_axis_tdata,
  output            m21_axis_tvalid,
  input             m21_axis_tready,

  // ADC AXI Streaming Data for ADC22
  output [79:0]    m22_axis_tdata,
  output            m22_axis_tvalid,
  input             m22_axis_tready,

  // ADC AXI Streaming Data for ADC23
  output [79:0]    m23_axis_tdata,
  output            m23_axis_tvalid,
  input             m23_axis_tready,

  // ADC AXI Streaming Data for ADC30
  output [79:0]    m30_axis_tdata,
  output            m30_axis_tvalid,
  input             m30_axis_tready,

  // ADC AXI Streaming Data for ADC31
  output [79:0]    m31_axis_tdata,
  output            m31_axis_tvalid,
  input             m31_axis_tready,

  // ADC AXI Streaming Data for ADC32
  output [79:0]    m32_axis_tdata,
  output            m32_axis_tvalid,
  input             m32_axis_tready,

  // ADC AXI Streaming Data for ADC33
  output [79:0]    m33_axis_tdata,
  output            m33_axis_tvalid,
  input             m33_axis_tready,

 
  // DAC Reference Clock for Tile 0
  // DAC Fabric Feedback Clock for Tile 0
  output            clk_dac0,

  // DAC AXI Streaming and Reset for DAC0
  input             s0_axis_aclk,
  input             s0_axis_aresetn,

 
  // DAC Reference Clock for Tile 1
  input             dac1_clk_p,
  input             dac1_clk_n,

  // DAC Fabric Feedback Clock for Tile 1
  output            clk_dac1,

  // DAC AXI Streaming and Reset for DAC1
  input             s1_axis_aclk,
  input             s1_axis_aresetn,

 
  // DAC Reference Clock for Tile 2
  // DAC Fabric Feedback Clock for Tile 2
  output            clk_dac2,

  // DAC AXI Streaming and Reset for DAC2
  input             s2_axis_aclk,
  input             s2_axis_aresetn,

 
  // DAC Reference Clock for Tile 3
  // DAC Fabric Feedback Clock for Tile 3
  output            clk_dac3,

  // DAC AXI Streaming and Reset for DAC3
  input             s3_axis_aclk,
  input             s3_axis_aresetn,

  output            vout00_p,
  output            vout00_n,

  output            vout01_p,
  output            vout01_n,

  output            vout02_p,
  output            vout02_n,

  output            vout03_p,
  output            vout03_n,

  output            vout10_p,
  output            vout10_n,

  output            vout11_p,
  output            vout11_n,

  output            vout12_p,
  output            vout12_n,

  output            vout13_p,
  output            vout13_n,

  output            vout20_p,
  output            vout20_n,

  output            vout21_p,
  output            vout21_n,

  output            vout22_p,
  output            vout22_n,

  output            vout23_p,
  output            vout23_n,

  output            vout30_p,
  output            vout30_n,

  output            vout31_p,
  output            vout31_n,

  output            vout32_p,
  output            vout32_n,

  output            vout33_p,
  output            vout33_n,

  // DAC AXI Streaming Data for DAC00
  input  [255:0]    s00_axis_tdata,
  input             s00_axis_tvalid,
  output            s00_axis_tready,

  // DAC AXI Streaming Data for DAC01
  input  [255:0]    s01_axis_tdata,
  input             s01_axis_tvalid,
  output            s01_axis_tready,

  // DAC AXI Streaming Data for DAC02
  input  [255:0]    s02_axis_tdata,
  input             s02_axis_tvalid,
  output            s02_axis_tready,

  // DAC AXI Streaming Data for DAC03
  input  [255:0]    s03_axis_tdata,
  input             s03_axis_tvalid,
  output            s03_axis_tready,

  // DAC AXI Streaming Data for DAC10
  input  [255:0]    s10_axis_tdata,
  input             s10_axis_tvalid,
  output            s10_axis_tready,

  // DAC AXI Streaming Data for DAC11
  input  [255:0]    s11_axis_tdata,
  input             s11_axis_tvalid,
  output            s11_axis_tready,

  // DAC AXI Streaming Data for DAC12
  input  [255:0]    s12_axis_tdata,
  input             s12_axis_tvalid,
  output            s12_axis_tready,

  // DAC AXI Streaming Data for DAC13
  input  [255:0]    s13_axis_tdata,
  input             s13_axis_tvalid,
  output            s13_axis_tready,

  // DAC AXI Streaming Data for DAC20
  input  [255:0]    s20_axis_tdata,
  input             s20_axis_tvalid,
  output            s20_axis_tready,

  // DAC AXI Streaming Data for DAC21
  input  [255:0]    s21_axis_tdata,
  input             s21_axis_tvalid,
  output            s21_axis_tready,

  // DAC AXI Streaming Data for DAC22
  input  [255:0]    s22_axis_tdata,
  input             s22_axis_tvalid,
  output            s22_axis_tready,

  // DAC AXI Streaming Data for DAC23
  input  [255:0]    s23_axis_tdata,
  input             s23_axis_tvalid,
  output            s23_axis_tready,

  // DAC AXI Streaming Data for DAC30
  input  [255:0]    s30_axis_tdata,
  input             s30_axis_tvalid,
  output            s30_axis_tready,

  // DAC AXI Streaming Data for DAC31
  input  [255:0]    s31_axis_tdata,
  input             s31_axis_tvalid,
  output            s31_axis_tready,

  // DAC AXI Streaming Data for DAC32
  input  [255:0]    s32_axis_tdata,
  input             s32_axis_tvalid,
  output            s32_axis_tready,

  // DAC AXI Streaming Data for DAC33
  input  [255:0]    s33_axis_tdata,
  input             s33_axis_tvalid,
  output            s33_axis_tready,

















  // Interrupt
  output            irq
);

//------------------------------------------------------------
// Instantiate the Ultrascale+ RF Data Converter Subsystem IP
//------------------------------------------------------------
design_1_usp_rf_data_converter_0_0_block
inst(
  // AXI-Lite Control/Status
  .s_axi_aclk       (s_axi_aclk),
  .s_axi_aresetn    (s_axi_aresetn),
  .s_axi_awaddr     (s_axi_awaddr),
  .s_axi_awvalid    (s_axi_awvalid),
  .s_axi_awready    (s_axi_awready),
  .s_axi_wdata      (s_axi_wdata),
  .s_axi_wstrb      (s_axi_wstrb),
  .s_axi_wvalid     (s_axi_wvalid),
  .s_axi_wready     (s_axi_wready),
  .s_axi_bresp      (s_axi_bresp),
  .s_axi_bvalid     (s_axi_bvalid),
  .s_axi_bready     (s_axi_bready),
  .s_axi_araddr     (s_axi_araddr),
  .s_axi_arvalid    (s_axi_arvalid),
  .s_axi_arready    (s_axi_arready),
  .s_axi_rdata      (s_axi_rdata),
  .s_axi_rresp      (s_axi_rresp),
  .s_axi_rvalid     (s_axi_rvalid),
  .s_axi_rready     (s_axi_rready),

  // External SYSREF Input
  .sysref_in_p      (sysref_in_p),
  .sysref_in_n      (sysref_in_n),

  // ADC User SYSREF Input
  .user_sysref_adc  (user_sysref_adc),
  // DAC User SYSREF Input
  .user_sysref_dac  (user_sysref_dac),

  .adc0_clk_p       (1'b0),
  .adc0_clk_n       (1'b0),

  // ADC Fabric Feedback Clock for Tile 0
  .clk_adc0         (clk_adc0),

  // ADC AXI Streaming Clock and Reset for ADC0
  .m0_axis_aclk     (m0_axis_aclk),
  .m0_axis_aresetn  (m0_axis_aresetn),

  // ADC Reference Clock for Tile 1
  .adc1_clk_p       (adc1_clk_p),
  .adc1_clk_n       (adc1_clk_n),

  // ADC Fabric Feedback Clock for Tile 1
  .clk_adc1         (clk_adc1),

  // ADC AXI Streaming Clock and Reset for ADC1
  .m1_axis_aclk     (m1_axis_aclk),
  .m1_axis_aresetn  (m1_axis_aresetn),

  .adc2_clk_p       (1'b0),
  .adc2_clk_n       (1'b0),

  // ADC Fabric Feedback Clock for Tile 2
  .clk_adc2         (clk_adc2),

  // ADC AXI Streaming Clock and Reset for ADC2
  .m2_axis_aclk     (m2_axis_aclk),
  .m2_axis_aresetn  (m2_axis_aresetn),

  .adc3_clk_p       (1'b0),
  .adc3_clk_n       (1'b0),

  // ADC Fabric Feedback Clock for Tile 3
  .clk_adc3         (clk_adc3),

  // ADC AXI Streaming Clock and Reset for ADC3
  .m3_axis_aclk     (m3_axis_aclk),
  .m3_axis_aresetn  (m3_axis_aresetn),

  .vin00_p          (vin00_p),
  .vin00_n          (vin00_n),

  .adc00_int_cal_freeze    (1'b0),
  .adc00_cal_frozen        (),

  .vin01_p          (vin01_p),
  .vin01_n          (vin01_n),

  .adc01_int_cal_freeze    (1'b0),
  .adc01_cal_frozen        (),

  .vin02_p          (vin02_p),
  .vin02_n          (vin02_n),

  .adc02_int_cal_freeze    (1'b0),
  .adc02_cal_frozen        (),

  .vin03_p          (vin03_p),
  .vin03_n          (vin03_n),

  .adc03_int_cal_freeze    (1'b0),
  .adc03_cal_frozen        (),

  .vin10_p          (vin10_p),
  .vin10_n          (vin10_n),

  .adc10_int_cal_freeze    (1'b0),
  .adc10_cal_frozen        (),

  .vin11_p          (vin11_p),
  .vin11_n          (vin11_n),

  .adc11_int_cal_freeze    (1'b0),
  .adc11_cal_frozen        (),

  .vin12_p          (vin12_p),
  .vin12_n          (vin12_n),

  .adc12_int_cal_freeze    (1'b0),
  .adc12_cal_frozen        (),

  .vin13_p          (vin13_p),
  .vin13_n          (vin13_n),

  .adc13_int_cal_freeze    (1'b0),
  .adc13_cal_frozen        (),

  .vin20_p          (vin20_p),
  .vin20_n          (vin20_n),

  .adc20_int_cal_freeze    (1'b0),
  .adc20_cal_frozen        (),

  .vin21_p          (vin21_p),
  .vin21_n          (vin21_n),

  .adc21_int_cal_freeze    (1'b0),
  .adc21_cal_frozen        (),

  .vin22_p          (vin22_p),
  .vin22_n          (vin22_n),

  .adc22_int_cal_freeze    (1'b0),
  .adc22_cal_frozen        (),

  .vin23_p          (vin23_p),
  .vin23_n          (vin23_n),

  .adc23_int_cal_freeze    (1'b0),
  .adc23_cal_frozen        (),

  .vin30_p          (vin30_p),
  .vin30_n          (vin30_n),

  .adc30_int_cal_freeze    (1'b0),
  .adc30_cal_frozen        (),

  .vin31_p          (vin31_p),
  .vin31_n          (vin31_n),

  .adc31_int_cal_freeze    (1'b0),
  .adc31_cal_frozen        (),

  .vin32_p          (vin32_p),
  .vin32_n          (vin32_n),

  .adc32_int_cal_freeze    (1'b0),
  .adc32_cal_frozen        (),

  .vin33_p          (vin33_p),
  .vin33_n          (vin33_n),

  .adc33_int_cal_freeze    (1'b0),
  .adc33_cal_frozen        (),

  // ADC AXI Streaming Data for ADC00
  .m00_axis_tdata   (m00_axis_tdata),
  .m00_axis_tvalid  (m00_axis_tvalid),
  .m00_axis_tready  (m00_axis_tready),

  // ADC AXI Streaming Data for ADC01
  .m01_axis_tdata   (m01_axis_tdata),
  .m01_axis_tvalid  (m01_axis_tvalid),
  .m01_axis_tready  (m01_axis_tready),

  // ADC AXI Streaming Data for ADC02
  .m02_axis_tdata   (m02_axis_tdata),
  .m02_axis_tvalid  (m02_axis_tvalid),
  .m02_axis_tready  (m02_axis_tready),

  // ADC AXI Streaming Data for ADC03
  .m03_axis_tdata   (m03_axis_tdata),
  .m03_axis_tvalid  (m03_axis_tvalid),
  .m03_axis_tready  (m03_axis_tready),

  // ADC AXI Streaming Data for ADC10
  .m10_axis_tdata   (m10_axis_tdata),
  .m10_axis_tvalid  (m10_axis_tvalid),
  .m10_axis_tready  (m10_axis_tready),

  // ADC AXI Streaming Data for ADC11
  .m11_axis_tdata   (m11_axis_tdata),
  .m11_axis_tvalid  (m11_axis_tvalid),
  .m11_axis_tready  (m11_axis_tready),

  // ADC AXI Streaming Data for ADC12
  .m12_axis_tdata   (m12_axis_tdata),
  .m12_axis_tvalid  (m12_axis_tvalid),
  .m12_axis_tready  (m12_axis_tready),

  // ADC AXI Streaming Data for ADC13
  .m13_axis_tdata   (m13_axis_tdata),
  .m13_axis_tvalid  (m13_axis_tvalid),
  .m13_axis_tready  (m13_axis_tready),

  // ADC AXI Streaming Data for ADC20
  .m20_axis_tdata   (m20_axis_tdata),
  .m20_axis_tvalid  (m20_axis_tvalid),
  .m20_axis_tready  (m20_axis_tready),

  // ADC AXI Streaming Data for ADC21
  .m21_axis_tdata   (m21_axis_tdata),
  .m21_axis_tvalid  (m21_axis_tvalid),
  .m21_axis_tready  (m21_axis_tready),

  // ADC AXI Streaming Data for ADC22
  .m22_axis_tdata   (m22_axis_tdata),
  .m22_axis_tvalid  (m22_axis_tvalid),
  .m22_axis_tready  (m22_axis_tready),

  // ADC AXI Streaming Data for ADC23
  .m23_axis_tdata   (m23_axis_tdata),
  .m23_axis_tvalid  (m23_axis_tvalid),
  .m23_axis_tready  (m23_axis_tready),

  // ADC AXI Streaming Data for ADC30
  .m30_axis_tdata   (m30_axis_tdata),
  .m30_axis_tvalid  (m30_axis_tvalid),
  .m30_axis_tready  (m30_axis_tready),

  // ADC AXI Streaming Data for ADC31
  .m31_axis_tdata   (m31_axis_tdata),
  .m31_axis_tvalid  (m31_axis_tvalid),
  .m31_axis_tready  (m31_axis_tready),

  // ADC AXI Streaming Data for ADC32
  .m32_axis_tdata   (m32_axis_tdata),
  .m32_axis_tvalid  (m32_axis_tvalid),
  .m32_axis_tready  (m32_axis_tready),

  // ADC AXI Streaming Data for ADC33
  .m33_axis_tdata   (m33_axis_tdata),
  .m33_axis_tvalid  (m33_axis_tvalid),
  .m33_axis_tready  (m33_axis_tready),


  // DAC Reference Clock for Tile 0
  .dac0_clk_p       (1'b0),
  .dac0_clk_n       (1'b0),

  // DAC Fabric Feedback Clock for Tile 0
  .clk_dac0         (clk_dac0),

  // DAC AXI Streaming Clock and Reset for DAC0
  .s0_axis_aclk     (s0_axis_aclk),
  .s0_axis_aresetn  (s0_axis_aresetn),

  // DAC Reference Clock for Tile 1
  .dac1_clk_p       (dac1_clk_p),
  .dac1_clk_n       (dac1_clk_n),

  // DAC Fabric Feedback Clock for Tile 1
  .clk_dac1         (clk_dac1),

  // DAC AXI Streaming Clock and Reset for DAC1
  .s1_axis_aclk     (s1_axis_aclk),
  .s1_axis_aresetn  (s1_axis_aresetn),

  // DAC Reference Clock for Tile 2
  .dac2_clk_p       (1'b0),
  .dac2_clk_n       (1'b0),

  // DAC Fabric Feedback Clock for Tile 2
  .clk_dac2         (clk_dac2),

  // DAC AXI Streaming Clock and Reset for DAC2
  .s2_axis_aclk     (s2_axis_aclk),
  .s2_axis_aresetn  (s2_axis_aresetn),

  // DAC Reference Clock for Tile 3
  .dac3_clk_p       (1'b0),
  .dac3_clk_n       (1'b0),

  // DAC Fabric Feedback Clock for Tile 3
  .clk_dac3         (clk_dac3),

  // DAC AXI Streaming Clock and Reset for DAC3
  .s3_axis_aclk     (s3_axis_aclk),
  .s3_axis_aresetn  (s3_axis_aresetn),

  .vout00_p         (vout00_p),
  .vout00_n         (vout00_n),

  .vout01_p         (vout01_p),
  .vout01_n         (vout01_n),

  .vout02_p         (vout02_p),
  .vout02_n         (vout02_n),

  .vout03_p         (vout03_p),
  .vout03_n         (vout03_n),

  .vout10_p         (vout10_p),
  .vout10_n         (vout10_n),

  .vout11_p         (vout11_p),
  .vout11_n         (vout11_n),

  .vout12_p         (vout12_p),
  .vout12_n         (vout12_n),

  .vout13_p         (vout13_p),
  .vout13_n         (vout13_n),

  .vout20_p         (vout20_p),
  .vout20_n         (vout20_n),

  .vout21_p         (vout21_p),
  .vout21_n         (vout21_n),

  .vout22_p         (vout22_p),
  .vout22_n         (vout22_n),

  .vout23_p         (vout23_p),
  .vout23_n         (vout23_n),

  .vout30_p         (vout30_p),
  .vout30_n         (vout30_n),

  .vout31_p         (vout31_p),
  .vout31_n         (vout31_n),

  .vout32_p         (vout32_p),
  .vout32_n         (vout32_n),

  .vout33_p         (vout33_p),
  .vout33_n         (vout33_n),

  // DAC AXI Streaming Data for DAC00
  .s00_axis_tdata   (s00_axis_tdata),
  .s00_axis_tvalid  (s00_axis_tvalid),
  .s00_axis_tready  (s00_axis_tready),

  // DAC AXI Streaming Data for DAC01
  .s01_axis_tdata   (s01_axis_tdata),
  .s01_axis_tvalid  (s01_axis_tvalid),
  .s01_axis_tready  (s01_axis_tready),

  // DAC AXI Streaming Data for DAC02
  .s02_axis_tdata   (s02_axis_tdata),
  .s02_axis_tvalid  (s02_axis_tvalid),
  .s02_axis_tready  (s02_axis_tready),

  // DAC AXI Streaming Data for DAC03
  .s03_axis_tdata   (s03_axis_tdata),
  .s03_axis_tvalid  (s03_axis_tvalid),
  .s03_axis_tready  (s03_axis_tready),

  // DAC AXI Streaming Data for DAC10
  .s10_axis_tdata   (s10_axis_tdata),
  .s10_axis_tvalid  (s10_axis_tvalid),
  .s10_axis_tready  (s10_axis_tready),

  // DAC AXI Streaming Data for DAC11
  .s11_axis_tdata   (s11_axis_tdata),
  .s11_axis_tvalid  (s11_axis_tvalid),
  .s11_axis_tready  (s11_axis_tready),

  // DAC AXI Streaming Data for DAC12
  .s12_axis_tdata   (s12_axis_tdata),
  .s12_axis_tvalid  (s12_axis_tvalid),
  .s12_axis_tready  (s12_axis_tready),

  // DAC AXI Streaming Data for DAC13
  .s13_axis_tdata   (s13_axis_tdata),
  .s13_axis_tvalid  (s13_axis_tvalid),
  .s13_axis_tready  (s13_axis_tready),

  // DAC AXI Streaming Data for DAC20
  .s20_axis_tdata   (s20_axis_tdata),
  .s20_axis_tvalid  (s20_axis_tvalid),
  .s20_axis_tready  (s20_axis_tready),

  // DAC AXI Streaming Data for DAC21
  .s21_axis_tdata   (s21_axis_tdata),
  .s21_axis_tvalid  (s21_axis_tvalid),
  .s21_axis_tready  (s21_axis_tready),

  // DAC AXI Streaming Data for DAC22
  .s22_axis_tdata   (s22_axis_tdata),
  .s22_axis_tvalid  (s22_axis_tvalid),
  .s22_axis_tready  (s22_axis_tready),

  // DAC AXI Streaming Data for DAC23
  .s23_axis_tdata   (s23_axis_tdata),
  .s23_axis_tvalid  (s23_axis_tvalid),
  .s23_axis_tready  (s23_axis_tready),

  // DAC AXI Streaming Data for DAC30
  .s30_axis_tdata   (s30_axis_tdata),
  .s30_axis_tvalid  (s30_axis_tvalid),
  .s30_axis_tready  (s30_axis_tready),

  // DAC AXI Streaming Data for DAC31
  .s31_axis_tdata   (s31_axis_tdata),
  .s31_axis_tvalid  (s31_axis_tvalid),
  .s31_axis_tready  (s31_axis_tready),

  // DAC AXI Streaming Data for DAC32
  .s32_axis_tdata   (s32_axis_tdata),
  .s32_axis_tvalid  (s32_axis_tvalid),
  .s32_axis_tready  (s32_axis_tready),

  // DAC AXI Streaming Data for DAC33
  .s33_axis_tdata   (s33_axis_tdata),
  .s33_axis_tvalid  (s33_axis_tvalid),
  .s33_axis_tready  (s33_axis_tready),

  // DAC Debug Ports
  // DAC0
  .dac0_cmn_control   (15'h0000),

  .dac00_status       (),
  .dac01_status       (),
  .dac02_status       (),
  .dac03_status       (),

  .dac0_pll_dmon      (),
  .dac0_pll_lock      (),
  .dac0_status        (),
  .dac0_done          (),
  .dac0_powerup_state (),

  .dac0_daddr_mon     (),
  .dac0_di_mon        (),
  .dac0_den_mon       (),
  .dac0_dwe_mon       (),
  .dac0_do_mon        (),
  .dac0_drdy_mon      (),
  .dac0_dreq_mon      (),
  .dac0_dgnt_mon      (),

  // DAC1
  .dac1_cmn_control   (15'h0000),

  .dac10_status       (),
  .dac11_status       (),
  .dac12_status       (),
  .dac13_status       (),

  .dac1_pll_dmon      (),
  .dac1_pll_lock      (),
  .dac1_status        (),
  .dac1_done          (),
  .dac1_powerup_state (),

  .dac1_daddr_mon     (),
  .dac1_di_mon        (),
  .dac1_den_mon       (),
  .dac1_dwe_mon       (),
  .dac1_do_mon        (),
  .dac1_drdy_mon      (),
  .dac1_dreq_mon      (),
  .dac1_dgnt_mon      (),

  // DAC2
  .dac2_cmn_control   (15'h0000),

  .dac20_status       (),
  .dac21_status       (),
  .dac22_status       (),
  .dac23_status       (),

  .dac2_pll_dmon      (),
  .dac2_pll_lock      (),
  .dac2_status        (),
  .dac2_done          (),
  .dac2_powerup_state (),

  .dac2_daddr_mon     (),
  .dac2_di_mon        (),
  .dac2_den_mon       (),
  .dac2_dwe_mon       (),
  .dac2_do_mon        (),
  .dac2_drdy_mon      (),
  .dac2_dreq_mon      (),
  .dac2_dgnt_mon      (),

  // DAC3
  .dac3_cmn_control   (15'h0000),

  .dac30_status       (),
  .dac31_status       (),
  .dac32_status       (),
  .dac33_status       (),

  .dac3_pll_dmon      (),
  .dac3_pll_lock      (),
  .dac3_status        (),
  .dac3_done          (),
  .dac3_powerup_state (),

  .dac3_daddr_mon     (),
  .dac3_di_mon        (),
  .dac3_den_mon       (),
  .dac3_dwe_mon       (),
  .dac3_do_mon        (),
  .dac3_drdy_mon      (),
  .dac3_dreq_mon      (),
  .dac3_dgnt_mon      (),

  // ADC Debug Ports
  // ADC0
  .adc0_cmn_control (15'h0000),

  .adc00_status       (),
  .adc01_status       (),
  .adc02_status       (),
  .adc03_status       (),

  .adc0_pll_dmon      (),
  .adc0_pll_lock      (),
  .adc0_status        (),
  .adc0_done          (),
  .adc0_powerup_state (),

  .adc0_daddr_mon     (),
  .adc0_di_mon        (),
  .adc0_den_mon       (),
  .adc0_dwe_mon       (),
  .adc0_do_mon        (),
  .adc0_drdy_mon      (),
  .adc0_dreq_mon      (),
  .adc0_dgnt_mon      (),

  // ADC1
  .adc1_cmn_control (15'h0000),

  .adc10_status       (),
  .adc11_status       (),
  .adc12_status       (),
  .adc13_status       (),

  .adc1_pll_dmon      (),
  .adc1_pll_lock      (),
  .adc1_status        (),
  .adc1_done          (),
  .adc1_powerup_state (),

  .adc1_daddr_mon     (),
  .adc1_di_mon        (),
  .adc1_den_mon       (),
  .adc1_dwe_mon       (),
  .adc1_do_mon        (),
  .adc1_drdy_mon      (),
  .adc1_dreq_mon      (),
  .adc1_dgnt_mon      (),

  // ADC2
  .adc2_cmn_control (15'h0000),

  .adc20_status       (),
  .adc21_status       (),
  .adc22_status       (),
  .adc23_status       (),

  .adc2_pll_dmon      (),
  .adc2_pll_lock      (),
  .adc2_status        (),
  .adc2_done          (),
  .adc2_powerup_state (),

  .adc2_daddr_mon     (),
  .adc2_di_mon        (),
  .adc2_den_mon       (),
  .adc2_dwe_mon       (),
  .adc2_do_mon        (),
  .adc2_drdy_mon      (),
  .adc2_dreq_mon      (),
  .adc2_dgnt_mon      (),

  // ADC3
  .adc3_cmn_control (15'h0000),

  .adc30_status       (),
  .adc31_status       (),
  .adc32_status       (),
  .adc33_status       (),

  .adc3_pll_dmon      (),
  .adc3_pll_lock      (),
  .adc3_status        (),
  .adc3_done          (),
  .adc3_powerup_state (),

  .adc3_daddr_mon     (),
  .adc3_di_mon        (),
  .adc3_den_mon       (),
  .adc3_dwe_mon       (),
  .adc3_do_mon        (),
  .adc3_drdy_mon      (),
  .adc3_dreq_mon      (),
  .adc3_dgnt_mon      (),

















  // Interrupt
  .irq              (irq)
);

endmodule

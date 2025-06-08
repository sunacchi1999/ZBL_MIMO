################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name i_LVDS_Clk_p -period 50 [get_ports i_LVDS_Clk_p]
create_clock -name i_LVDS_Clk_n -period 50 [get_ports i_LVDS_Clk_n]
create_clock -name PL_Clk_p -period 10 [get_ports PL_Clk_p]
create_clock -name PL_Clk_n -period 10 [get_ports PL_Clk_n]
create_clock -name adc1_clk_clk_p -period 5 [get_ports adc1_clk_clk_p]
create_clock -name dac1_clk_clk_p -period 5 [get_ports dac1_clk_clk_p]
create_clock -name GT_DIFF_REFCLK1_clk_p -period 6.400 [get_ports GT_DIFF_REFCLK1_clk_p]

################################################################################
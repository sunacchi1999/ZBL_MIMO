# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DAC_TRIGGER_WIDTH_DEBUG" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Frame_Period_DEBUG" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LVDS_Clk_Div" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Pulse_Period_DEBUG" -parent ${Page_0}


}

proc update_PARAM_VALUE.DAC_TRIGGER_WIDTH_DEBUG { PARAM_VALUE.DAC_TRIGGER_WIDTH_DEBUG } {
	# Procedure called to update DAC_TRIGGER_WIDTH_DEBUG when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DAC_TRIGGER_WIDTH_DEBUG { PARAM_VALUE.DAC_TRIGGER_WIDTH_DEBUG } {
	# Procedure called to validate DAC_TRIGGER_WIDTH_DEBUG
	return true
}

proc update_PARAM_VALUE.Frame_Period_DEBUG { PARAM_VALUE.Frame_Period_DEBUG } {
	# Procedure called to update Frame_Period_DEBUG when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Frame_Period_DEBUG { PARAM_VALUE.Frame_Period_DEBUG } {
	# Procedure called to validate Frame_Period_DEBUG
	return true
}

proc update_PARAM_VALUE.LVDS_Clk_Div { PARAM_VALUE.LVDS_Clk_Div } {
	# Procedure called to update LVDS_Clk_Div when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LVDS_Clk_Div { PARAM_VALUE.LVDS_Clk_Div } {
	# Procedure called to validate LVDS_Clk_Div
	return true
}

proc update_PARAM_VALUE.Pulse_Period_DEBUG { PARAM_VALUE.Pulse_Period_DEBUG } {
	# Procedure called to update Pulse_Period_DEBUG when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Pulse_Period_DEBUG { PARAM_VALUE.Pulse_Period_DEBUG } {
	# Procedure called to validate Pulse_Period_DEBUG
	return true
}


proc update_MODELPARAM_VALUE.LVDS_Clk_Div { MODELPARAM_VALUE.LVDS_Clk_Div PARAM_VALUE.LVDS_Clk_Div } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LVDS_Clk_Div}] ${MODELPARAM_VALUE.LVDS_Clk_Div}
}

proc update_MODELPARAM_VALUE.Frame_Period_DEBUG { MODELPARAM_VALUE.Frame_Period_DEBUG PARAM_VALUE.Frame_Period_DEBUG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Frame_Period_DEBUG}] ${MODELPARAM_VALUE.Frame_Period_DEBUG}
}

proc update_MODELPARAM_VALUE.Pulse_Period_DEBUG { MODELPARAM_VALUE.Pulse_Period_DEBUG PARAM_VALUE.Pulse_Period_DEBUG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Pulse_Period_DEBUG}] ${MODELPARAM_VALUE.Pulse_Period_DEBUG}
}

proc update_MODELPARAM_VALUE.DAC_TRIGGER_WIDTH_DEBUG { MODELPARAM_VALUE.DAC_TRIGGER_WIDTH_DEBUG PARAM_VALUE.DAC_TRIGGER_WIDTH_DEBUG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DAC_TRIGGER_WIDTH_DEBUG}] ${MODELPARAM_VALUE.DAC_TRIGGER_WIDTH_DEBUG}
}


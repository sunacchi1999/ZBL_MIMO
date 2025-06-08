# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADC_TRIGGER_WIDTH_DEBUG" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADC_TRIGGER_WIDTH_DEBUG { PARAM_VALUE.ADC_TRIGGER_WIDTH_DEBUG } {
	# Procedure called to update ADC_TRIGGER_WIDTH_DEBUG when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_TRIGGER_WIDTH_DEBUG { PARAM_VALUE.ADC_TRIGGER_WIDTH_DEBUG } {
	# Procedure called to validate ADC_TRIGGER_WIDTH_DEBUG
	return true
}


proc update_MODELPARAM_VALUE.ADC_TRIGGER_WIDTH_DEBUG { MODELPARAM_VALUE.ADC_TRIGGER_WIDTH_DEBUG PARAM_VALUE.ADC_TRIGGER_WIDTH_DEBUG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_TRIGGER_WIDTH_DEBUG}] ${MODELPARAM_VALUE.ADC_TRIGGER_WIDTH_DEBUG}
}


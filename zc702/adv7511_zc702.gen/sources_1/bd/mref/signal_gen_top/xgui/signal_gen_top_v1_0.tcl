# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "G_ADDR_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_DATA_B" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_DATA_W" -parent ${Page_0}


}

proc update_PARAM_VALUE.G_ADDR_W { PARAM_VALUE.G_ADDR_W } {
	# Procedure called to update G_ADDR_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_ADDR_W { PARAM_VALUE.G_ADDR_W } {
	# Procedure called to validate G_ADDR_W
	return true
}

proc update_PARAM_VALUE.G_DATA_B { PARAM_VALUE.G_DATA_B } {
	# Procedure called to update G_DATA_B when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_DATA_B { PARAM_VALUE.G_DATA_B } {
	# Procedure called to validate G_DATA_B
	return true
}

proc update_PARAM_VALUE.G_DATA_W { PARAM_VALUE.G_DATA_W } {
	# Procedure called to update G_DATA_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_DATA_W { PARAM_VALUE.G_DATA_W } {
	# Procedure called to validate G_DATA_W
	return true
}


proc update_MODELPARAM_VALUE.G_ADDR_W { MODELPARAM_VALUE.G_ADDR_W PARAM_VALUE.G_ADDR_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_ADDR_W}] ${MODELPARAM_VALUE.G_ADDR_W}
}

proc update_MODELPARAM_VALUE.G_DATA_B { MODELPARAM_VALUE.G_DATA_B PARAM_VALUE.G_DATA_B } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_DATA_B}] ${MODELPARAM_VALUE.G_DATA_B}
}

proc update_MODELPARAM_VALUE.G_DATA_W { MODELPARAM_VALUE.G_DATA_W PARAM_VALUE.G_DATA_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_DATA_W}] ${MODELPARAM_VALUE.G_DATA_W}
}


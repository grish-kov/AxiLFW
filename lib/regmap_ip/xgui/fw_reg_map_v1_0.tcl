# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "G_ADDR_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_DATA_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TST_ADDR1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TST_ADDR2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TST_ADDR3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TST_ADDR4" -parent ${Page_0}


}

proc update_PARAM_VALUE.G_ADDR_W { PARAM_VALUE.G_ADDR_W } {
	# Procedure called to update G_ADDR_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_ADDR_W { PARAM_VALUE.G_ADDR_W } {
	# Procedure called to validate G_ADDR_W
	return true
}

proc update_PARAM_VALUE.G_DATA_W { PARAM_VALUE.G_DATA_W } {
	# Procedure called to update G_DATA_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_DATA_W { PARAM_VALUE.G_DATA_W } {
	# Procedure called to validate G_DATA_W
	return true
}

proc update_PARAM_VALUE.TST_ADDR1 { PARAM_VALUE.TST_ADDR1 } {
	# Procedure called to update TST_ADDR1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TST_ADDR1 { PARAM_VALUE.TST_ADDR1 } {
	# Procedure called to validate TST_ADDR1
	return true
}

proc update_PARAM_VALUE.TST_ADDR2 { PARAM_VALUE.TST_ADDR2 } {
	# Procedure called to update TST_ADDR2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TST_ADDR2 { PARAM_VALUE.TST_ADDR2 } {
	# Procedure called to validate TST_ADDR2
	return true
}

proc update_PARAM_VALUE.TST_ADDR3 { PARAM_VALUE.TST_ADDR3 } {
	# Procedure called to update TST_ADDR3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TST_ADDR3 { PARAM_VALUE.TST_ADDR3 } {
	# Procedure called to validate TST_ADDR3
	return true
}

proc update_PARAM_VALUE.TST_ADDR4 { PARAM_VALUE.TST_ADDR4 } {
	# Procedure called to update TST_ADDR4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TST_ADDR4 { PARAM_VALUE.TST_ADDR4 } {
	# Procedure called to validate TST_ADDR4
	return true
}


proc update_MODELPARAM_VALUE.G_ADDR_W { MODELPARAM_VALUE.G_ADDR_W PARAM_VALUE.G_ADDR_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_ADDR_W}] ${MODELPARAM_VALUE.G_ADDR_W}
}

proc update_MODELPARAM_VALUE.G_DATA_W { MODELPARAM_VALUE.G_DATA_W PARAM_VALUE.G_DATA_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_DATA_W}] ${MODELPARAM_VALUE.G_DATA_W}
}

proc update_MODELPARAM_VALUE.TST_ADDR1 { MODELPARAM_VALUE.TST_ADDR1 PARAM_VALUE.TST_ADDR1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TST_ADDR1}] ${MODELPARAM_VALUE.TST_ADDR1}
}

proc update_MODELPARAM_VALUE.TST_ADDR2 { MODELPARAM_VALUE.TST_ADDR2 PARAM_VALUE.TST_ADDR2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TST_ADDR2}] ${MODELPARAM_VALUE.TST_ADDR2}
}

proc update_MODELPARAM_VALUE.TST_ADDR3 { MODELPARAM_VALUE.TST_ADDR3 PARAM_VALUE.TST_ADDR3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TST_ADDR3}] ${MODELPARAM_VALUE.TST_ADDR3}
}

proc update_MODELPARAM_VALUE.TST_ADDR4 { MODELPARAM_VALUE.TST_ADDR4 PARAM_VALUE.TST_ADDR4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TST_ADDR4}] ${MODELPARAM_VALUE.TST_ADDR4}
}


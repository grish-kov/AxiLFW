# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "G_AXIL_ADDR_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_AXIL_DATA_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_BIT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_BYT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_CNT_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_INDX_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_MAX_MIN_MODS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_MEM_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_MODS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_OUT_DATA" -parent ${Page_0}


}

proc update_PARAM_VALUE.G_AXIL_ADDR_W { PARAM_VALUE.G_AXIL_ADDR_W } {
	# Procedure called to update G_AXIL_ADDR_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_AXIL_ADDR_W { PARAM_VALUE.G_AXIL_ADDR_W } {
	# Procedure called to validate G_AXIL_ADDR_W
	return true
}

proc update_PARAM_VALUE.G_AXIL_DATA_W { PARAM_VALUE.G_AXIL_DATA_W } {
	# Procedure called to update G_AXIL_DATA_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_AXIL_DATA_W { PARAM_VALUE.G_AXIL_DATA_W } {
	# Procedure called to validate G_AXIL_DATA_W
	return true
}

proc update_PARAM_VALUE.G_BIT_WIDTH { PARAM_VALUE.G_BIT_WIDTH } {
	# Procedure called to update G_BIT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_BIT_WIDTH { PARAM_VALUE.G_BIT_WIDTH } {
	# Procedure called to validate G_BIT_WIDTH
	return true
}

proc update_PARAM_VALUE.G_BYT { PARAM_VALUE.G_BYT } {
	# Procedure called to update G_BYT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_BYT { PARAM_VALUE.G_BYT } {
	# Procedure called to validate G_BYT
	return true
}

proc update_PARAM_VALUE.G_CNT_W { PARAM_VALUE.G_CNT_W } {
	# Procedure called to update G_CNT_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_CNT_W { PARAM_VALUE.G_CNT_W } {
	# Procedure called to validate G_CNT_W
	return true
}

proc update_PARAM_VALUE.G_INDX_WIDTH { PARAM_VALUE.G_INDX_WIDTH } {
	# Procedure called to update G_INDX_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_INDX_WIDTH { PARAM_VALUE.G_INDX_WIDTH } {
	# Procedure called to validate G_INDX_WIDTH
	return true
}

proc update_PARAM_VALUE.G_MAX_MIN_MODS { PARAM_VALUE.G_MAX_MIN_MODS } {
	# Procedure called to update G_MAX_MIN_MODS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_MAX_MIN_MODS { PARAM_VALUE.G_MAX_MIN_MODS } {
	# Procedure called to validate G_MAX_MIN_MODS
	return true
}

proc update_PARAM_VALUE.G_MEM_ADDR_WIDTH { PARAM_VALUE.G_MEM_ADDR_WIDTH } {
	# Procedure called to update G_MEM_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_MEM_ADDR_WIDTH { PARAM_VALUE.G_MEM_ADDR_WIDTH } {
	# Procedure called to validate G_MEM_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.G_MODS { PARAM_VALUE.G_MODS } {
	# Procedure called to update G_MODS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_MODS { PARAM_VALUE.G_MODS } {
	# Procedure called to validate G_MODS
	return true
}

proc update_PARAM_VALUE.G_OUT_DATA { PARAM_VALUE.G_OUT_DATA } {
	# Procedure called to update G_OUT_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_OUT_DATA { PARAM_VALUE.G_OUT_DATA } {
	# Procedure called to validate G_OUT_DATA
	return true
}


proc update_MODELPARAM_VALUE.G_BYT { MODELPARAM_VALUE.G_BYT PARAM_VALUE.G_BYT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_BYT}] ${MODELPARAM_VALUE.G_BYT}
}

proc update_MODELPARAM_VALUE.G_BIT_WIDTH { MODELPARAM_VALUE.G_BIT_WIDTH PARAM_VALUE.G_BIT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_BIT_WIDTH}] ${MODELPARAM_VALUE.G_BIT_WIDTH}
}

proc update_MODELPARAM_VALUE.G_MAX_MIN_MODS { MODELPARAM_VALUE.G_MAX_MIN_MODS PARAM_VALUE.G_MAX_MIN_MODS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_MAX_MIN_MODS}] ${MODELPARAM_VALUE.G_MAX_MIN_MODS}
}

proc update_MODELPARAM_VALUE.G_MEM_ADDR_WIDTH { MODELPARAM_VALUE.G_MEM_ADDR_WIDTH PARAM_VALUE.G_MEM_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_MEM_ADDR_WIDTH}] ${MODELPARAM_VALUE.G_MEM_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.G_MODS { MODELPARAM_VALUE.G_MODS PARAM_VALUE.G_MODS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_MODS}] ${MODELPARAM_VALUE.G_MODS}
}

proc update_MODELPARAM_VALUE.G_OUT_DATA { MODELPARAM_VALUE.G_OUT_DATA PARAM_VALUE.G_OUT_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_OUT_DATA}] ${MODELPARAM_VALUE.G_OUT_DATA}
}

proc update_MODELPARAM_VALUE.G_AXIL_ADDR_W { MODELPARAM_VALUE.G_AXIL_ADDR_W PARAM_VALUE.G_AXIL_ADDR_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_AXIL_ADDR_W}] ${MODELPARAM_VALUE.G_AXIL_ADDR_W}
}

proc update_MODELPARAM_VALUE.G_AXIL_DATA_W { MODELPARAM_VALUE.G_AXIL_DATA_W PARAM_VALUE.G_AXIL_DATA_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_AXIL_DATA_W}] ${MODELPARAM_VALUE.G_AXIL_DATA_W}
}

proc update_MODELPARAM_VALUE.G_CNT_W { MODELPARAM_VALUE.G_CNT_W PARAM_VALUE.G_CNT_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_CNT_W}] ${MODELPARAM_VALUE.G_CNT_W}
}

proc update_MODELPARAM_VALUE.G_INDX_WIDTH { MODELPARAM_VALUE.G_INDX_WIDTH PARAM_VALUE.G_INDX_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_INDX_WIDTH}] ${MODELPARAM_VALUE.G_INDX_WIDTH}
}


`timescale 1ns / 1ps

module axil_fw #(

    int G_RM_ADDR_W = 4,    // AXIL xADDR bit width
	int G_RM_DATA_B = 4     // AXIL xDATA number of bytes (B)

) (

    input           i_clk,
                    i_rst,

    if_axil.s       s_axil,
    if_axil.m       m_axil

    );

    // assign s_axil.awvalid   = m_axil.awvalid;
    // assign s_axil.awaddr    = m_axil.awaddr;

    // assign s_axil.wvalid    = m_axil.wvalid;
    // assign s_axil.wdata     = m_axil.wdata;
    // assign s_axil.wstrb     = m_axil.wstrb;

    // assign s_axil.bready    = m_axil.bready;

    // assign s_axil.arvalid   = m_axil.arvalid;
    // assign s_axil.araddr    = m_axil.araddr;

    // assign s_axil.rready    = m_axil.rready;

    // assign m_axil.awready   = s_axil.awready;  

    // assign m_axil.wready    = s_axil.wready;

    // assign m_axil.bvalid    = s_axil.bvalid;
    // assign m_axil.bresp     = s_axil.bresp;

    // assign m_axil.arready   = s_axil.arready;

    // assign m_axil.rvalid    = s_axil.rvalid;
    // assign m_axil.rresp     = s_axil.rresp;
    // assign m_axil.rdata     = s_axil.rdata;

    
    task t_axil_s_rd;
    input [1:0] RESP;
	begin
	// read address
		`MACRO_AXIL_HSK(m_axil, arvalid, arready);
		v_araddr = m_axil.araddr;
	// read data
        m_axil.rresp = RESP;
        case(v_araddr)
			RW_TRN_ENA: m_axil.rdata = 1;
			WR_TRN_TBL: m_axil.rdata = 2;
			RW_GLU_ENA: m_axil.rdata = 3;
			RW_GLU_OFS: m_axil.rdata = 4;
			RW_DWS_PRM: m_axil.rdata = 5;
		endcase
		`MACRO_AXIL_HSK(m_axil, rready, rvalid);
	end
endtask : t_axil_s_rd

task t_axil_s_wr;
    input [1:0] RESP;
	begin
	// write address
		`MACRO_AXIL_HSK(m_axil, awvalid, awready);
	// write data
		`MACRO_AXIL_HSK(m_axil, wvalid, wready);
	// write response
        m_axil.bresp = RESP;
		`MACRO_AXIL_HSK(m_axil, bready, bvalid);
	end
endtask : t_axil_s_wr

endmodule : tb_axil_fw_top




endmodule

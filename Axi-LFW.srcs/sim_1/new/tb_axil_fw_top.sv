`timescale 1ns / 1ps

module tb_axil_fw_top #(
	int G_ADDR_W = 12, 					// AXIL xADDR bit width
	int G_DATA_B = 8, 					// AXIL xDATA number of bytes (B)
	
	real dt = 1.0 						// clock period ns
	);

	localparam C_DATA_W = 8 * G_DATA_B; // AXIL xDATA bit width

	logic i_clk   = 1;
	logic i_rst_n = 0;

	always #(dt / 2.0) i_clk = ~i_clk;

	initial begin

		i_rst_n = 1; #3;
		i_rst_n = 0;

	end

//  AXI4 Memory Mapped (lite) Parameters to Define the Signal Widths:
//    N - Data Bus Width in Bytes;
//    A - Address Width;
//    PAYMASK - Payload Mask: { awprot, wstrb, bresp, arprot, rresp }
	if_axil #(
		.N(G_DATA_B), 
		.A(G_ADDR_W), 
		.PAYMASK(5'b01101)) s_axil ();
	if_axil #(
		.N(G_DATA_B), 
		.A(G_ADDR_W), 
		.PAYMASK(5'b01101)) m_axil ();

	typedef logic [G_ADDR_W-1:0] t_xaddr;
	typedef logic [C_DATA_W-1:0] t_xdata;

	task t_axil_m_init;
		begin
			s_axil.awvalid = '0;
			s_axil.awaddr  = '0;
			s_axil.wvalid  = '0;
			s_axil.wdata   = '0;
			s_axil.wstrb   = '0;
			s_axil.bready  = '0;
			s_axil.arvalid = '0;
			s_axil.araddr  = '0;
			s_axil.rready  = '0;
		end
	endtask : t_axil_m_init

	`define MACRO_AXIL_HSK(name, miso, mosi) \
		``name``.``mosi``= '1; \
		do begin \
			#dt; \
		end while (!(``name``.``miso`` && ``name``.``mosi``)); \
		``name``.``mosi`` = '0; \

	task t_axil_m_wr;
		input t_xaddr ADDR;
		input t_xdata DATA;
		begin

		// write address
			s_axil.awaddr = ADDR;
			`MACRO_AXIL_HSK(s_axil, awready, awvalid);
		// write data
			s_axil.wdata = DATA;
			s_axil.wstrb = '1;
			`MACRO_AXIL_HSK(s_axil, wready, wvalid);
		// write response
			`MACRO_AXIL_HSK(s_axil, bvalid, bready);

		end
	endtask : t_axil_m_wr

	task t_axil_m_rd;
		input  t_xaddr ADDR;
		begin

		// read address
			s_axil.araddr = ADDR;
			`MACRO_AXIL_HSK(s_axil, arready, arvalid);
		// read data
			`MACRO_AXIL_HSK(s_axil, rvalid, rready);
		
		end
	endtask : t_axil_m_rd

	task t_axil_s_init;
		begin

			m_axil.awready = '0;
			m_axil.wready  = '0;
			m_axil.bvalid  = '0;
			m_axil.bresp   = 2'b00;
			m_axil.arready = '0;
			m_axil.rvalid  = '0;
			m_axil.rresp   = '0;
			m_axil.rdata   = '0;
		
		end
	endtask : t_axil_s_init

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

	task t_axil_s_wr_bad;
		input [1:0] RESP;
		begin

		// write address
			`MACRO_AXIL_HSK(m_axil, awvalid, awready);
		// write data
			// `MACRO_AXIL_HSK(m_axil, wvalid, wready);
		// write response
			// m_axil.bresp = RESP;
			// `MACRO_AXIL_HSK(m_axil, bready, bvalid);
			
		end
	endtask : t_axil_s_wr_bad

	t_xaddr v_araddr;

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

	task t_axil_s_rd_bad;
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

			// `MACRO_AXIL_HSK(m_axil, rready, rvalid);
		
		end
	endtask : t_axil_s_rd_bad	

	localparam t_xaddr RW_TRN_ENA = 'h001; 
	localparam t_xaddr WR_TRN_TBL = 'h008;
	localparam t_xaddr RW_GLU_ENA = 'h100; 
	localparam t_xaddr RW_GLU_OFS = 'h108; 
	localparam t_xaddr RW_DWS_PRM = 'h200;

	initial begin

		t_axil_m_init; #10.9;

		t_axil_m_wr(.ADDR('h001), .DATA(111)); #10;			// 1	
		t_axil_m_wr(.ADDR('h002), .DATA(222)); #10;			// 2
		t_axil_m_rd(.ADDR(RW_TRN_ENA)); #10;				// 3
		t_axil_m_rd(.ADDR(RW_TRN_ENA)); #10;				// 4
		t_axil_m_wr(.ADDR('h003), .DATA(333)); #10;			// 5
		t_axil_m_wr(.ADDR('h004), .DATA(333)); #10;			// 6	
		t_axil_m_wr(.ADDR('h004), .DATA(333)); #10;			// 7	
		t_axil_m_rd(.ADDR(WR_TRN_TBL)); #10;				// 8
		t_axil_m_rd(.ADDR(WR_TRN_TBL)); #10;				// 9
		t_axil_m_rd(.ADDR(RW_GLU_ENA)); #10;				// 10

	end

	// 	xRESP :	00 - okay 					OKAY,
	//			01 - exokay (not supported) EXOKAY,
	//			10 - slave error 			SLVERR,
	//			11 - decode error 
	//				(no slave at address) 	DECERR

	initial begin

		t_axil_s_init; #10.9;

		t_axil_s_wr(.RESP(2'b00)); 		#10;				// 1
		t_axil_s_wr_bad(.RESP(2'b00)); 	#10;				// 2
		t_axil_s_rd(.RESP(2'b00)); 		#10;				// 3
		t_axil_s_rd_bad(.RESP(2'b10)); 	#10;				// 4
		t_axil_s_wr_bad(.RESP(2'b10)); 	#10;				// 5
		t_axil_s_wr(.RESP(2'b10)); 		#10;				// 6
		t_axil_s_wr(.RESP(2'b00)); 		#10;				// 6
		t_axil_s_rd_bad(.RESP(2'b10)); 	#10;				// 8
		t_axil_s_rd_bad(.RESP(2'b00)); 	#10;				// 9
		t_axil_s_rd(.RESP(2'b10)); 		#10;				// 10

	end

    axil_fw u_axil_fw  (

        .i_clk      (i_clk),
        .i_rst      (i_rst_n),

        .s_axil     (m_axil),
        .m_axil     (s_axil)

    );


endmodule : tb_axil_fw_top

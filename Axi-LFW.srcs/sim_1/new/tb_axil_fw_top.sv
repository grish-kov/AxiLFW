`timescale 1ns / 1ps

module tb_axil_fw_top #(

	int G_ADDR_W = 4, 					// AXIL xADDR bit width
	int G_DATA_B = 8, 					// AXIL xDATA number of bytes (B)
	
	real dt = 1.0 						// clock period ns
	);

	localparam C_DATA_W = 8 * G_DATA_B; // AXIL xDATA bit width

	logic i_clk   	= 1;
	logic i_rst_n 	= 0;
	logic i_err 	= 0;

	reg	[4 : 0] i_hsk_ena 	= '1; 

	always #(dt / 2.0) i_clk = ~i_clk;

	initial begin

		i_rst_n = 1; #3;
		i_rst_n = 0;

	end

	if_axil #(
		.N(G_DATA_B), 
		.A(G_ADDR_W), 
		.PAYMASK(5'b01101)) m_axil ();

	typedef logic [G_ADDR_W-1:0] t_xaddr;
	typedef logic [C_DATA_W-1:0] t_xdata;

	task t_axil_m_init;
		begin
			m_axil.awvalid = '0;
			m_axil.awaddr  = '0;
			m_axil.wvalid  = '0;
			m_axil.wdata   = '0;
			m_axil.wstrb   = '0;
			m_axil.bready  = '1;
			m_axil.arvalid = '0;
			m_axil.araddr  = '0;
			m_axil.rready  = '1;
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
			m_axil.awaddr = ADDR;
			`MACRO_AXIL_HSK(m_axil, awready, awvalid);
		// write data
			m_axil.wdata = DATA;
			m_axil.wstrb = '1;
			`MACRO_AXIL_HSK(m_axil, wready, wvalid);
		// write response
			// `MACRO_AXIL_HSK(m_axil, bvalid, bready);

		end
	endtask : t_axil_m_wr

	task t_axil_m_rd;
		input  t_xaddr ADDR;
		begin

		// read address
			m_axil.araddr = ADDR;
			`MACRO_AXIL_HSK(m_axil, arready, arvalid);
		// read data
			// `MACRO_AXIL_HSK(m_axil, rvalid, rready);
		
		end
	endtask : t_axil_m_rd	

 	localparam t_xaddr	TST_ADDR1   = 'h01; 
    localparam t_xaddr 	TST_ADDR2	= 'h02;
	localparam t_xaddr  TST_ADDR3   = 'h03;
    localparam t_xaddr 	TST_ADDR4	= 'h04; 
	localparam t_xaddr  WRN_ADDR1   = 'h05;
    localparam t_xaddr 	WRN_ADDR2	= 'h06;
	localparam t_xaddr  WRN_ADDR3   = 'h07;
    localparam t_xaddr 	WRN_ADDR4	= 'h08;  

	initial begin

		t_axil_m_init; #10.9;

		i_err = 1;
		t_axil_m_wr(.ADDR(TST_ADDR1), .DATA(111)); 	#10;			// 1
		i_err = 0;				
		t_axil_m_wr(.ADDR(TST_ADDR2), .DATA(222)); 	#10;			// 2
		t_axil_m_wr(.ADDR(WRN_ADDR1), .DATA(333));	#10;			// 5
		t_axil_m_wr(.ADDR(WRN_ADDR2), .DATA(333)); 	#10;			// 6	
		t_axil_m_wr(.ADDR(TST_ADDR3), .DATA(333)); 	#10;			// 7

		t_axil_m_rd(.ADDR(TST_ADDR4)); 				#10;			// 8
		t_axil_m_rd(.ADDR(WRN_ADDR2)); 				#10;			// 9
		t_axil_m_rd(.ADDR(TST_ADDR1)); 				#10;			// 10

	end

    axil_fw_top u_axil_fw  (

        .i_clk      	(i_clk),
        .i_rst      	(i_rst_n),

		.i_err          (i_err),
        .i_hsk_ena      (i_hsk_ena),

        .s_axil     	(m_axil)

	);

endmodule : tb_axil_fw_top

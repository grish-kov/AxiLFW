`timescale 1ns / 1ps

module tb_axil_fw_top #(

	shortint 	G_ADDR_W = 32,						// 	AXIL xADDR bit width
	    		G_DATA_W = 32,                     	// 	AXIL xDATA number of bytes (B)
				G_WD_WDT = 8,						//	watchdog length width

	real dt = 1.0 							// clock period ns
	);

	logic 	i_clk   = 1,
			i_rst	= 1,
			i_err 	= 0;

	reg [G_WD_WDT - 1 : 0] i_len = 50;

	reg	[4 : 0] i_hsk_ena 	= '1; 

	always #(dt / 2.0) i_clk = ~i_clk;

	initial begin

		i_rst = 0; #3;
		i_rst = 1;

	end

	if_axil #(
		.N(G_DATA_W >> 3), 
		.A(G_ADDR_W), 
		.PAYMASK(5'b01101)) m_axil ();

	if_axil #(
		.N(G_DATA_W >> 3), 
		.A(G_ADDR_W), 
		.PAYMASK(5'b01101)) ctrl_axil ();

	typedef logic [G_ADDR_W - 1 : 0] t_xaddr;
	typedef logic [G_DATA_W - 1 : 0] t_xdata;

	t_xdata q_rd_data = 0;

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

	task t_axil_ctrl_init;
		begin
			ctrl_axil.awvalid = '0;
			ctrl_axil.awaddr  = '0;
			ctrl_axil.wvalid  = '0;
			ctrl_axil.wdata   = '0;
			ctrl_axil.wstrb   = '0;
			ctrl_axil.bready  = '1;
			ctrl_axil.arvalid = '0;
			ctrl_axil.araddr  = '0;
			ctrl_axil.rready  = '1;
		end
	endtask : t_axil_ctrl_init

	`define MACRO_AXIL_HSK(name, miso, mosi) \
		``name``.``mosi``= '1; \
		do begin \
			#(dt); \
		end while (!(``name``.``miso`` && ``name``.``mosi``)); \
		``name``.``mosi`` = '0; \

	task t_axil_m_wr;
		input t_xaddr ADDR;
		input t_xdata DATA;
		begin

		// write address
			m_axil.awvalid = 1;
			m_axil.awaddr = ADDR;
			#dt;
			m_axil.awvalid = 0;

		// write data
			#dt;
			m_axil.wvalid = 1;

			m_axil.wdata = DATA;
			m_axil.wstrb = '1;
			#dt;

			m_axil.wvalid = 0;
		// write response
			#dt;
			m_axil.bready = 0;
			#dt;
			m_axil.bready = 1;
		end
	endtask : t_axil_m_wr

	task t_axil_m_rd;
		input  t_xaddr ADDR;
		output  t_xdata DATA;
		begin
		// read address
			m_axil.arvalid = 1;
			m_axil.araddr = ADDR;
			#dt;
			m_axil.arvalid = 0;
		// read data
			#dt;
			m_axil.rready = 0;
			#dt;
			m_axil.rready = 1;
		
		end
	endtask : t_axil_m_rd	

	task t_axil_ctrl_rd;
		input  t_xaddr ADDR;
		begin
		// read address
			ctrl_axil.arvalid = 1;
			ctrl_axil.araddr = ADDR;
			#dt;
			ctrl_axil.arvalid = 0;
		// read data

			#dt;
			ctrl_axil.rready = 0;
			#dt;
			ctrl_axil.rready = 1;

		end
	endtask : t_axil_ctrl_rd	

 	localparam t_xaddr	TST_ADDR1  		= 'h100; 
    localparam t_xaddr 	TST_ADDR2		= 'h104;
	localparam t_xaddr  TST_ADDR3  		= 'h108;
    localparam t_xaddr 	TST_ADDR4		= 'h10c; 
	localparam t_xaddr  WRN_ADDR1  		= 'h105;
    localparam t_xaddr 	WRN_ADDR2		= 'h106;
	localparam t_xaddr  WRN_ADDR3  		= 'h107;
    localparam t_xaddr 	WRN_ADDR4		= 'h103;

	localparam t_xaddr	WR_SLVERR_ADDR	= 'h000;
	localparam t_xaddr	WR_DECERR_ADDR	= 'h004;
	localparam t_xaddr	WR_WD_ERR_ADDR	= 'h008;
	localparam t_xaddr	RD_SLVERR_ADDR	= 'h00c;
	localparam t_xaddr	RD_DECERR_ADDR	= 'h010;
	localparam t_xaddr	RD_WD_ERR_ADDR	= 'h014;
	localparam t_xaddr	RG_ST_ERR_ADDR	= 'h018;

	initial begin

		t_axil_ctrl_init;
		t_axil_m_init; #10;

		t_axil_m_wr(.ADDR(TST_ADDR1), .DATA('h111)); 	#10;			// 1
		t_axil_m_wr(.ADDR(TST_ADDR2), .DATA('h222)); 	#10;			// 2
		t_axil_m_wr(.ADDR(WRN_ADDR1), .DATA('h333));	#10;			// 5
		t_axil_m_wr(.ADDR(WRN_ADDR2), .DATA('h333)); 	#10;			// 6

		t_axil_m_rd(.ADDR(WRN_ADDR3), .DATA(q_rd_data)); 				#10;			// 7
		t_axil_m_rd(.ADDR(TST_ADDR2), .DATA(q_rd_data)); 				#10;			// 8
		t_axil_m_rd(.ADDR(WRN_ADDR3), .DATA(q_rd_data));				#10;			// 9
		t_axil_m_rd(.ADDR(WRN_ADDR4), .DATA(q_rd_data)); 				#10;			// 10

		// i_err = 1;
		// t_axil_m_wr(.ADDR(TST_ADDR1), .DATA('h214)); 	#10;			// 1
		// t_axil_m_wr(.ADDR(TST_ADDR2), .DATA('h421)); 	#10;			// 2

		// t_axil_m_rd(.ADDR(TST_ADDR3), .DATA(q_rd_data)); 				#10;			// 7
		// t_axil_m_rd(.ADDR(TST_ADDR4), .DATA(q_rd_data)); 				#10;			// 8

		// i_err = 0;

		// i_hsk_ena [1] = 0;

		// t_axil_m_wr(.ADDR(TST_ADDR1), .DATA('h123)); 	#50;			// 1
		// t_axil_m_wr(.ADDR(TST_ADDR2), .DATA('h321));					// 2
		// #20; i_hsk_ena[1] = 1;
		
		// #15; 

		t_axil_ctrl_rd(.ADDR(WR_SLVERR_ADDR));		#10;			// 1 wr err
		t_axil_ctrl_rd(.ADDR(WR_DECERR_ADDR));		#10;			// 2 wr err
		t_axil_ctrl_rd(.ADDR(WR_WD_ERR_ADDR));		#10;			// 3 wr err
		t_axil_ctrl_rd(.ADDR(RD_SLVERR_ADDR));		#10;			// 4 rd err
		t_axil_ctrl_rd(.ADDR(RD_DECERR_ADDR));		#10;			// 5 rd err
		t_axil_ctrl_rd(.ADDR(RD_WD_ERR_ADDR));		#10;			// 6 rd err
		t_axil_ctrl_rd(.ADDR(RG_ST_ERR_ADDR));		#10;			// 6 all err

		#15;


	end

    axil_fw_top#(

        .G_ADDR_W (G_ADDR_W),
        .G_DATA_W (G_DATA_W)
		
		) u_axil_fw  (

        .i_clk      	(i_clk),
        .i_rst      	(i_rst),
		.i_len			(i_len),

		.i_err          (i_err),
        .i_hsk_ena      (i_hsk_ena),

        .s_axil     	(m_axil),
		.ctrl_axil		(ctrl_axil)

	);

endmodule : tb_axil_fw_top

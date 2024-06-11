`timescale 1ns / 1ps

module axil_fw_top #(

    int G_ADDR_W = 4, 		        // AXIL xADDR bit width
	int G_DATA_B = 8 		        // AXIL xDATA number of bytes (B)

) (

    input           i_clk,          
                    i_rst,

        reg [1 : 0] i_err,
            [4 : 0] i_hsk_ena,          

    if_axil.s       s_axil         // Receive from Zynq

    );

    if_axil #(
		.N(G_DATA_B), 
		.A(G_ADDR_W), 
		.PAYMASK(5'b01101)
        ) m_axil ();

    axil_fw u_axil_fw(

        .i_clk              (i_clk),
        .i_rst              (i_rst),

        .s_axil             (s_axil),
        .m_axil             (m_axil)

    );

    fw_reg_map u_rg_map(

        .i_clk              (i_clk),
        .i_rst              (i_rst),
        .i_err              (i_err),
        .i_hsk_ena          (i_hsk_ena),

        .s_axil             (m_axil)

    );

endmodule : axil_fw_top

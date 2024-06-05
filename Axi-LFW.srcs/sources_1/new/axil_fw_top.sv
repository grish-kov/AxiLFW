`timescale 1ns / 1ps

module axil_fw_top #(

    int G_ADDR_W = 4, 		        // AXIL xADDR bit width
	int G_DATA_B = 4 		        // AXIL xDATA number of bytes (B)

) (

    input           i_clk,          //
                    i_rst,          //

    if_axil.s       s_axil,         // Receive from Zynq
    if_axil.m       m_axil          // Send to interconnect 

    );

    axil_fw u_axil_fw(

        .i_clk              (i_clk),
        .i_rst              (i_rst),

        .m_axil             (m_axil),
        .s_axil             (s_axil)

    );

endmodule : axil_fw_top

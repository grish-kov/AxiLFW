`timescale 1ns / 1ps

package axi;

  // AXI4-Lite assignment macros
  // Example: `AXIL_ASSIGN(assign, s_axil_, =, s_axil_); or `AXIL_ASSIGN(assign, m_axif_, =, m_axif.);
  `define AXIL_ASSIGN_WA(statement, lhs, operator, rhs) \
    statement ``lhs``awvalid operator ``rhs``awvalid; \
    statement ``rhs``awready operator ``lhs``awready; \
    statement ``lhs``awaddr operator ``rhs``awaddr; \
    statement ``lhs``awprot operator ``rhs``awprot;

  `define AXIL_ASSIGN_WD(statement, lhs, operator, rhs) \
    statement ``lhs``wvalid operator ``rhs``wvalid; \
    statement ``rhs``wready operator ``lhs``wready; \
    statement ``lhs``wdata operator ``rhs``wdata; \
    statement ``lhs``wstrb operator ``rhs``wstrb;

  `define AXIL_ASSIGN_WR(statement, lhs, operator, rhs) \
    statement ``lhs``bvalid operator ``rhs``bvalid; \
    statement ``rhs``bready operator ``lhs``bready; \
    statement ``lhs``bresp operator ``rhs``bresp;
    
  `define AXIL_ASSIGN_RA(statement, lhs, operator, rhs) \
    statement ``lhs``arvalid operator ``rhs``arvalid; \
    statement ``rhs``arready operator ``lhs``arready; \
    statement ``lhs``araddr operator ``rhs``araddr; \
    statement ``lhs``arprot operator ``rhs``arprot;

  `define AXIL_ASSIGN_RD(statement, lhs, operator, rhs) \
    statement ``lhs``rvalid operator ``rhs``rvalid; \
    statement ``rhs``rready operator ``lhs``rready; \
    statement ``lhs``rdata operator ``rhs``rdata; \
    statement ``lhs``rresp operator ``rhs``rresp;

  `define AXIL_ASSIGN_W(statement, lhs, operator, rhs) \
    `AXIL_ASSIGN_WA(statement, lhs, operator, rhs); \
    `AXIL_ASSIGN_WD(statement, lhs, operator, rhs); \
    `AXIL_ASSIGN_WR(statement, rhs, operator, lhs);
    
  `define AXIL_ASSIGN_R(statement, lhs, operator, rhs) \
    `AXIL_ASSIGN_RA(statement, lhs, operator, rhs); \
    `AXIL_ASSIGN_RD(statement, rhs, operator, lhs);

  `define AXIL_ASSIGN(statement, lhs, operator, rhs) \
    `AXIL_ASSIGN_W(statement, lhs, operator, rhs); \
    `AXIL_ASSIGN_R(statement, lhs, operator, rhs);
  
  // Types
  typedef logic [3:0] t_region;
  typedef logic [7:0] t_len;
  typedef logic [2:0] t_size;
  typedef logic [1:0] t_burst;
  typedef logic [0:0] t_lock;
  typedef logic [3:0] t_cache;
  typedef logic [2:0] t_prot;
  typedef logic [3:0] t_qos;
  typedef logic [1:0] t_resp;

  typedef logic [0:0] t_last;

  typedef struct packed { bit AWPROT, WSTRB, BRESP, ARPROT, RRESP; } t_axil_mask;

  // Constants
  localparam t_burst AXI_BURST_FIXED = 2'b00;
  localparam t_burst AXI_BURST_INCR = 2'b01;
  localparam t_burst AXI_BURST_WRAP = 2'b10;

  localparam t_resp AXI_RESP_OKAY = 2'b00;
  localparam t_resp AXI_RESP_EXOKAY = 2'b01;
  localparam t_resp AXI_RESP_SLVERR = 2'b10;
  localparam t_resp AXI_RESP_DECERR = 2'b11;
  
endpackage : axi

//  AXI4 Memory Mapped (lite) Parameters to Define the Signal Widths:
//    N - Data Bus Width in Bytes;
//    A - Address Width;
//    PAYMASK - Payload Mask: { awprot, wstrb, bresp, arprot, rresp }

interface if_axil #( parameter int N = 8, A = 16, bit [0:4] PAYMASK = '1 ) ();

  import axi::*;
  
  typedef logic [N * 8 - 1 : 0] t_data;
  typedef logic [N - 1 : 0] t_strb;
  typedef logic [A - 1 : 0] t_addr;

  // Check Parameters
  initial begin : check_param
    if ( !(N inside {4, 8, 16, 32}) )
      $error("[%s %0d-%0d] Write and read data bus width (%0d) in AXI4-Lite interface must be equal to 4, 8 or 16 bytes. %m", "AXI", 3, 1, N);
    if ( A < 1 || A > 64 )
      $error("[%s %0d-%0d] Write and read address bus width (%0d) in AXI4-Lite interface must be greater than or equal to 1 and less than or equal to 64. %m", "AXI", 3, 2, A);
  end : check_param

  // Write Address Channel Signals
  logic   awvalid;
  logic   awready;
  t_addr  awaddr;
  t_prot  awprot;

  // Write Data Channel Signals
  logic   wvalid;
  logic   wready;
  t_data  wdata;
  t_strb  wstrb;

  // Write Response Channel Signals
  logic   bvalid;
  logic   bready;
  t_resp  bresp;

  // Read Address Channel Signals
  logic   arvalid;
  logic   arready;
  t_addr  araddr;
  t_prot  arprot;

  // Read Data Channel Signals
  logic   rvalid;
  logic   rready;
  t_data  rdata;
  t_resp  rresp;

  typedef struct packed { bit AWPROT, WSTRB, BRESP, ARPROT, RRESP; } t_msk;

  localparam t_msk MASK = PAYMASK;

  // Write Address Payload
  localparam int WA_PAYLOAD = A + MASK.AWPROT*3;

  localparam int AWADDR_OFFSET = A;

  function logic [WA_PAYLOAD-1:0] wa_payload();
    wa_payload = awaddr;
    if ( MASK.AWPROT ) wa_payload = awprot << AWADDR_OFFSET | wa_payload;
  endfunction : wa_payload

  function void wa_paymask( input logic [WA_PAYLOAD-1:0] payload );
    awaddr = payload;
    awprot = ( MASK.AWPROT ) ? payload >> AWADDR_OFFSET : '0;
  endfunction : wa_paymask

  // Write Data Payload
  localparam int WD_PAYLOAD = N*8 + MASK.WSTRB*N;

  localparam int WDATA_OFFSET = N*8;

  function logic [WD_PAYLOAD-1:0] wd_payload();
    wd_payload = wdata;
    if ( MASK.WSTRB ) wd_payload = wstrb << WDATA_OFFSET | wd_payload;
  endfunction : wd_payload

  function void wd_paymask( input logic [WD_PAYLOAD-1:0] payload );
    wdata = payload;
    wstrb = ( MASK.WSTRB ) ? payload >> WDATA_OFFSET : '1;
  endfunction : wd_paymask

  // Write Response Payload
  localparam int WR_PAYLOAD = MASK.BRESP*2;

  function void wr_paymask( input logic [WR_PAYLOAD-1:0] payload );
    bresp = ( MASK.BRESP ) ? payload : AXI_RESP_OKAY;
  endfunction : wr_paymask

  function logic [WR_PAYLOAD-1:0] wr_payload();
    if ( MASK.BRESP ) wr_payload = bresp;
  endfunction : wr_payload

  // Read Address Payload
  localparam int RA_PAYLOAD = A + MASK.ARPROT*3;

  localparam int ARADDR_OFFSET = A;

  function logic [RA_PAYLOAD-1:0] ra_payload();
    ra_payload = araddr;
    if ( MASK.ARPROT ) ra_payload = arprot << ARADDR_OFFSET | ra_payload;
  endfunction : ra_payload

  function void ra_paymask( input logic [RA_PAYLOAD-1:0] payload );
    araddr = payload;
    arprot = ( MASK.ARPROT ) ? payload >> ARADDR_OFFSET : '0;
  endfunction : ra_paymask

  // Read Data Payload
  localparam int RD_PAYLOAD = N*8 + MASK.RRESP*2;

  localparam int RDATA_OFFSET = N*8;

  function void rd_paymask( input logic [RD_PAYLOAD-1:0] payload );
    rdata = payload;
    rresp = ( MASK.RRESP ) ? payload >> RDATA_OFFSET : AXI_RESP_OKAY;
  endfunction : rd_paymask

  function logic [RD_PAYLOAD-1:0] rd_payload();
    rd_payload = rdata;
    if ( MASK.RRESP ) rd_payload = rresp << RDATA_OFFSET | rd_payload;
  endfunction : rd_payload

  // AXI-Lite Payload
  localparam int PAYLOAD = WA_PAYLOAD + WD_PAYLOAD + WR_PAYLOAD + RA_PAYLOAD + RD_PAYLOAD;

  // Master Ports
  modport master (
    input awready, output awvalid, awaddr, awprot, 
    input wready, output wvalid, wdata, wstrb, 
    output bready, input bvalid, bresp, 
    input arready, output arvalid, araddr, arprot, 
    output rready, input rvalid, rdata, rresp, 
    import wa_paymask, import wd_paymask, import wr_payload, import ra_paymask, import rd_payload 
  );

  // Slave Ports
  modport slave (
    output awready, input awvalid, awaddr, awprot, 
    output wready, input wvalid, wdata, wstrb, 
    input bready, output bvalid, bresp, 
    output arready, input arvalid, araddr, arprot, 
    input rready, output rvalid, rdata, rresp, 
    import wa_payload, import wd_payload, import wr_paymask, import ra_payload, import rd_paymask
  );

endinterface : if_axil

module axil_fw_top #(

    shortint  G_ADDR_W = 32, 		            //  AXIL xADDR bit width
              G_WD_WDT = 8,                 //  watchdog length width
              G_DATA_W = 32                 //  AXIL xDATA bit width

) (

    input           i_clk,          
                    i_rst,
        reg [G_WD_WDT - 1 : 0]     i_len,

        reg         i_err,
            [4 : 0] i_hsk_ena,          

    if_axil.slave       s_axil,         //  receive from Zynq
    if_axil.slave       ctrl_axil       //  control fw 

    );

    if_axil #(

      .N(G_DATA_W), 
      .A(G_ADDR_W), 
      .PAYMASK(5'b01101)

      ) m_axil ();

    axil_fw u_fw (

        .i_clk                          (i_clk),                  //  input wire i_clk
        .aresetn                          (i_rst),                  //  input wire i_rst
        .i_len                          (i_len),
          
        .m_axil_awready                 (m_axil.awready),         //  input wire m_axil_awready
        .m_axil_awvalid                 (m_axil.awvalid),         //  output wire m_axil_awvalid
        .m_axil_awaddr                  (m_axil.awaddr),          //  output wire [7 : 0] m_axil_awaddr
        .m_axil_awprot                  (m_axil.awprot),          //  output wire [2 : 0] m_axil_awprot
        .m_axil_wready                  (m_axil.wready),          //  input wire m_axil_wready
        .m_axil_wvalid                  (m_axil.wvalid),          //  output wire m_axil_wvalid
        .m_axil_wdata                   (m_axil.wdata),           //  output wire [63 : 0] m_axil_wdata
        .m_axil_wstrb                   (m_axil.wstrb),           //  output wire [7 : 0] m_axil_wstrb
        .m_axil_bready                  (m_axil.bready),          //  output wire m_axil_bready
        .m_axil_bvalid                  (m_axil.bvalid),          //  input wire m_axil_bvalid
        .m_axil_bresp                   (m_axil.bresp),           //  input wire [1 : 0] m_axil_bresp
        .m_axil_arready                 (m_axil.arready),         //  input wire m_axil_arready
        .m_axil_arvalid                 (m_axil.arvalid),         //  output wire m_axil_arvalid
        .m_axil_araddr                  (m_axil.araddr),          //  output wire [7 : 0] m_axil_araddr
        .m_axil_arprot                  (m_axil.arprot),          //  output wire [2 : 0] m_axil_arprot
        .m_axil_rready                  (m_axil.rready),          //  output wire m_axil_rready
        .m_axil_rvalid                  (m_axil.rvalid),          //  input wire m_axil_rvalid
        .m_axil_rdata                   (m_axil.rdata),           //  input wire [63 : 0] m_axil_rdata
        .m_axil_rresp                   (m_axil.rresp),           //  input wire [1 : 0] m_axil_rresp
          
        .s_axil_awready                 (s_axil.awready),         //  output wire s_axil_awready
        .s_axil_awvalid                 (s_axil.awvalid),         //  input wire s_axil_awvalid
        .s_axil_awaddr                  (s_axil.awaddr),          //  input wire [7 : 0] s_axil_awaddr
        .s_axil_awprot                  (s_axil.awprot),          //  input wire [2 : 0] s_axil_awprot
        .s_axil_wready                  (s_axil.wready),          //  output wire s_axil_wready
        .s_axil_wvalid                  (s_axil.wvalid),          //  input wire s_axil_wvalid
        .s_axil_wdata                   (s_axil.wdata),           //  input wire [63 : 0] s_axil_wdata
        .s_axil_wstrb                   (s_axil.wstrb),           //  input wire [7 : 0] s_axil_wstrb
        .s_axil_bready                  (s_axil.bready),          //  input wire s_axil_bready
        .s_axil_bvalid                  (s_axil.bvalid),          //  output wire s_axil_bvalid
        .s_axil_bresp                   (s_axil.bresp),           //  output wire [1 : 0] s_axil_bresp
        .s_axil_arready                 (s_axil.arready),         //  output wire s_axil_arready
        .s_axil_arvalid                 (s_axil.arvalid),         //  input wire s_axil_arvalid
        .s_axil_araddr                  (s_axil.araddr),          //  input wire [7 : 0] s_axil_araddr
        .s_axil_arprot                  (s_axil.arprot),          //  input wire [2 : 0] s_axil_arprot
        .s_axil_rready                  (s_axil.rready),          //  input wire s_axil_rready
        .s_axil_rvalid                  (s_axil.rvalid),          //  output wire s_axil_rvalid
        .s_axil_rdata                   (s_axil.rdata),           //  output wire [63 : 0] s_axil_rdata
        .s_axil_rresp                   (s_axil.rresp),           //  output wire [1 : 0] s_axil_rresp

        .ctrl_axil_awready                 (ctrl_axil.awready),   //  output wire s_axil_awready
        .ctrl_axil_awvalid                 (ctrl_axil.awvalid),   //  input wire s_axil_awvalid
        .ctrl_axil_awaddr                  (ctrl_axil.awaddr),    //  input wire [7 : 0] s_axil_awaddr
        .ctrl_axil_awprot                  (ctrl_axil.awprot),    //  input wire [2 : 0] s_axil_awprot
        .ctrl_axil_wready                  (ctrl_axil.wready),    //  output wire s_axil_wready
        .ctrl_axil_wvalid                  (ctrl_axil.wvalid),    //  input wire s_axil_wvalid
        .ctrl_axil_wdata                   (ctrl_axil.wdata),     //  input wire [63 : 0] s_axil_wdata
        .ctrl_axil_wstrb                   (ctrl_axil.wstrb),     //  input wire [7 : 0] s_axil_wstrb
        .ctrl_axil_bready                  (ctrl_axil.bready),    //  input wire s_axil_bready
        .ctrl_axil_bvalid                  (ctrl_axil.bvalid),    //  output wire s_axil_bvalid
        .ctrl_axil_bresp                   (ctrl_axil.bresp),     //  output wire [1 : 0] s_axil_bresp
        .ctrl_axil_arready                 (ctrl_axil.arready),   //  output wire s_axil_arready
        .ctrl_axil_arvalid                 (ctrl_axil.arvalid),   //  input wire s_axil_arvalid
        .ctrl_axil_araddr                  (ctrl_axil.araddr),    //  input wire [7 : 0] s_axil_araddr
        .ctrl_axil_arprot                  (ctrl_axil.arprot),    //  input wire [2 : 0] s_axil_arprot
        .ctrl_axil_rready                  (ctrl_axil.rready),    //  input wire s_axil_rready
        .ctrl_axil_rvalid                  (ctrl_axil.rvalid),    //  output wire s_axil_rvalid
        .ctrl_axil_rdata                   (ctrl_axil.rdata),     //  output wire [63 : 0] s_axil_rdata
        .ctrl_axil_rresp                   (ctrl_axil.rresp)      //  output wire [1 : 0] s_axil_rresp
        
);

    myip_0 u_rg_map(

        .s00_axi_aclk(i_clk),      
        .s00_axi_aresetn(i_rst),
        .i_err              (i_err),
        .i_hsk_ena          (i_hsk_ena),

        .s00_axi_awready                 (m_axil.awready),         //  output wire s_axil_awready
        .s00_axi_awvalid                 (m_axil.awvalid),         //  input wire s_axil_awvalid
        .s00_axi_awaddr                  (m_axil.awaddr),          //  input wire [7 : 0] s_axil_awaddr
        .s00_axi_awprot                  (m_axil.awprot),          //  input wire [2 : 0] s_axil_awprot
        .s00_axi_wready                  (m_axil.wready),          //  output wire s_axil_wready
        .s00_axi_wvalid                  (m_axil.wvalid),          //  input wire s_axil_wvalid
        .s00_axi_wdata                   (m_axil.wdata),           //  input wire [63 : 0] s_axil_wdata
        .s00_axi_wstrb                   (m_axil.wstrb),           //  input wire [7 : 0] s_axil_wstrb
        .s00_axi_bready                  (m_axil.bready),          //  input wire s_axil_bready
        .s00_axi_bvalid                  (m_axil.bvalid),          //  output wire s_axil_bvalid
        .s00_axi_bresp                   (m_axil.bresp),           //  output wire [1 : 0] s_axil_bresp
        .s00_axi_arready                 (m_axil.arready),         //  output wire s_axil_arready
        .s00_axi_arvalid                 (m_axil.arvalid),         //  input wire s_axil_arvalid
        .s00_axi_araddr                  (m_axil.araddr),          //  input wire [7 : 0] s_axil_araddr
        .s00_axi_arprot                  (m_axil.arprot),          //  input wire [2 : 0] s_axil_arprot
        .s00_axi_rready                  (m_axil.rready),          //  input wire s_axil_rready
        .s00_axi_rvalid                  (m_axil.rvalid),          //  output wire s_axil_rvalid
        .s00_axi_rdata                   (m_axil.rdata),           //  output wire [63 : 0] s_axil_rdata
        .s00_axi_rresp                   (m_axil.rresp)            //  output wire [1 : 0] s_axil_rresp

    );

endmodule : axil_fw_top
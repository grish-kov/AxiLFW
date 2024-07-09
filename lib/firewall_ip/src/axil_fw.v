`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2024 04:30:04 PM
// Design Name: 
// Module Name: axil_fw
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module axil_fw #(

    integer        G_CNT_WDT       = 4,                //  counter width
                    G_ADDR_W        = 20,               //  AXIL xADDR width
                    G_DATA_W        = 32,               //  AXIL xDATA byte width
                    G_WD_WDT        = 8,                //  watchdog timer len        
    
    //  addresses of errors in wiremap

    integer C_ADDR_W = 5,                   //  local xADDR width

    integer G_CTRL_ADDR_W = 5,

    reg [C_ADDR_W - 1 : 0]  G_WR_SLVERR_ADDR    = 'h00,
                            G_WR_DECERR_ADDR    = 'h04,
                            G_WR_WD_ERR_ADDR    = 'h08,
                            G_RD_SLVERR_ADDR    = 'h0c,
                            G_RD_DECERR_ADDR    = 'h10,
                            G_RD_WD_ERR_ADDR    = 'h14,
                            G_RG_ST_ERR_ADDR    = 'h18
    
)(

    input                   i_clk,                      //  clock
                            aresetn,                      //  reset, active - high
    [G_WD_WDT - 1 : 0]      i_len,                      //  WD counter max value

    //  axi-lite master ports

    input   wire m_axil_awready,  output  wire m_axil_awvalid,  wire [G_ADDR_W - 1 : 0]  m_axil_awaddr,   wire  [2 : 0]                     m_axil_awprot,                      //  write addr
    input   wire m_axil_wready,   output  wire m_axil_wvalid,   wire [G_DATA_W - 1 : 0]  m_axil_wdata,    wire    [(G_DATA_W >> 3) - 1 : 0]     m_axil_wstrb,                       //  write data
    output  wire m_axil_bready,   input   wire m_axil_bvalid,   wire [1 : 0]             m_axil_bresp,                                                                           //  write resp
    input   wire m_axil_arready,  output  wire m_axil_arvalid,  wire [G_ADDR_W - 1 : 0]  m_axil_araddr,   wire  [2 : 0]                     m_axil_arprot,                      //  read addr
    output  wire m_axil_rready,   input   wire m_axil_rvalid,   wire [G_DATA_W - 1 : 0]  m_axil_rdata,    wire    [1 : 0]                     m_axil_rresp,                       //  read data & resp

    // axi-lite slave ports

    output  wire s_axil_awready,  input   wire s_axil_awvalid,  wire [G_ADDR_W - 1 : 0]  s_axil_awaddr,   wire  [2 : 0]                     s_axil_awprot,                      //  write addr
    output  wire s_axil_wready,   input   wire s_axil_wvalid,   wire [G_DATA_W - 1 : 0]  s_axil_wdata,    wire    [(G_DATA_W >> 3) - 1 : 0]     s_axil_wstrb,                       //  write data 
    input   wire s_axil_bready,   output  wire  s_axil_bvalid,   wire [1 : 0]             s_axil_bresp,                                                                           //  write resp 
    output  wire s_axil_arready,  input   wire s_axil_arvalid,  wire [G_ADDR_W - 1 : 0]  s_axil_araddr,   wire  [2 : 0]                     s_axil_arprot,                      //  read addr 
    input   wire s_axil_rready,   output  wire  s_axil_rvalid,   wire [G_DATA_W - 1 : 0]  s_axil_rdata,    wire    [1 : 0]                     s_axil_rresp,                       //  read data & resp

    //  axi-lite control slave ports

    output  wire  ctrl_axil_awready,  input   wire ctrl_axil_awvalid,  wire [G_CTRL_ADDR_W - 1 : 0]  ctrl_axil_awaddr,   wire  [2 : 0]                    ctrl_axil_awprot,           //  write addr
    output  wire  ctrl_axil_wready,   input   wire ctrl_axil_wvalid,   wire [G_DATA_W - 1 : 0]  ctrl_axil_wdata,    wire    [(G_DATA_W >> 3) - 1 : 0]    ctrl_axil_wstrb,            //  write data 
    input   wire ctrl_axil_bready,   output  wire  ctrl_axil_bvalid,   wire [1 : 0]             ctrl_axil_bresp,                                                                  //  write resp 
    output  wire  ctrl_axil_arready,  input   wire ctrl_axil_arvalid,  wire [G_CTRL_ADDR_W - 1 : 0]  ctrl_axil_araddr,   wire  [2 : 0]                    ctrl_axil_arprot,           //  read addr 
    input   wire ctrl_axil_rready,   output  wire  ctrl_axil_rvalid,   wire [G_DATA_W - 1 : 0]  ctrl_axil_rdata,    wire    [1 : 0]                    ctrl_axil_rresp             //  read data & resp


    );
    
    
    axil_fw (
    
    
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
    
    
endmodule

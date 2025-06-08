
`timescale 1 ns / 1 ps

module AXI_Lite #
(
    parameter integer C_S_AXI_DATA_WIDTH  = 32,
    parameter integer C_S_AXI_ADDR_WIDTH  = 16
)
(
    input   wire                                S_AXI_ACLK,
    input   wire                                S_AXI_ARESETN,
    input   wire [C_S_AXI_ADDR_WIDTH-1 : 0]     S_AXI_AWADDR,
    input   wire [2 : 0]                        S_AXI_AWPROT,
    input   wire                                S_AXI_AWVALID,
    output  wire                                S_AXI_AWREADY,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     S_AXI_WDATA,
    input   wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
    input   wire                                S_AXI_WVALID,
    output  wire                                S_AXI_WREADY,
    output  wire [1 : 0]                        S_AXI_BRESP,
    output  wire                                S_AXI_BVALID,
    input   wire                                S_AXI_BREADY,
    input   wire [C_S_AXI_ADDR_WIDTH-1 : 0]     S_AXI_ARADDR,
    input   wire [2 : 0]                        S_AXI_ARPROT,
    input   wire                                S_AXI_ARVALID,
    output  wire                                S_AXI_ARREADY,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     S_AXI_RDATA,
    output  wire [1 : 0]                        S_AXI_RRESP,
    output  wire                                S_AXI_RVALID,
    input   wire                                S_AXI_RREADY,

    // Reg In
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_0,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_1,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_2,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_3,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_4,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_5,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_6,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_7,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_8,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_9,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_10,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_11,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_12,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_13,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_14,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_15,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_16,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_17,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_18,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_19,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_20,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_21,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_22,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_23,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_24,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_25,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_26,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_27,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_28,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_29,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_30,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_31,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_32,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_33,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_34,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_35,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_36,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_37,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_38,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_39,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_40,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_41,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_42,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_43,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_44,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_45,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_46,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_47,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_48,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_49,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_50,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_51,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_52,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_53,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_54,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_55,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_56,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_57,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_58,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_59,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_60,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_61,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_62,
    input   wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_In_63,
    // Reg Out
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_0,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_1,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_2,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_3,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_4,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_5,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_6,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_7,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_8,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_9,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_10,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_11,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_12,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_13,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_14,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_15,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_16,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_17,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_18,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_19,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_20,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_21,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_22,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_23,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_24,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_25,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_26,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_27,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_28,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_29,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_30,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_31,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_32,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_33,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_34,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_35,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_36,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_37,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_38,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_39,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_40,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_41,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_42,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_43,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_44,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_45,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_46,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_47,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_48,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_49,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_50,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_51,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_52,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_53,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_54,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_55,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_56,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_57,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_58,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_59,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_60,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_61,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_62,
    output  wire [C_S_AXI_DATA_WIDTH-1 : 0]     Data_Out_63
);

reg [C_S_AXI_ADDR_WIDTH-1 : 0]    axi_awaddr;
reg                               axi_awready;
reg                               axi_wready;
reg [1 : 0]                       axi_bresp;
reg                               axi_bvalid;
reg [C_S_AXI_ADDR_WIDTH-1 : 0]    axi_araddr;
reg                               axi_arready;
reg [C_S_AXI_DATA_WIDTH-1 : 0]    axi_rdata;
reg [1 : 0]                       axi_rresp;
reg                               axi_rvalid;

localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
localparam integer OPT_MEM_ADDR_BITS = 8;

reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg0;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg1;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg2;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg3;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg4;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg5;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg6;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg7;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg8;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg9;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg10;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg11;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg12;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg13;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg14;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg15;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg16;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg17;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg18;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg19;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg20;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg21;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg22;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg23;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg24;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg25;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg26;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg27;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg28;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg29;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg30;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg31;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg32;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg33;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg34;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg35;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg36;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg37;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg38;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg39;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg40;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg41;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg42;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg43;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg44;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg45;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg46;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg47;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg48;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg49;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg50;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg51;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg52;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg53;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg54;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg55;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg56;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg57;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg58;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg59;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg60;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg61;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg62;
reg [C_S_AXI_DATA_WIDTH-1:0]  slv_reg63;

wire                          slv_reg_rden;
wire                          slv_reg_wren;

reg [C_S_AXI_DATA_WIDTH-1:0]  reg_data_out;
integer  byte_index;

assign S_AXI_AWREADY  = axi_awready;
assign S_AXI_WREADY   = axi_wready;
assign S_AXI_BRESP    = axi_bresp;
assign S_AXI_BVALID   = axi_bvalid;
assign S_AXI_ARREADY  = axi_arready;
assign S_AXI_RDATA    = axi_rdata;
assign S_AXI_RRESP    = axi_rresp;
assign S_AXI_RVALID   = axi_rvalid;

always @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN) begin
    if (!S_AXI_ARESETN) begin
        axi_awready <= 1'b0;
    end
    else begin
        if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID) begin
            axi_awready <= 1'b1;
        end
        else begin
            axi_awready <= 1'b0;
        end
    end
end

always @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN) begin
    if (!S_AXI_ARESETN) begin
        axi_awaddr <= 0;
    end
    else if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID) begin
        axi_awaddr <= S_AXI_AWADDR;
    end
end

always @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN) begin
    if (!S_AXI_ARESETN) begin
        axi_wready <= 1'b0;
    end
    else begin
        if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID) begin
            axi_wready <= 1'b1;
        end
        else begin
            axi_wready <= 1'b0;
        end
    end
end

assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

always @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN) begin
    if (!S_AXI_ARESETN) begin
        slv_reg0 <= 0;
        slv_reg1 <= 0;
        slv_reg2 <= 0;
        slv_reg3 <= 0;
        slv_reg4 <= 0;
        slv_reg5 <= 0;
        slv_reg6 <= 0;
        slv_reg7 <= 0;
        slv_reg8 <= 0;
        slv_reg9 <= 0;
        slv_reg10 <= 0;
        slv_reg11 <= 0;
        slv_reg12 <= 0;
        slv_reg13 <= 0;
        slv_reg14 <= 0;
        slv_reg15 <= 0;
        slv_reg16 <= 0;
        slv_reg17 <= 0;
        slv_reg18 <= 0;
        slv_reg19 <= 0;
        slv_reg20 <= 0;
        slv_reg21 <= 0;
        slv_reg22 <= 0;
        slv_reg23 <= 0;
        slv_reg24 <= 0;
        slv_reg25 <= 0;
        slv_reg26 <= 0;
        slv_reg27 <= 0;
        slv_reg28 <= 0;
        slv_reg29 <= 0;
        slv_reg30 <= 0;
        slv_reg31 <= 0;
        slv_reg32 <= 0;
        slv_reg33 <= 0;
        slv_reg34 <= 0;
        slv_reg35 <= 0;
        slv_reg36 <= 0;
        slv_reg37 <= 0;
        slv_reg38 <= 0;
        slv_reg39 <= 0;
        slv_reg40 <= 0;
        slv_reg41 <= 0;
        slv_reg42 <= 0;
        slv_reg43 <= 0;
        slv_reg44 <= 0;
        slv_reg45 <= 0;
        slv_reg46 <= 0;
        slv_reg47 <= 0;
        slv_reg48 <= 0;
        slv_reg49 <= 0;
        slv_reg50 <= 0;
        slv_reg51 <= 0;
        slv_reg52 <= 0;
        slv_reg53 <= 0;
        slv_reg54 <= 0;
        slv_reg55 <= 0;
        slv_reg56 <= 0;
        slv_reg57 <= 0;
        slv_reg58 <= 0;
        slv_reg59 <= 0;
        slv_reg60 <= 0;
        slv_reg61 <= 0;
        slv_reg62 <= 0;
        slv_reg63 <= 0;
    end
    else begin
        if (slv_reg_wren) begin
            case (axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS-1:ADDR_LSB])
                8'd0:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd1:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd2:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd3:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd4:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg4[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd5:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg5[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd6:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg6[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd7:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg7[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd8:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg8[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd9:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg9[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd10:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg10[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd11:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg11[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd12:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg12[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd13:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg13[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd14:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg14[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd15:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg15[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd16:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg16[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd17:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg17[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd18:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg18[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd19:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg19[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd20:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg20[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd21:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg21[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd22:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg22[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd23:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg23[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd24:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg24[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd25:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg25[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd26:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg26[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd27:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg27[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd28:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg28[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd29:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg29[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd30:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg30[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd31:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg31[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd32:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg32[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd33:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg33[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd34:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg34[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd35:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg35[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd36:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg36[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd37:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg37[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd38:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg38[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd39:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg39[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd40:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg40[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd41:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg41[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd42:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg42[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd43:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg43[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd44:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg44[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd45:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg45[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd46:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg46[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd47:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg47[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd48:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg48[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd49:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg49[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd50:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg50[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd51:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg51[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd52:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg52[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd53:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg53[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd54:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg54[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd55:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg55[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd56:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg56[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd57:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg57[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd58:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg58[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd59:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg59[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd60:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg60[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd61:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg61[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd62:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg62[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end
                8'd63:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1) begin
                            slv_reg63[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        end

                default:
                    begin
                        slv_reg0  <= slv_reg0;
                        slv_reg1  <= slv_reg1;
                        slv_reg2  <= slv_reg2;
                        slv_reg3  <= slv_reg3;
                        slv_reg4  <= slv_reg4;
                        slv_reg5  <= slv_reg5;
                        slv_reg6  <= slv_reg6;
                        slv_reg7  <= slv_reg7;
                        slv_reg8  <= slv_reg8;
                        slv_reg9  <= slv_reg9;
                        slv_reg10 <= slv_reg10;
                        slv_reg11 <= slv_reg11;
                        slv_reg12 <= slv_reg12;
                        slv_reg13 <= slv_reg13;
                        slv_reg14 <= slv_reg14;
                        slv_reg15 <= slv_reg15;
                        slv_reg16 <= slv_reg16;
                        slv_reg17 <= slv_reg17;
                        slv_reg18 <= slv_reg18;
                        slv_reg19 <= slv_reg19;
                        slv_reg20 <= slv_reg20;
                        slv_reg21 <= slv_reg21;
                        slv_reg22 <= slv_reg22;
                        slv_reg23 <= slv_reg23;
                        slv_reg24 <= slv_reg24;
                        slv_reg25 <= slv_reg25;
                        slv_reg26 <= slv_reg26;
                        slv_reg27 <= slv_reg27;
                        slv_reg28 <= slv_reg28;
                        slv_reg29 <= slv_reg29;
                        slv_reg30 <= slv_reg30;
                        slv_reg31 <= slv_reg31;
                        slv_reg32 <= slv_reg32;
                        slv_reg33 <= slv_reg33;
                        slv_reg34 <= slv_reg34;
                        slv_reg35 <= slv_reg35;
                        slv_reg36 <= slv_reg36;
                        slv_reg37 <= slv_reg37;
                        slv_reg38 <= slv_reg38;
                        slv_reg39 <= slv_reg39;
                        slv_reg40 <= slv_reg40;
                        slv_reg41 <= slv_reg41;
                        slv_reg42 <= slv_reg42;
                        slv_reg43 <= slv_reg43;
                        slv_reg44 <= slv_reg44;
                        slv_reg45 <= slv_reg45;
                        slv_reg46 <= slv_reg46;
                        slv_reg47 <= slv_reg47;
                        slv_reg48 <= slv_reg48;
                        slv_reg49 <= slv_reg49;
                        slv_reg50 <= slv_reg50;
                        slv_reg51 <= slv_reg51;
                        slv_reg52 <= slv_reg52;
                        slv_reg53 <= slv_reg53;
                        slv_reg54 <= slv_reg54;
                        slv_reg55 <= slv_reg55;
                        slv_reg56 <= slv_reg56;
                        slv_reg57 <= slv_reg57;
                        slv_reg58 <= slv_reg58;
                        slv_reg59 <= slv_reg59;
                        slv_reg60 <= slv_reg60;
                        slv_reg61 <= slv_reg61;
                        slv_reg62 <= slv_reg62;
                        slv_reg63 <= slv_reg63;
                    end
            endcase
        end
    end
end

always @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN) begin
    if (!S_AXI_ARESETN) begin
        axi_bvalid  <= 0;
        axi_bresp   <= 2'b0;
    end
    else begin
        if (~axi_bvalid && slv_reg_wren) begin
            axi_bvalid <= 1'b1;
            axi_bresp  <= 2'b0;
        end
        else if (S_AXI_BREADY && axi_bvalid) begin
            axi_bvalid <= 1'b0;
        end
    end
end

assign Data_Out_0 = slv_reg0;
assign Data_Out_1 = slv_reg1;
assign Data_Out_2 = slv_reg2;
assign Data_Out_3 = slv_reg3;
assign Data_Out_4 = slv_reg4;
assign Data_Out_5 = slv_reg5;
assign Data_Out_6 = slv_reg6;
assign Data_Out_7 = slv_reg7;
assign Data_Out_8 = slv_reg8;
assign Data_Out_9 = slv_reg9;
assign Data_Out_10 = slv_reg10;
assign Data_Out_11 = slv_reg11;
assign Data_Out_12 = slv_reg12;
assign Data_Out_13 = slv_reg13;
assign Data_Out_14 = slv_reg14;
assign Data_Out_15 = slv_reg15;
assign Data_Out_16 = slv_reg16;
assign Data_Out_17 = slv_reg17;
assign Data_Out_18 = slv_reg18;
assign Data_Out_19 = slv_reg19;
assign Data_Out_20 = slv_reg20;
assign Data_Out_21 = slv_reg21;
assign Data_Out_22 = slv_reg22;
assign Data_Out_23 = slv_reg23;
assign Data_Out_24 = slv_reg24;
assign Data_Out_25 = slv_reg25;
assign Data_Out_26 = slv_reg26;
assign Data_Out_27 = slv_reg27;
assign Data_Out_28 = slv_reg28;
assign Data_Out_29 = slv_reg29;
assign Data_Out_30 = slv_reg30;
assign Data_Out_31 = slv_reg31;
assign Data_Out_32 = slv_reg32;
assign Data_Out_33 = slv_reg33;
assign Data_Out_34 = slv_reg34;
assign Data_Out_35 = slv_reg35;
assign Data_Out_36 = slv_reg36;
assign Data_Out_37 = slv_reg37;
assign Data_Out_38 = slv_reg38;
assign Data_Out_39 = slv_reg39;
assign Data_Out_40 = slv_reg40;
assign Data_Out_41 = slv_reg41;
assign Data_Out_42 = slv_reg42;
assign Data_Out_43 = slv_reg43;
assign Data_Out_44 = slv_reg44;
assign Data_Out_45 = slv_reg45;
assign Data_Out_46 = slv_reg46;
assign Data_Out_47 = slv_reg47;
assign Data_Out_48 = slv_reg48;
assign Data_Out_49 = slv_reg49;
assign Data_Out_50 = slv_reg50;
assign Data_Out_51 = slv_reg51;
assign Data_Out_52 = slv_reg52;
assign Data_Out_53 = slv_reg53;
assign Data_Out_54 = slv_reg54;
assign Data_Out_55 = slv_reg55;
assign Data_Out_56 = slv_reg56;
assign Data_Out_57 = slv_reg57;
assign Data_Out_58 = slv_reg58;
assign Data_Out_59 = slv_reg59;
assign Data_Out_60 = slv_reg60;
assign Data_Out_61 = slv_reg61;
assign Data_Out_62 = slv_reg62;
assign Data_Out_63 = slv_reg63;

always @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN) begin
    if (!S_AXI_ARESETN) begin
        axi_arready <= 1'b0;
        axi_araddr  <= 32'b0;
    end
    else begin
        if (~axi_arready && S_AXI_ARVALID) begin
            axi_arready <= 1'b1;
            axi_araddr  <= S_AXI_ARADDR;
        end
        else begin
            axi_arready <= 1'b0;
        end
    end
end

always @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN) begin
    if (!S_AXI_ARESETN) begin
        axi_rvalid <= 0;
        axi_rresp  <= 0;
    end
    else begin
        if (axi_arready && S_AXI_ARVALID && ~axi_rvalid) begin
            axi_rvalid <= 1'b1;
            axi_rresp  <= 2'b0;
        end
        else if (axi_rvalid && S_AXI_RREADY) begin
            axi_rvalid <= 1'b0;
        end
    end
end

assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;

always @(*) begin
    case (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS-1:ADDR_LSB])
        8'd0: reg_data_out <= slv_reg0;
        8'd1: reg_data_out <= slv_reg1;
        8'd2: reg_data_out <= slv_reg2;
        8'd3: reg_data_out <= slv_reg3;
        8'd4: reg_data_out <= slv_reg4;
        8'd5: reg_data_out <= slv_reg5;
        8'd6: reg_data_out <= slv_reg6;
        8'd7: reg_data_out <= slv_reg7;
        8'd8: reg_data_out <= slv_reg8;
        8'd9: reg_data_out <= slv_reg9;
        8'd10: reg_data_out <= slv_reg10;
        8'd11: reg_data_out <= slv_reg11;
        8'd12: reg_data_out <= slv_reg12;
        8'd13: reg_data_out <= slv_reg13;
        8'd14: reg_data_out <= slv_reg14;
        8'd15: reg_data_out <= slv_reg15;
        8'd16: reg_data_out <= slv_reg16;
        8'd17: reg_data_out <= slv_reg17;
        8'd18: reg_data_out <= slv_reg18;
        8'd19: reg_data_out <= slv_reg19;
        8'd20: reg_data_out <= slv_reg20;
        8'd21: reg_data_out <= slv_reg21;
        8'd22: reg_data_out <= slv_reg22;
        8'd23: reg_data_out <= slv_reg23;
        8'd24: reg_data_out <= slv_reg24;
        8'd25: reg_data_out <= slv_reg25;
        8'd26: reg_data_out <= slv_reg26;
        8'd27: reg_data_out <= slv_reg27;
        8'd28: reg_data_out <= slv_reg28;
        8'd29: reg_data_out <= slv_reg29;
        8'd30: reg_data_out <= slv_reg30;
        8'd31: reg_data_out <= slv_reg31;
        8'd32: reg_data_out <= slv_reg32;
        8'd33: reg_data_out <= slv_reg33;
        8'd34: reg_data_out <= slv_reg34;
        8'd35: reg_data_out <= slv_reg35;
        8'd36: reg_data_out <= slv_reg36;
        8'd37: reg_data_out <= slv_reg37;
        8'd38: reg_data_out <= slv_reg38;
        8'd39: reg_data_out <= slv_reg39;
        8'd40: reg_data_out <= slv_reg40;
        8'd41: reg_data_out <= slv_reg41;
        8'd42: reg_data_out <= slv_reg42;
        8'd43: reg_data_out <= slv_reg43;
        8'd44: reg_data_out <= slv_reg44;
        8'd45: reg_data_out <= slv_reg45;
        8'd46: reg_data_out <= slv_reg46;
        8'd47: reg_data_out <= slv_reg47;
        8'd48: reg_data_out <= slv_reg48;
        8'd49: reg_data_out <= slv_reg49;
        8'd50: reg_data_out <= slv_reg50;
        8'd51: reg_data_out <= slv_reg51;
        8'd52: reg_data_out <= slv_reg52;
        8'd53: reg_data_out <= slv_reg53;
        8'd54: reg_data_out <= slv_reg54;
        8'd55: reg_data_out <= slv_reg55;
        8'd56: reg_data_out <= slv_reg56;
        8'd57: reg_data_out <= slv_reg57;
        8'd58: reg_data_out <= slv_reg58;
        8'd59: reg_data_out <= slv_reg59;
        8'd60: reg_data_out <= slv_reg60;
        8'd61: reg_data_out <= slv_reg61;
        8'd62: reg_data_out <= slv_reg62;
        8'd63: reg_data_out <= slv_reg63;

        8'd100: reg_data_out <= Data_In_0;
        8'd101: reg_data_out <= Data_In_1;
        8'd102: reg_data_out <= Data_In_2;
        8'd103: reg_data_out <= Data_In_3;
        8'd104: reg_data_out <= Data_In_4;
        8'd105: reg_data_out <= Data_In_5;
        8'd106: reg_data_out <= Data_In_6;
        8'd107: reg_data_out <= Data_In_7;
        8'd108: reg_data_out <= Data_In_8;
        8'd109: reg_data_out <= Data_In_9;
        8'd110: reg_data_out <= Data_In_10;
        8'd111: reg_data_out <= Data_In_11;
        8'd112: reg_data_out <= Data_In_12;
        8'd113: reg_data_out <= Data_In_13;
        8'd114: reg_data_out <= Data_In_14;
        8'd115: reg_data_out <= Data_In_15;
        8'd116: reg_data_out <= Data_In_16;
        8'd117: reg_data_out <= Data_In_17;
        8'd118: reg_data_out <= Data_In_18;
        8'd119: reg_data_out <= Data_In_19;
        8'd120: reg_data_out <= Data_In_20;
        8'd121: reg_data_out <= Data_In_21;
        8'd122: reg_data_out <= Data_In_22;
        8'd123: reg_data_out <= Data_In_23;
        8'd124: reg_data_out <= Data_In_24;
        8'd125: reg_data_out <= Data_In_25;
        8'd126: reg_data_out <= Data_In_26;
        8'd127: reg_data_out <= Data_In_27;
        8'd128: reg_data_out <= Data_In_28;
        8'd129: reg_data_out <= Data_In_29;
        8'd130: reg_data_out <= Data_In_30;
        8'd131: reg_data_out <= Data_In_31;
        8'd132: reg_data_out <= Data_In_32;
        8'd133: reg_data_out <= Data_In_33;
        8'd134: reg_data_out <= Data_In_34;
        8'd135: reg_data_out <= Data_In_35;
        8'd136: reg_data_out <= Data_In_36;
        8'd137: reg_data_out <= Data_In_37;
        8'd138: reg_data_out <= Data_In_38;
        8'd139: reg_data_out <= Data_In_39;
        8'd140: reg_data_out <= Data_In_40;
        8'd141: reg_data_out <= Data_In_41;
        8'd142: reg_data_out <= Data_In_42;
        8'd143: reg_data_out <= Data_In_43;
        8'd144: reg_data_out <= Data_In_44;
        8'd145: reg_data_out <= Data_In_45;
        8'd146: reg_data_out <= Data_In_46;
        8'd147: reg_data_out <= Data_In_47;
        8'd148: reg_data_out <= Data_In_48;
        8'd149: reg_data_out <= Data_In_49;
        8'd150: reg_data_out <= Data_In_50;
        8'd151: reg_data_out <= Data_In_51;
        8'd152: reg_data_out <= Data_In_52;
        8'd153: reg_data_out <= Data_In_53;
        8'd154: reg_data_out <= Data_In_54;
        8'd155: reg_data_out <= Data_In_55;
        8'd156: reg_data_out <= Data_In_56;
        8'd157: reg_data_out <= Data_In_57;
        8'd158: reg_data_out <= Data_In_58;
        8'd159: reg_data_out <= Data_In_59;
        8'd160: reg_data_out <= Data_In_60;
        8'd161: reg_data_out <= Data_In_61;
        8'd162: reg_data_out <= Data_In_62;
        8'd163: reg_data_out <= Data_In_63;

        default: reg_data_out <= 0;
    endcase
end

always @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN) begin
    if (!S_AXI_ARESETN) begin
        axi_rdata  <= 0;
    end
    else if (slv_reg_rden) begin
        axi_rdata <= reg_data_out;
    end
end

endmodule
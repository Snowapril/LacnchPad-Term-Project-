module Digit_selecter(CLK,RST,Din_0,Din_1,Din_4,Din_5,Din_6,Din_7,Din_8,Din_9,Din_10,Din_11,Din_2,Din_3,Dout);

input CLK;
input RST;
input Din_0;
input Din_1;
input Din_4;
input Din_5;
input Din_6;
input Din_7;
input Din_8;
input Din_9;
input Din_10;
input Din_11;
input Din_2;
input Din_3;
output Dout;

wire [3:0] b3;
wire  w4;
wire  w5;
wire  w6;
wire  w7;
wire  w8;
wire  w9;
wire  w10;
wire  w11;
wire  w12;
wire  w13;
wire  w14;
wire  w15;
wire  w16;
wire  w17;
wire  w20;
wire  w18;
wire  w22;
wire  w19;

assign w17 = CLK;
assign w18 = RST;
assign w4 = Din_0;
assign w5 = Din_1;
assign w8 = Din_4;
assign w9 = Din_5;
assign w10 = Din_6;
assign w11 = Din_7;
assign w12 = Din_8;
assign w13 = Din_9;
assign w14 = Din_10;
assign w15 = Din_11;
assign w6 = Din_2;
assign w7 = Din_3;
assign Dout = w16;

Counter12
     s0 (
      .VAL(b3),
      .RST(w18),
      .CLK(w19));

Mux12bit_4
     s2 (
      .B_in(b3),
      .D1(w4),
      .D2(w5),
      .D3(w6),
      .D4(w7),
      .D5(w8),
      .D6(w9),
      .D7(w10),
      .D8(w11),
      .D9(w12),
      .D_star(w13),
      .D0(w14),
      .D_sharp(w15),
      .D_out(w16));

Counter10
     s3 (
      .CLK(w17),
      .CR(w20),
      .RST(w18),
      .CNT10());

PNU_DFF
     s4 (
      .clock(w20),
      .reset(w18),
      .D(w22),
      .Q(w19));

PNU_NOT
     s5 (
      .o1(w22),
      .i1(w19));

endmodule


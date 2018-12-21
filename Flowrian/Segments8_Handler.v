module Segments8_Handler(com1,com2,com3,com4,com5,com6,com7,com8,CLK,RST,delay_CLK,event_8,event_12,Segout);

output com1;
output com2;
output com3;
output com4;
output com5;
output com6;
output com7;
output com8;
input CLK;
input RST;
input delay_CLK;
input event_8;
input event_12;
output [6:0] Segout;

wire [2:0] b8;
wire  w13;
wire  w14;
wire  w12;
wire  w16;
wire  w15;
wire [6:0] b37;
wire [6:0] b38;
wire [6:0] b39;
wire [6:0] b40;
wire [6:0] b41;
wire [6:0] b42;
wire [6:0] b43;
wire [6:0] b44;
wire [6:0] b31;
wire [6:0] b32;
wire [6:0] b33;
wire [6:0] b34;
wire [6:0] b35;
wire [6:0] b36;
wire [6:0] b29;
wire [6:0] b30;
wire  w29;
wire  w30;
wire  w31;
wire  w32;
wire  w33;
wire  w34;
wire  w35;
wire  w36;
wire  w37;
wire  w38;
wire  w39;
wire  w40;
wire  w41;
wire  w42;
wire  w43;
wire  w44;
wire [6:0] b45;
wire [6:0] b46;
wire [6:0] b47;
wire [6:0] b48;
wire [6:0] b49;
wire [6:0] b50;
wire [6:0] b51;
wire [6:0] b52;
wire [6:0] b53;
wire [6:0] b54;
wire [6:0] b55;
wire [6:0] b56;
wire [6:0] b57;
wire [6:0] b58;
wire [6:0] b59;
wire [6:0] b60;
wire [6:0] b61;
wire [6:0] b62;
wire [6:0] b64;
wire [6:0] b65;
wire [6:0] b63;
wire [6:0] b66;
wire [6:0] b67;
wire [6:0] b68;
wire [6:0] b70;
wire [6:0] b69;
wire [6:0] b71;
wire [6:0] b72;
wire [6:0] b73;
wire [6:0] b74;
wire [6:0] b75;

assign com1 = w37;
assign com2 = w38;
assign com3 = w39;
assign com4 = w40;
assign com5 = w41;
assign com6 = w42;
assign com7 = w43;
assign com8 = w44;
assign w13 = CLK;
assign w12 = RST;
assign w14 = delay_CLK;
assign w15 = event_8;
assign w16 = event_12;
assign Segout = b75;

event_8
     s0 (
      .clk(w14),
      .rst(w12),
      .button_inp(w15),
      .seg_1(b37),
      .seg_2(b38),
      .seg_3(b39),
      .seg_4(b40),
      .seg_5(b41),
      .seg_6(b42),
      .seg_7(b43),
      .seg_8(b44));

event_12
     s1 (
      .clk(w14),
      .rst(w12),
      .button_inp(w16),
      .seg_1(b31),
      .seg_2(b32),
      .seg_3(b33),
      .seg_4(b34),
      .seg_5(b35),
      .seg_6(b36),
      .seg_7(b29),
      .seg_8(b30));

eight_counter
     s2 (
      .Dout(b8),
      .clk(w13),
      .rst(w12));

Decoder3bit
     s6 (
      .Din(b8),
      .D1(w29),
      .D2(w30),
      .D3(w31),
      .D4(w32),
      .D5(w33),
      .D6(w34),
      .D7(w35),
      .D8(w36));

AND_7bit
     s4 (
      .Din(b37),
      .mask(w29),
      .Dout(b45));

AND_7bit
     s5 (
      .Din(b38),
      .mask(w30),
      .Dout(b47));

AND_7bit
     s7 (
      .Din(b39),
      .mask(w31),
      .Dout(b49));

AND_7bit
     s8 (
      .Din(b40),
      .mask(w32),
      .Dout(b51));

AND_7bit
     s9 (
      .Din(b41),
      .mask(w33),
      .Dout(b53));

AND_7bit
     s10 (
      .Din(b42),
      .mask(w34),
      .Dout(b55));

AND_7bit
     s11 (
      .Din(b43),
      .mask(w35),
      .Dout(b57));

AND_7bit
     s12 (
      .Din(b44),
      .mask(w36),
      .Dout(b59));

AND_7bit
     s13 (
      .Din(b31),
      .mask(w29),
      .Dout(b46));

AND_7bit
     s14 (
      .Din(b32),
      .mask(w30),
      .Dout(b48));

AND_7bit
     s15 (
      .Din(b33),
      .mask(w31),
      .Dout(b50));

AND_7bit
     s16 (
      .Din(b34),
      .mask(w32),
      .Dout(b52));

AND_7bit
     s17 (
      .Din(b35),
      .mask(w33),
      .Dout(b54));

AND_7bit
     s18 (
      .Din(b36),
      .mask(w34),
      .Dout(b56));

AND_7bit
     s19 (
      .Din(b29),
      .mask(w35),
      .Dout(b58));

AND_7bit
     s20 (
      .Din(b30),
      .mask(w36),
      .Dout(b60));

PNU_NOT
     s21 (
      .i1(w29),
      .o1(w37));

PNU_NOT
     s22 (
      .i1(w30),
      .o1(w38));

PNU_NOT
     s23 (
      .i1(w31),
      .o1(w39));

PNU_NOT
     s24 (
      .i1(w32),
      .o1(w40));

PNU_NOT
     s25 (
      .i1(w33),
      .o1(w41));

PNU_NOT
     s26 (
      .i1(w34),
      .o1(w42));

PNU_NOT
     s27 (
      .i1(w35),
      .o1(w43));

PNU_NOT
     s28 (
      .i1(w36),
      .o1(w44));

OR_7_7bits
     s29 (
      .Din(b45),
      .Din2(b46),
      .Dout(b61));

OR_7_7bits
     s30 (
      .Din(b47),
      .Din2(b48),
      .Dout(b62));

OR_7_7bits
     s31 (
      .Din(b49),
      .Din2(b50),
      .Dout(b63));

OR_7_7bits
     s32 (
      .Din(b51),
      .Din2(b52),
      .Dout(b67));

OR_7_7bits
     s33 (
      .Din(b53),
      .Din2(b54),
      .Dout(b68));

OR_7_7bits
     s34 (
      .Din(b55),
      .Din2(b56),
      .Dout(b69));

OR_7_7bits
     s35 (
      .Din(b57),
      .Din2(b58),
      .Dout(b72));

OR_7_7bits
     s36 (
      .Din(b59),
      .Din2(b60),
      .Dout(b74));

OR_7_7bits
     s37 (
      .Din(b61),
      .Din2(b62),
      .Dout(b64));

OR_7_7bits
     s38 (
      .Din(b64),
      .Dout(b65),
      .Din2(b63));

OR_7_7bits
     s39 (
      .Din(b66),
      .Din2(b68),
      .Dout(b70));

OR_7_7bits
     s40 (
      .Din(b65),
      .Dout(b66),
      .Din2(b67));

OR_7_7bits
     s41 (
      .Din(b70),
      .Din2(b69),
      .Dout(b71));

OR_7_7bits
     s42 (
      .Din(b71),
      .Din2(b72),
      .Dout(b73));

OR_7_7bits
     s43 (
      .Din(b73),
      .Din2(b74),
      .Dout(b75));

endmodule


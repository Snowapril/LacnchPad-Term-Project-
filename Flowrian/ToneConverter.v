module ToneConverter(B_in,RST,CLK,EN,D_out,octave);

input [3:0] B_in;
input RST;
input CLK;
input EN;
output D_out;
input [2:0] octave;

wire  w5;
wire  w7;
wire  w8;
wire  w9;
wire  w14;
wire  w15;
wire  w17;
wire  w16;
wire  w13;
wire  w12;
wire  w11;
wire  w6;
wire  w22;
wire  w23;
wire  w24;
wire  w25;
wire  w26;
wire  w27;
wire  w28;
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
wire  w43;
wire  w44;
wire  w45;
wire  w46;
wire  w47;
wire [3:0] b42;
wire  w48;
wire  w49;
wire  w50;
wire [2:0] b43;
wire  w52;
wire  w51;
wire  w53;
wire  w57;
wire  w58;
wire  w59;
wire  w60;
wire  b43_0_w54;
wire  b43_1_w55;
wire  b43_2_w56;

assign b42 = B_in;
assign w50 = RST;
assign w49 = CLK;
assign w48 = EN;
assign D_out = w60;
assign b43 = octave;

assign b43_0_w54 = {b43[0]};
assign b43_1_w55 = {b43[1]};
assign b43_2_w56 = {b43[2]};

PNU_CLK_DIV
     #(
      .cnt_num(7645))
     s7 (
      .div_clk(w11),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(6810))
     s8 (
      .div_clk(w12),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(6067))
     s9 (
      .div_clk(w13),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(5727))
     s10 (
      .div_clk(w16),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(5102))
     s11 (
      .div_clk(w15),
      .en(w48),
      .clk(w49),
      .rst(w50));

Mux12bit_4
     s12 (
      .D_sharp(w5),
      .D_star(w7),
      .D9(w8),
      .D8(w9),
      .D6(w14),
      .D5(w15),
      .D7(w17),
      .D4(w16),
      .D3(w13),
      .D2(w12),
      .D1(w11),
      .D0(w6),
      .B_in(b42),
      .D_out(w52));

Mux12bit_4
     s25 (
      .D_sharp(w22),
      .D_star(w23),
      .D9(w24),
      .D8(w25),
      .D6(w26),
      .D5(w27),
      .D7(w28),
      .D4(w30),
      .D3(w31),
      .D2(w32),
      .D1(w33),
      .D0(w34),
      .B_in(b42),
      .D_out(w51));

Mux12bit_4
     s38 (
      .D_sharp(w35),
      .D_star(w36),
      .D9(w37),
      .D8(w38),
      .D6(w39),
      .D5(w40),
      .D7(w41),
      .D4(w43),
      .D3(w44),
      .D2(w45),
      .D1(w46),
      .D0(w47),
      .B_in(b42),
      .D_out(w53));

PNU_AND2
     s39 (
      .i1(b43_0_w54),
      .i2(w52),
      .o1(w58));

PNU_AND2
     s40 (
      .i1(b43_1_w55),
      .i2(w51),
      .o1(w57));

PNU_AND2
     s41 (
      .i1(b43_2_w56),
      .i2(w53),
      .o1(w59));

PNU_OR3
     s42 (
      .i2(w57),
      .i1(w58),
      .i3(w59),
      .o1(w60));

PNU_CLK_DIV
     #(
      .cnt_num(4545))
     s13 (
      .div_clk(w14),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(4050))
     s14 (
      .div_clk(w17),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(3822))
     s15 (
      .div_clk(w9),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(3405))
     s16 (
      .div_clk(w8),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(3034))
     s17 (
      .div_clk(w7),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(2863))
     s18 (
      .div_clk(w6),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(2551))
     s19 (
      .div_clk(w5),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(2273))
     s20 (
      .div_clk(w33),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(2024))
     s21 (
      .div_clk(w32),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(1911))
     s22 (
      .div_clk(w31),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(1703))
     s23 (
      .div_clk(w30),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(1517))
     s24 (
      .div_clk(w27),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(1432))
     s26 (
      .div_clk(w26),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(1276))
     s27 (
      .div_clk(w28),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(1136))
     s28 (
      .div_clk(w25),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(1012))
     s29 (
      .div_clk(w24),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(956))
     s30 (
      .div_clk(w23),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(851))
     s31 (
      .div_clk(w34),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(758))
     s32 (
      .div_clk(w22),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(716))
     s33 (
      .div_clk(w46),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(638))
     s34 (
      .div_clk(w45),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(568))
     s35 (
      .div_clk(w44),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(506))
     s36 (
      .div_clk(w43),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(478))
     s37 (
      .div_clk(w40),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(425))
     s43 (
      .div_clk(w39),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(379))
     s44 (
      .div_clk(w41),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(357))
     s45 (
      .div_clk(w38),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(319))
     s46 (
      .div_clk(w37),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(284))
     s47 (
      .div_clk(w36),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(268))
     s48 (
      .div_clk(w47),
      .en(w48),
      .clk(w49),
      .rst(w50));

PNU_CLK_DIV
     #(
      .cnt_num(253))
     s49 (
      .div_clk(w35),
      .en(w48),
      .clk(w49),
      .rst(w50));

endmodule


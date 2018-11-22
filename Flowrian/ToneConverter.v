module ToneConverter(B_in,RST,CLK,EN,D_out);

input [3:0] B_in;
input RST;
input CLK;
input EN;
output D_out;

wire  w5;
wire  w6;
wire  w7;
wire  w8;
wire  w9;
wire  w11;
wire  w12;
wire  w13;
wire  w14;
wire  w15;
wire  w16;
wire  w17;
wire [3:0] b15;
wire  w18;
wire  w19;
wire  w20;
wire  w21;

assign b15 = B_in;
assign w19 = RST;
assign w20 = CLK;
assign w21 = EN;
assign D_out = w18;

PNU_CLK_DIV
     #(
      .cnt_num(7645))
     s0 (
      .div_clk(w11),
      .rst(w19),
      .clk(w20),
      .en(w21));

PNU_CLK_DIV
     #(
      .cnt_num(6810))
     s1 (
      .div_clk(w12),
      .rst(w19),
      .clk(w20),
      .en(w21));

PNU_CLK_DIV
     #(
      .cnt_num(6067))
     s2 (
      .div_clk(w13),
      .rst(w19),
      .clk(w20),
      .en(w21));

PNU_CLK_DIV
     #(
      .cnt_num(5727))
     s3 (
      .div_clk(w16),
      .rst(w19),
      .clk(w20),
      .en(w21));

PNU_CLK_DIV
     #(
      .cnt_num(5102))
     s4 (
      .div_clk(w15),
      .rst(w19),
      .clk(w20),
      .en(w21));

PNU_CLK_DIV
     #(
      .cnt_num(4545))
     s5 (
      .div_clk(w14),
      .rst(w19),
      .clk(w20),
      .en(w21));

PNU_CLK_DIV
     #(
      .cnt_num(4050))
     s6 (
      .div_clk(w17),
      .rst(w19),
      .clk(w20),
      .en(w21));

PNU_CLK_DIV
     #(
      .cnt_num(3822))
     s7 (
      .div_clk(w9),
      .rst(w19),
      .clk(w20),
      .en(w21));

PNU_CLK_DIV
     #(
      .cnt_num(3405))
     s8 (
      .div_clk(w8),
      .rst(w19),
      .clk(w20),
      .en(w21));

PNU_CLK_DIV
     #(
      .cnt_num(3034))
     s9 (
      .div_clk(w7),
      .rst(w19),
      .clk(w20),
      .en(w21));

PNU_CLK_DIV
     #(
      .cnt_num(2863))
     s10 (
      .div_clk(w6),
      .rst(w19),
      .clk(w20),
      .en(w21));

PNU_CLK_DIV
     #(
      .cnt_num(2551))
     s11 (
      .div_clk(w5),
      .rst(w19),
      .clk(w20),
      .en(w21));

Mux12bit_4
     s12 (
      .D_sharp(w5),
      .D0(w6),
      .D_star(w7),
      .D9(w8),
      .D8(w9),
      .D1(w11),
      .D2(w12),
      .D3(w13),
      .D6(w14),
      .D5(w15),
      .D4(w16),
      .D7(w17),
      .B_in(b15),
      .D_out(w18));

endmodule


module mod_converter(switch_1,switch_2,switch_3,mod_1,mod_2,mod_3);

input switch_1;
input switch_2;
input switch_3;
output mod_1;
output mod_2;
output mod_3;

wire  w5;
wire  w6;
wire  w8;
wire  w9;
wire  w10;
wire  w11;
wire  w13;
wire  w14;
wire  w15;
wire  w16;
wire  w17;
wire  w12;
wire  w18;
wire  w19;
wire  w20;
wire  w21;

assign w16 = switch_1;
assign w17 = switch_2;
assign w12 = switch_3;
assign mod_1 = w19;
assign mod_2 = w20;
assign mod_3 = w21;

PNU_NOT
     s0 (
      .o1(w5),
      .i1(w16));

PNU_NOT
     s1 (
      .o1(w10),
      .i1(w16));

PNU_NOT
     s2 (
      .o1(w8),
      .i1(w17));

PNU_NOT
     s3 (
      .o1(w11),
      .i1(w17));

PNU_NOT
     s4 (
      .o1(w6),
      .i1(w12));

PNU_NOT
     s5 (
      .o1(w9),
      .i1(w12));

PNU_AND3
     s6 (
      .i1(w5),
      .i3(w6),
      .o1(w13),
      .i2(w17));

PNU_AND3
     s7 (
      .i2(w8),
      .i3(w9),
      .o1(w14),
      .i1(w16));

PNU_AND3
     s8 (
      .i1(w10),
      .i2(w11),
      .o1(w15),
      .i3(w12));

PNU_OR3
     s9 (
      .i1(w13),
      .i2(w14),
      .i3(w15),
      .o1(w18));

PNU_AND2
     s10 (
      .i1(w16),
      .i2(w18),
      .o1(w19));

PNU_AND2
     s11 (
      .i1(w17),
      .i2(w18),
      .o1(w20));

PNU_AND2
     s12 (
      .i1(w12),
      .i2(w18),
      .o1(w21));

endmodule


module regiset_12bits(Din,Ce,CLK,RST,Dout);

input [11:0] Din;
input Ce;
input CLK;
input RST;
output [11:0] Dout;

wire [11:0] b27;
wire [11:0] b28;
wire  w35;
wire  w36;
wire  w26;
wire  b27_3_w3;
wire  b27_2_w4;
wire  b27_1_w5;
wire  b27_0_w6;
wire  b28_3;
wire  b28_2;
wire  b28_1;
wire  b28_0;
wire  b27_11_w16;
wire  b27_10_w17;
wire  b27_9_w18;
wire  b27_8_w19;
wire  b28_11;
wire  b28_10;
wire  b28_9;
wire  b28_8;
wire  b27_7_w27;
wire  b27_6_w28;
wire  b27_5_w29;
wire  b27_4_w30;
wire  b28_7;
wire  b28_6;
wire  b28_5;
wire  b28_4;

assign b27 = Din;
assign w35 = Ce;
assign w26 = CLK;
assign w36 = RST;
assign Dout = b28;

assign b28[11] = b28_11;
assign b28[10] = b28_10;
assign b28[9] = b28_9;
assign b28[8] = b28_8;
assign b28[7] = b28_7;
assign b28[6] = b28_6;
assign b28[5] = b28_5;
assign b28[4] = b28_4;
assign b28[3] = b28_3;
assign b28[2] = b28_2;
assign b28[1] = b28_1;
assign b28[0] = b28_0;

assign b27_3_w3 = {b27[3]};
assign b27_2_w4 = {b27[2]};
assign b27_1_w5 = {b27[1]};
assign b27_0_w6 = {b27[0]};
assign b27_11_w16 = {b27[11]};
assign b27_10_w17 = {b27[10]};
assign b27_9_w18 = {b27[9]};
assign b27_8_w19 = {b27[8]};
assign b27_7_w27 = {b27[7]};
assign b27_6_w28 = {b27[6]};
assign b27_5_w29 = {b27[5]};
assign b27_4_w30 = {b27[4]};

PNU_DFF_Ce
     s0 (
      .D(b27_3_w3),
      .Q(b28_3),
      .Ce(w35),
      .reset(w36),
      .clock(w26));

PNU_DFF_Ce
     s1 (
      .D(b27_2_w4),
      .Q(b28_2),
      .Ce(w35),
      .reset(w36),
      .clock(w26));

PNU_DFF_Ce
     s2 (
      .D(b27_1_w5),
      .Q(b28_1),
      .Ce(w35),
      .reset(w36),
      .clock(w26));

PNU_DFF_Ce
     s3 (
      .D(b27_0_w6),
      .Q(b28_0),
      .Ce(w35),
      .reset(w36),
      .clock(w26));

PNU_DFF_Ce
     s4 (
      .D(b27_11_w16),
      .Q(b28_11),
      .Ce(w35),
      .reset(w36),
      .clock(w26));

PNU_DFF_Ce
     s5 (
      .D(b27_10_w17),
      .Q(b28_10),
      .Ce(w35),
      .reset(w36),
      .clock(w26));

PNU_DFF_Ce
     s6 (
      .D(b27_9_w18),
      .Q(b28_9),
      .Ce(w35),
      .reset(w36),
      .clock(w26));

PNU_DFF_Ce
     s7 (
      .D(b27_8_w19),
      .Q(b28_8),
      .Ce(w35),
      .reset(w36),
      .clock(w26));

PNU_DFF_Ce
     s8 (
      .D(b27_7_w27),
      .Q(b28_7),
      .Ce(w35),
      .reset(w36),
      .clock(w26));

PNU_DFF_Ce
     s9 (
      .D(b27_6_w28),
      .Q(b28_6),
      .Ce(w35),
      .reset(w36),
      .clock(w26));

PNU_DFF_Ce
     s10 (
      .D(b27_5_w29),
      .Q(b28_5),
      .Ce(w35),
      .reset(w36),
      .clock(w26));

PNU_DFF_Ce
     s11 (
      .D(b27_4_w30),
      .Q(b28_4),
      .Ce(w35),
      .reset(w36),
      .clock(w26));

endmodule


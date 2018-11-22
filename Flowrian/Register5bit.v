module Register5bit(Ce,CLK,RST,Din,Dout);

input Ce;
input CLK;
input RST;
input [4:0] Din;
output [4:0] Dout;

wire [4:0] b13;
wire [4:0] b12;
wire  w16;
wire  w14;
wire  w15;
wire  b13_0_w6;
wire  b13_1_w7;
wire  b13_2_w8;
wire  b13_3_w9;
wire  b12_0;
wire  b12_1;
wire  b12_2;
wire  b12_3;
wire  b12_4;
wire  b13_4_w19;

assign w14 = Ce;
assign w15 = CLK;
assign w16 = RST;
assign b13 = Din;
assign Dout = b12;

assign b12[4] = b12_4;
assign b12[3] = b12_3;
assign b12[2] = b12_2;
assign b12[1] = b12_1;
assign b12[0] = b12_0;

assign b13_0_w6 = {b13[0]};
assign b13_1_w7 = {b13[1]};
assign b13_2_w8 = {b13[2]};
assign b13_3_w9 = {b13[3]};
assign b13_4_w19 = {b13[4]};

PNU_DFF_Ce
     s0 (
      .D(b13_1_w7),
      .Q(b12_1),
      .reset(w16),
      .Ce(w14),
      .clock(w15));

PNU_DFF_Ce
     s1 (
      .D(b13_0_w6),
      .Q(b12_0),
      .reset(w16),
      .Ce(w14),
      .clock(w15));

PNU_DFF_Ce
     s3 (
      .D(b13_3_w9),
      .Q(b12_3),
      .reset(w16),
      .Ce(w14),
      .clock(w15));

PNU_DFF_Ce
     s2 (
      .D(b13_2_w8),
      .Q(b12_2),
      .reset(w16),
      .Ce(w14),
      .clock(w15));

PNU_DFF_Ce
     s4 (
      .Q(b12_4),
      .D(b13_4_w19),
      .reset(w16),
      .Ce(w14),
      .clock(w15));

endmodule


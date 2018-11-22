module Register4bit(Ce,CLK,RST,Din,Q);

input Ce;
input CLK;
input RST;
input [3:0] Din;
output [3:0] Q;

wire [3:0] b3;
wire [3:0] b8;
wire  w3;
wire  w4;
wire  w5;
wire  b3_0_w6;
wire  b3_1_w7;
wire  b3_2_w8;
wire  b3_3_w9;
wire  b8_0;
wire  b8_1;
wire  b8_2;
wire  b8_3;

assign w5 = Ce;
assign w4 = CLK;
assign w3 = RST;
assign b3 = Din;
assign Q = b8;

assign b8[3] = b8_3;
assign b8[2] = b8_2;
assign b8[1] = b8_1;
assign b8[0] = b8_0;

assign b3_0_w6 = {b3[0]};
assign b3_1_w7 = {b3[1]};
assign b3_2_w8 = {b3[2]};
assign b3_3_w9 = {b3[3]};

PNU_DFF_Ce
     s0 (
      .D(b3_1_w7),
      .Q(b8_1),
      .reset(w3),
      .clock(w4),
      .Ce(w5));

PNU_DFF_Ce
     s1 (
      .D(b3_0_w6),
      .Q(b8_0),
      .reset(w3),
      .clock(w4),
      .Ce(w5));

PNU_DFF_Ce
     s3 (
      .D(b3_3_w9),
      .Q(b8_3),
      .reset(w3),
      .clock(w4),
      .Ce(w5));

PNU_DFF_Ce
     s2 (
      .D(b3_2_w8),
      .Q(b8_2),
      .reset(w3),
      .clock(w4),
      .Ce(w5));

endmodule


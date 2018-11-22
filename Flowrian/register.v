module register(Din,CLK,RST,Ce,Dout);

input [3:0] Din;
input CLK;
input RST;
input Ce;
output [3:0] Dout;

wire  w1;
wire  w2;
wire  w3;
wire [3:0] b7;
wire [3:0] b8;
wire  b7_3_w4;
wire  b7_2_w5;
wire  b7_1_w6;
wire  b7_0_w7;
wire  b8_3;
wire  b8_2;
wire  b8_1;
wire  b8_0;

assign b7 = Din;
assign w1 = CLK;
assign w2 = RST;
assign w3 = Ce;
assign Dout = b8;

assign b8[3] = b8_3;
assign b8[2] = b8_2;
assign b8[1] = b8_1;
assign b8[0] = b8_0;

assign b7_3_w4 = {b7[3]};
assign b7_2_w5 = {b7[2]};
assign b7_1_w6 = {b7[1]};
assign b7_0_w7 = {b7[0]};

PNU_DFF_Ce
     s0 (
      .clock(w1),
      .reset(w2),
      .Ce(w3),
      .D(b7_3_w4),
      .Q(b8_3));

PNU_DFF_Ce
     s1 (
      .clock(w1),
      .reset(w2),
      .Ce(w3),
      .D(b7_2_w5),
      .Q(b8_2));

PNU_DFF_Ce
     s2 (
      .clock(w1),
      .reset(w2),
      .Ce(w3),
      .D(b7_1_w6),
      .Q(b8_1));

PNU_DFF_Ce
     s3 (
      .clock(w1),
      .reset(w2),
      .Ce(w3),
      .D(b7_0_w7),
      .Q(b8_0));

endmodule


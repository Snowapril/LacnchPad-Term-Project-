module MUX4bit_16(p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,S0,S1,S2,S3,Dout);

input [3:0] p0;
input [3:0] p1;
input [3:0] p2;
input [3:0] p3;
input [3:0] p4;
input [3:0] p5;
input [3:0] p6;
input [3:0] p7;
input [3:0] p8;
input [3:0] p9;
input [3:0] p10;
input [3:0] p11;
input [3:0] p12;
input [3:0] p13;
input [3:0] p14;
input [3:0] p15;
input S0;
input S1;
input S2;
input S3;
output [3:0] Dout;

wire [3:0] b0;
wire [3:0] b1;
wire [3:0] b2;
wire [3:0] b3;
wire [3:0] b4;
wire [3:0] b5;
wire [3:0] b6;
wire [3:0] b7;
wire [3:0] b8;
wire [3:0] b9;
wire [3:0] b10;
wire [3:0] b11;
wire [3:0] b12;
wire [3:0] b13;
wire [3:0] b14;
wire [3:0] b15;
wire [3:0] b16;
wire [3:0] b17;
wire [3:0] b18;
wire [3:0] b19;
wire  w20;
wire  w21;
wire  w22;
wire  w23;
wire [3:0] b24;

assign b0 = p0;
assign b1 = p1;
assign b2 = p2;
assign b3 = p3;
assign b4 = p4;
assign b5 = p5;
assign b6 = p6;
assign b7 = p7;
assign b8 = p8;
assign b9 = p9;
assign b10 = p10;
assign b11 = p11;
assign b12 = p12;
assign b13 = p13;
assign b14 = p14;
assign b15 = p15;
assign w20 = S0;
assign w21 = S1;
assign w22 = S2;
assign w23 = S3;
assign Dout = b24;

MUX4bit_4
     s0 (
      .D0(b0),
      .D1(b1),
      .D2(b2),
      .D3(b3),
      .Dout(b16),
      .S0(w20),
      .S1(w21));

MUX4bit_4
     s1 (
      .D0(b4),
      .D1(b5),
      .D2(b6),
      .D3(b7),
      .Dout(b17),
      .S0(w20),
      .S1(w21));

MUX4bit_4
     s2 (
      .D0(b8),
      .D1(b9),
      .D2(b10),
      .D3(b11),
      .Dout(b18),
      .S0(w20),
      .S1(w21));

MUX4bit_4
     s3 (
      .D0(b12),
      .D1(b13),
      .D2(b14),
      .D3(b15),
      .Dout(b19),
      .S0(w20),
      .S1(w21));

MUX4bit_4
     s4 (
      .D0(b16),
      .D1(b17),
      .D2(b18),
      .D3(b19),
      .S0(w22),
      .S1(w23),
      .Dout(b24));

endmodule


module DigitToShiftRegister(p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,RST,CLK,D0,D1,D2,D3,D4,D5,D6,D7);

input p0;
input p1;
input p2;
input p3;
input p4;
input p5;
input p6;
input p7;
input p8;
input p9;
input RST;
input CLK;
output D0;
output D1;
output D2;
output D3;
output D4;
output D5;
output D6;
output D7;

wire  w0;
wire  w1;
wire  w2;
wire  w3;
wire  w4;
wire  w5;
wire  w6;
wire  w7;
wire  w8;
wire  w9;
wire  w10;
wire [3:0] b11;
wire  w17;
wire  w18;
wire [3:0] b18;
wire [3:0] b19;
wire  b11_1;
wire  b11_2;
wire  b11_0;
wire  b11_3;

assign w9 = p0;
assign w8 = p1;
assign w7 = p2;
assign w6 = p3;
assign w5 = p4;
assign w4 = p5;
assign w3 = p6;
assign w2 = p7;
assign w1 = p8;
assign w0 = p9;
assign w10 = RST;
assign w18 = CLK;
assign D0 = b18[0];
assign D1 = b18[1];
assign D2 = b18[2];
assign D3 = b18[3];
assign D4 = b19[0];
assign D5 = b19[1];
assign D6 = b19[2];
assign D7 = b19[3];

assign b11[3] = b11_3;
assign b11[2] = b11_2;
assign b11[1] = b11_1;
assign b11[0] = b11_0;

Encode_decimal_to_binary
     s0 (
      .d9(w0),
      .d8(w1),
      .d7(w2),
      .d6(w3),
      .d5(w4),
      .d4(w5),
      .d3(w6),
      .d2(w7),
      .d1(w8),
      .d0(w9),
      .b11(b11_1),
      .b12(b11_2),
      .b0(b11_0),
      .b13(b11_3),
      .CHK(w17));

Shift4bitRegister
     s2 (
      .RST(w10),
      .Din(b11),
      .Ce(w17),
      .CLK(w18),
      .D0out(b18),
      .D1out(b19));

endmodule


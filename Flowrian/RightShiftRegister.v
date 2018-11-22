module RightShiftRegister(Din,CLK,RST,Q0,Q1,Q2,Q3);

input Din;
input CLK;
input RST;
output Q0;
output Q1;
output Q2;
output Q3;

wire  w2;
wire  w3;
wire  w4;
wire  w5;
wire  w7;
wire  w8;
wire  w6;

assign w2 = Din;
assign w8 = CLK;
assign w7 = RST;
assign Q0 = w6;
assign Q1 = w5;
assign Q2 = w4;
assign Q3 = w3;

PNU_DFF
     s0 (
      .D(w2),
      .Q(w3),
      .reset(w7),
      .clock(w8));

PNU_DFF
     s1 (
      .D(w3),
      .Q(w4),
      .reset(w7),
      .clock(w8));

PNU_DFF
     s2 (
      .D(w4),
      .Q(w5),
      .reset(w7),
      .clock(w8));

PNU_DFF
     s3 (
      .D(w5),
      .reset(w7),
      .clock(w8),
      .Q(w6));

endmodule


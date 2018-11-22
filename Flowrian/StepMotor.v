module StepMotor(CLK,RST,A,AN,B,BN,TOG);

input CLK;
input RST;
output A;
output AN;
output B;
output BN;
input TOG;

wire [2:0] b0;
wire  w4;
wire  w5;
wire  w6;
wire  w7;
wire  w10;
wire  w9;
wire [1:0] b1;
wire  w14;
wire  b0_0_w15;
wire  b0_1_w16;
wire  b1_1;
wire  b1_0;

assign w10 = CLK;
assign w9 = RST;
assign A = w4;
assign AN = w5;
assign B = w6;
assign BN = w7;
assign w14 = TOG;

assign b1[1] = b1_1;
assign b1[0] = b1_0;

assign b0_0_w15 = {b0[0]};
assign b0_1_w16 = {b0[1]};

eight_counter
     s0 (
      .Dout(b0),
      .clk(w10),
      .rst(w9));

Decoder2bit
     s1 (
      .Q0(w4),
      .Q1(w5),
      .Q2(w6),
      .Q3(w7),
      .Din(b1));

PNU_XOR2
     s2 (
      .i2(w14),
      .i1(b0_0_w15),
      .o1(b1_0));

PNU_XOR2
     s3 (
      .i2(w14),
      .i1(b0_1_w16),
      .o1(b1_1));

endmodule


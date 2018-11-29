module Decoder4bits_tb;

reg [3:0] Din;
wire p1;
wire p10;
wire p11;
wire p12;
wire p13;
wire p14;
wire p15;
wire p16;
wire p2;
wire p3;
wire p4;
wire p5;
wire p6;
wire p7;
wire p8;
wire p9;

Decoder4bits
 U0 (
  .Din(Din),
  .p1(p1),
  .p10(p10),
  .p11(p11),
  .p12(p12),
  .p13(p13),
  .p14(p14),
  .p15(p15),
  .p16(p16),
  .p2(p2),
  .p3(p3),
  .p4(p4),
  .p5(p5),
  .p6(p6),
  .p7(p7),
  .p8(p8),
  .p9(p9));

  initial
  begin
    Din = 4'b0000;
    #200 Din = 4'b0001;
    #200 Din = 4'b0000;
    #200 Din = 4'b0010;
    #200 Din = 4'b0000;
    #200 Din = 4'b0011;
    #200 Din = 4'b0000;
    #200 Din = 4'b0100;
    #200 Din = 4'b0000;
    #200 Din = 4'b0101;
    #200 Din = 4'b0000;
    #200 Din = 4'b0110;
    #200 Din = 4'b0000;
    #200 Din = 4'b0111;
    #200 Din = 4'b0000;
    #200 Din = 4'b1000;
    #200 Din = 4'b0000;
    #200 Din = 4'b1001;
    #200 Din = 4'b0000;
    #200 Din = 4'b1010;
    #200 Din = 4'b0000;
    #200 Din = 4'b1011;
    #200 Din = 4'b0000;
    #200 Din = 4'b1100;
    #200 Din = 4'b0000;
    #200 Din = 4'b1101;
    #200 Din = 4'b0000;
    #200 Din = 4'b1110;
    #200 Din = 4'b0000;
    #200 Din = 4'b1111;
    #200 Din = 4'b0000;
  end

endmodule

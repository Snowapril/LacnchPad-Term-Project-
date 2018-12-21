module Counter10000(CLK,RST,CR);

input CLK;
input RST;
output CR;

wire  w1;
wire  w2;
wire  w3;
wire  w4;

assign w2 = CLK;
assign w1 = RST;
assign CR = w4;

Counter100
     s1 (
      .RST(w1),
      .CLK(w2),
      .CR(w3),
      .CNT_first(),
      .CNT_second());

Counter100
     s0 (
      .RST(w1),
      .CLK(w3),
      .CR(w4),
      .CNT_first(),
      .CNT_second());

endmodule


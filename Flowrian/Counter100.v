module Counter100(CNT_second,CNT_first,CLK,RST);

output [3:0] CNT_second;
output [3:0] CNT_first;
input CLK;
input RST;

wire  w1;
wire  w3;
wire  w4;
wire [3:0] b4;
wire [3:0] b0;

assign CNT_second = b0;
assign CNT_first = b4;
assign w4 = CLK;
assign w3 = RST;

Counter10
     s0 (
      .CLK(w1),
      .RST(w3),
      .CNT10(b4),
      .CR());

Counter10
     s1 (
      .CR(w1),
      .RST(w3),
      .CLK(w4),
      .CNT10(b0));

endmodule


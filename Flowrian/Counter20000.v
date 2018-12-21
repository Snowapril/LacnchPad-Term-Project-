module Counter20000(CLK,RST,CR);

input CLK;
input RST;
output CR;

wire  w2;
wire  w3;
wire  w4;
wire  w6;
wire  w5;

assign w2 = CLK;
assign w4 = RST;
assign CR = w5;

Counter10000
     s0 (
      .CLK(w2),
      .CR(w3),
      .RST(w4));

PNU_DFF
     s1 (
      .clock(w3),
      .reset(w4),
      .D(w6),
      .Q(w5));

PNU_NOT
     s2 (
      .o1(w6),
      .i1(w5));

endmodule


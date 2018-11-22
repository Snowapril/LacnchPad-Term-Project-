module DFlipflopCE(Ce,Din,CLK,RST,Dout);

input Ce;
input Din;
input CLK;
input RST;
output Dout;

wire  w1;
wire  w2;
wire  w3;
wire  w5;
wire  w6;
wire  w7;

assign w5 = Ce;
assign w6 = Din;
assign w2 = CLK;
assign w3 = RST;
assign Dout = w7;

PNU_DFF
     s0 (
      .D(w1),
      .clock(w2),
      .reset(w3),
      .Q(w7));

PNU_MUX2
     s1 (
      .o1(w1),
      .e1(w5),
      .i2(w6),
      .i1(w7));

endmodule


module DFlipflop(Din,CLK,RST,Dout);

input Din;
input CLK;
input RST;
output Dout;

wire  w0;
wire  w1;
wire  w2;
wire  w3;

assign w0 = Din;
assign w1 = CLK;
assign w2 = RST;
assign Dout = w3;

PNU_DFF
     s0 (
      .D(w0),
      .clock(w1),
      .reset(w2),
      .Q(w3));

endmodule


module PianoPlay(RST,CLK,Bin,EN,Dout);

input RST;
input CLK;
input [3:0] Bin;
input EN;
output Dout;

wire  w16;
wire  w17;
wire [3:0] b3;
wire  w3;
wire  w4;

assign w17 = RST;
assign w16 = CLK;
assign b3 = Bin;
assign w3 = EN;
assign Dout = w4;

ToneConverter
     s0 (
      .CLK(w16),
      .RST(w17),
      .B_in(b3),
      .EN(w3),
      .D_out(w4));

endmodule


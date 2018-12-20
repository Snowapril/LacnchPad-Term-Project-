module PianoPlay(RST,CLK,Bin,EN,Dout,octave);

input RST;
input CLK;
input [3:0] Bin;
input EN;
output Dout;
input [2:0] octave;

wire  w4;
wire  w5;
wire  w6;
wire  w7;
wire [3:0] b4;
wire [2:0] b5;

assign w5 = RST;
assign w7 = CLK;
assign b4 = Bin;
assign w6 = EN;
assign Dout = w4;
assign b5 = octave;

ToneConverter
     s0 (
      .D_out(w4),
      .RST(w5),
      .EN(w6),
      .CLK(w7),
      .B_in(b4),
      .octave(b5));

endmodule


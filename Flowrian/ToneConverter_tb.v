module ToneConverter_tb;

reg [3:0] B_in;
reg CLK;
wire D_out;
reg EN;
reg RST;

ToneConverter
 U0 (
  .B_in(B_in),
  .CLK(CLK),
  .D_out(D_out),
  .EN(EN),
  .RST(RST));

  initial
  begin
    B_in = 4'b0011;
  end

  initial
  begin
    CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
  end

  initial
  begin
    EN = 1'b0;
    #300 EN = 1'b1;
  end

  initial
  begin
    RST = 1'b1;
    #200 RST = 1'b0;
  end

endmodule

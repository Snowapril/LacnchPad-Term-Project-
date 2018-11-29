module SRAM12bits_tb;

reg [3:0] Address;
reg CLK;
reg [3:0] Din;
wire [3:0] Dout;
reg RST;
reg RW;

SRAM12bits
 U0 (
  .Address(Address),
  .CLK(CLK),
  .Din(Din),
  .Dout(Dout),
  .RST(RST),
  .RW(RW));

  initial
  begin
    Address = 4'b0000;
    #700 Address = 4'b1000;
    #1200 Address = 4'b0110;
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
    Din = 4'b0000;
    #300 Din = 4'b1010;
    #700 Din = 4'b0001;
    #1400 Din = 4'b1111;
  end

  initial
  begin
    RST = 1'b1;
    #200 RST = 1'b0;
  end

  initial
  begin
    RW = 1'b1;
    #500 RW = 1'b0;
    #300 RW = 1'b1;
    #500 RW = 1'b0;
    #1000 RW = 1'b1;
    #700 RW = 1'b0;
  end

endmodule

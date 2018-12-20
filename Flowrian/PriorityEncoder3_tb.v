module PriorityEncoder3_tb;

reg D0;
reg D1;
reg D2;
wire [2:0] Dout;

PriorityEncoder3
 U0 (
  .D0(D0),
  .D1(D1),
  .D2(D2),
  .Dout(Dout));

  initial
  begin
    D0 = 1'b1;
    #1600 D0 = 1'b0;
  end

  initial
  begin
    D1 = 1'b0;
    #400 D1 = 1'b1;
    #800 D1 = 1'b0;
    #800 D1 = 1'b1;
  end

  initial
  begin
    D2 = 1'b0;
    #800 D2 = 1'b1;
  end

endmodule

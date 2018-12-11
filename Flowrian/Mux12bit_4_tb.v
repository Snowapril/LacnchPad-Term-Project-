module Mux12bit_4_tb;

reg [3:0] B_in;
reg D0;
reg D1;
reg D2;
reg D3;
reg D4;
reg D5;
reg D6;
reg D7;
reg D8;
reg D9;
wire D_out;
reg D_sharp;
reg D_star;

Mux12bit_4
 U0 (
  .B_in(B_in),
  .D0(D0),
  .D1(D1),
  .D2(D2),
  .D3(D3),
  .D4(D4),
  .D5(D5),
  .D6(D6),
  .D7(D7),
  .D8(D8),
  .D9(D9),
  .D_out(D_out),
  .D_sharp(D_sharp),
  .D_star(D_star));

  initial
  begin
    B_in = 4'b0000;
    #700 B_in = 4'b0001;
    #900 B_in = 4'b0010;
    #1100 B_in = 4'b0011;
    #900 B_in = 4'b0100;
    #1100 B_in = 4'b0101;
    #1000 B_in = 4'b0110;
    #900 B_in = 4'b0111;
    #1000 B_in = 4'b1000;
    #900 B_in = 4'b1001;
    #900 B_in = 4'b1010;
  end

  initial
  begin
    D0 = 1'b0;
  end

  initial
  begin
    D1 = 1'b1;
    #400 D1 = 1'b0;
  end

  initial
  begin
    D2 = 1'b0;
    #900 D2 = 1'b1;
    #400 D2 = 1'b0;
  end

  initial
  begin
    D3 = 1'b0;
    #1900 D3 = 1'b1;
    #500 D3 = 1'b0;
  end

  initial
  begin
    D4 = 1'b0;
    #2900 D4 = 1'b1;
    #500 D4 = 1'b0;
  end

  initial
  begin
    D5 = 1'b0;
    #3900 D5 = 1'b1;
    #500 D5 = 1'b0;
  end

  initial
  begin
    D6 = 1'b0;
    #4900 D6 = 1'b1;
    #500 D6 = 1'b0;
  end

  initial
  begin
    D7 = 1'b0;
    #5900 D7 = 1'b1;
    #500 D7 = 1'b0;
  end

  initial
  begin
    D8 = 1'b0;
    #6800 D8 = 1'b1;
    #500 D8 = 1'b0;
  end

  initial
  begin
    D9 = 1'b0;
    #7800 D9 = 1'b1;
    #500 D9 = 1'b0;
  end

  initial
  begin
    D_sharp = 1'b0;
    #8700 D_sharp = 1'b1;
    #500 D_sharp = 1'b0;
  end

  initial
  begin
    D_star = 1'b0;
    #9600 D_star = 1'b1;
  end

endmodule

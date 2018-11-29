module Mux12_4_4_tb;

reg [3:0] D0;
reg [3:0] D1;
reg [3:0] D10;
reg [3:0] D11;
reg [3:0] D2;
reg [3:0] D3;
reg [3:0] D4;
reg [3:0] D5;
reg [3:0] D6;
reg [3:0] D7;
reg [3:0] D8;
reg [3:0] D9;
wire [3:0] Dout;
reg [3:0] Sin;

Mux12_4_4
 U0 (
  .D0(D0),
  .D1(D1),
  .D10(D10),
  .D11(D11),
  .D2(D2),
  .D3(D3),
  .D4(D4),
  .D5(D5),
  .D6(D6),
  .D7(D7),
  .D8(D8),
  .D9(D9),
  .Dout(Dout),
  .Sin(Sin));

  initial
  begin
    D0 = 4'b0011;
  end

  initial
  begin
    D1 = 4'b0001;
  end

  initial
  begin
    D10 = 4'b1011;
  end

  initial
  begin
    D11 = 4'b0001;
  end

  initial
  begin
    D2 = 4'b1100;
  end

  initial
  begin
    D3 = 4'b1000;
  end

  initial
  begin
    D4 = 4'b0011;
  end

  initial
  begin
    D5 = 4'b0001;
  end

  initial
  begin
    D6 = 4'b1001;
  end

  initial
  begin
    D7 = 4'b0001;
  end

  initial
  begin
    D8 = 4'b1000;
  end

  initial
  begin
    D9 = 4'b0101;
  end

  initial
  begin
    Sin = 4'b1000;
    #200 Sin = 4'b1101;
    #200 Sin = 4'b0010;
    #200 Sin = 4'b1110;
    #200 Sin = 4'b1010;
    #200 Sin = 4'b0011;
    #200 Sin = 4'b0000;
    #200 Sin = 4'b0111;
    #200 Sin = 4'b0010;
    #200 Sin = 4'b0001;
    #200 Sin = 4'b1010;
    #200 Sin = 4'b1110;
    #400 Sin = 4'b1100;
    #200 Sin = 4'b1111;
    #200 Sin = 4'b0100;
    #200 Sin = 4'b0011;
    #200 Sin = 4'b1110;
    #200 Sin = 4'b0001;
    #400 Sin = 4'b1100;
    #200 Sin = 4'b0111;
    #200 Sin = 4'b0011;
    #200 Sin = 4'b1111;
    #200 Sin = 4'b0010;
    #200 Sin = 4'b1010;
    #200 Sin = 4'b0010;
    #200 Sin = 4'b1110;
    #200 Sin = 4'b1010;
    #200 Sin = 4'b0001;
    #200 Sin = 4'b0000;
    #200 Sin = 4'b1010;
    #200 Sin = 4'b1001;
    #200 Sin = 4'b0101;
    #200 Sin = 4'b0110;
    #200 Sin = 4'b1010;
    #200 Sin = 4'b0010;
    #200 Sin = 4'b1100;
    #200 Sin = 4'b0000;
    #200 Sin = 4'b0001;
    #200 Sin = 4'b1011;
    #200 Sin = 4'b1001;
    #200 Sin = 4'b1011;
    #200 Sin = 4'b0100;
    #200 Sin = 4'b1101;
    #400 Sin = 4'b0001;
    #200 Sin = 4'b1000;
    #200 Sin = 4'b0101;
    #200 Sin = 4'b1011;
  end

endmodule

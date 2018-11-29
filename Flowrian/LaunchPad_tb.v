module LaunchPad_tb;

wire [11:0] Accout;
reg BTN1;
reg BTN2;
reg BTN3;
reg BTN4;
reg BTN5;
reg BTN6;
reg BTN7;
reg BTN8;
reg BTN9;
reg BTN_0;
reg BTN_sharp;
reg BTN_star;
wire CE;
reg CLK;
reg Dip_1;
reg Dip_2;
reg Dip_3;
reg Dip_4;
wire [3:0] Dout;
wire Pout;
reg RST;
wire RW;

LaunchPad
 U0 (
  .Accout(Accout),
  .BTN1(BTN1),
  .BTN2(BTN2),
  .BTN3(BTN3),
  .BTN4(BTN4),
  .BTN5(BTN5),
  .BTN6(BTN6),
  .BTN7(BTN7),
  .BTN8(BTN8),
  .BTN9(BTN9),
  .BTN_0(BTN_0),
  .BTN_sharp(BTN_sharp),
  .BTN_star(BTN_star),
  .CE(CE),
  .CLK(CLK),
  .Dip_1(Dip_1),
  .Dip_2(Dip_2),
  .Dip_3(Dip_3),
  .Dip_4(Dip_4),
  .Dout(Dout),
  .Pout(Pout),
  .RST(RST),
  .RW(RW));

  initial
  begin
    BTN1 = 1'b0;
    #400 BTN1 = 1'b1;
    #400 BTN1 = 1'b0;
    #1100 BTN1 = 1'b1;
    #300 BTN1 = 1'b0;
  end

  initial
  begin
    BTN2 = 1'b0;
  end

  initial
  begin
    BTN3 = 1'b0;
    #2700 BTN3 = 1'b1;
    #300 BTN3 = 1'b0;
  end

  initial
  begin
    BTN4 = 1'b0;
  end

  initial
  begin
    BTN5 = 1'b0;
    #3200 BTN5 = 1'b1;
    #300 BTN5 = 1'b0;
  end

  initial
  begin
    BTN6 = 1'b0;
    #1200 BTN6 = 1'b1;
    #300 BTN6 = 1'b0;
  end

  initial
  begin
    BTN7 = 1'b0;
  end

  initial
  begin
    BTN8 = 1'b0;
  end

  initial
  begin
    BTN9 = 1'b0;
  end

  initial
  begin
    BTN_0 = 1'b0;
    #3700 BTN_0 = 1'b1;
    #300 BTN_0 = 1'b0;
  end

  initial
  begin
    BTN_sharp = 1'b0;
    #4200 BTN_sharp = 1'b1;
    #200 BTN_sharp = 1'b0;
  end

  initial
  begin
    BTN_star = 1'b0;
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
    Dip_1 = 1'b1;
    #1100 Dip_1 = 1'b0;
  end

  initial
  begin
    Dip_2 = 1'b0;
    #1600 Dip_2 = 1'b1;
  end

  initial
  begin
    Dip_3 = 1'b0;
  end

  initial
  begin
    Dip_4 = 1'b0;
    #2400 Dip_4 = 1'b1;
  end

  initial
  begin
    RST = 1'b1;
    #300 RST = 1'b0;
  end

endmodule

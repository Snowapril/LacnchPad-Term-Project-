module LaunchPad_tb;

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
reg CLK;
reg Dip_1;
reg Dip_2;
reg Dip_3;
reg Dip_4;
reg Dip_6;
reg Dip_7;
reg Dip_8;
wire [3:0] Dout;
wire Pout;
reg RST;
wire led_1;
wire led_1_B;
wire led_1_G;
wire led_1_R;
wire led_2;
wire led_2_B;
wire led_2_G;
wire led_2_R;
wire led_3;
wire led_3_B;
wire led_3_G;
wire led_3_R;
wire led_4;
wire led_4_B;
wire led_4_G;
wire led_4_R;
wire led_5;
wire led_6;
wire led_7;
wire led_8;

LaunchPad
 U0 (
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
  .CLK(CLK),
  .Dip_1(Dip_1),
  .Dip_2(Dip_2),
  .Dip_3(Dip_3),
  .Dip_4(Dip_4),
  .Dip_6(Dip_6),
  .Dip_7(Dip_7),
  .Dip_8(Dip_8),
  .Dout(Dout),
  .Pout(Pout),
  .RST(RST),
  .led_1(led_1),
  .led_1_B(led_1_B),
  .led_1_G(led_1_G),
  .led_1_R(led_1_R),
  .led_2(led_2),
  .led_2_B(led_2_B),
  .led_2_G(led_2_G),
  .led_2_R(led_2_R),
  .led_3(led_3),
  .led_3_B(led_3_B),
  .led_3_G(led_3_G),
  .led_3_R(led_3_R),
  .led_4(led_4),
  .led_4_B(led_4_B),
  .led_4_G(led_4_G),
  .led_4_R(led_4_R),
  .led_5(led_5),
  .led_6(led_6),
  .led_7(led_7),
  .led_8(led_8));

  initial
  begin
    BTN1 = 1'b1;
    #1400 BTN1 = 1'b0;
  end

  initial
  begin
    BTN2 = 1'b0;
    #1900 BTN2 = 1'b1;
    #1600 BTN2 = 1'b0;
  end

  initial
  begin
    BTN3 = 1'b0;
    #3900 BTN3 = 1'b1;
    #1900 BTN3 = 1'b0;
  end

  initial
  begin
    BTN4 = 1'b0;
    #6300 BTN4 = 1'b1;
    #2000 BTN4 = 1'b0;
  end

  initial
  begin
    BTN5 = 1'b0;
  end

  initial
  begin
    BTN6 = 1'b0;
  end

  initial
  begin
    BTN7 = 1'b1;
    #1400 BTN7 = 1'b0;
  end

  initial
  begin
    BTN8 = 1'b0;
  end

  initial
  begin
    BTN9 = 1'b0;
    #1900 BTN9 = 1'b1;
    #1600 BTN9 = 1'b0;
  end

  initial
  begin
    BTN_0 = 1'b0;
    #3900 BTN_0 = 1'b1;
  end

  initial
  begin
    BTN_sharp = 1'b0;
  end

  initial
  begin
    BTN_star = 1'b0;
  end

  initial
  begin
    CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
  end

  initial
  begin
    Dip_1 = 1'b0;
  end

  initial
  begin
    Dip_2 = 1'b0;
  end

  initial
  begin
    Dip_3 = 1'b1;
  end

  initial
  begin
    Dip_4 = 1'b0;
  end

  initial
  begin
    Dip_6 = 1'b0;
  end

  initial
  begin
    Dip_7 = 1'b0;
  end

  initial
  begin
    Dip_8 = 1'b0;
  end

  initial
  begin
    RST = 1'b0;
    #100 RST = 1'b1;
  end

endmodule

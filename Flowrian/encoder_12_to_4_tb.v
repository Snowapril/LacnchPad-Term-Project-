module encoder_12_to_4_tb;

wire chk;
reg in_0;
reg in_1;
reg in_10;
reg in_11;
reg in_2;
reg in_3;
reg in_4;
reg in_5;
reg in_6;
reg in_7;
reg in_8;
reg in_9;
wire [3:0] out_binary;

encoder_12_to_4
 U0 (
  .chk(chk),
  .in_0(in_0),
  .in_1(in_1),
  .in_10(in_10),
  .in_11(in_11),
  .in_2(in_2),
  .in_3(in_3),
  .in_4(in_4),
  .in_5(in_5),
  .in_6(in_6),
  .in_7(in_7),
  .in_8(in_8),
  .in_9(in_9),
  .out_binary(out_binary));

  initial
  begin
    in_0 = 1'b1;
    #200 in_0 = 1'b0;
  end

  initial
  begin
    in_1 = 1'b0;
    #400 in_1 = 1'b1;
    #300 in_1 = 1'b0;
  end

  initial
  begin
    in_10 = 1'b0;
    #900 in_10 = 1'b1;
    #300 in_10 = 1'b0;
  end

  initial
  begin
    in_11 = 1'b0;
    #1300 in_11 = 1'b1;
    #300 in_11 = 1'b0;
  end

  initial
  begin
    in_2 = 1'b0;
    #1800 in_2 = 1'b1;
    #300 in_2 = 1'b0;
  end

  initial
  begin
    in_3 = 1'b0;
    #2300 in_3 = 1'b1;
    #300 in_3 = 1'b0;
  end

  initial
  begin
    in_4 = 1'b0;
    #2900 in_4 = 1'b1;
    #200 in_4 = 1'b0;
  end

  initial
  begin
    in_5 = 1'b0;
    #3300 in_5 = 1'b1;
    #400 in_5 = 1'b0;
  end

  initial
  begin
    in_6 = 1'b0;
    #3900 in_6 = 1'b1;
    #300 in_6 = 1'b0;
  end

  initial
  begin
    in_7 = 1'b0;
    #4400 in_7 = 1'b1;
    #200 in_7 = 1'b0;
  end

  initial
  begin
    in_8 = 1'b0;
    #4700 in_8 = 1'b1;
    #200 in_8 = 1'b0;
  end

  initial
  begin
    in_9 = 1'b0;
    #5000 in_9 = 1'b1;
    #300 in_9 = 1'b0;
  end

endmodule

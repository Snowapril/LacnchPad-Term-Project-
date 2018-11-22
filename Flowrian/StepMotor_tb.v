module StepMotor_tb;

wire A;
wire AN;
wire B;
wire BN;
reg CLK;
reg RST;
reg TOG;

StepMotor
 U0 (
  .A(A),
  .AN(AN),
  .B(B),
  .BN(BN),
  .CLK(CLK),
  .RST(RST),
  .TOG(TOG));

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
    RST = 1'b1;
    #200 RST = 1'b0;
  end

  initial
  begin
    TOG = 1'b0;
    #500 TOG = 1'b1;
    #1500 TOG = 1'b0;
  end

endmodule

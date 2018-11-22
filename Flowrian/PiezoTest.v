module PiezoTest(EN,CLK,RST,DIV);

input EN;
input CLK;
input RST;
output DIV;

wire  w0;
wire  w1;
wire  w2;
wire  w3;

assign w0 = EN;
assign w1 = CLK;
assign w2 = RST;
assign DIV = w3;

PNU_CLK_DIV
     #(
      .cnt_num(2))
     s0 (
      .en(w0),
      .clk(w1),
      .rst(w2),
      .div_clk(w3));

endmodule


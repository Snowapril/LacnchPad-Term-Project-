module FullColorTest(red1,blue1,green1,red2,blue2,green2,red3,blue3,green3,red4,blue4,green4,BTN1,BTN2,BTN3);

output red1;
output blue1;
output green1;
output red2;
output blue2;
output green2;
output red3;
output blue3;
output green3;
output red4;
output blue4;
output green4;
input BTN1;
input BTN2;
input BTN3;

wire  w4;
wire  w3;
wire  w2;

assign red1 = w3;
assign blue1 = w4;
assign green1 = w2;
assign red2 = w3;
assign blue2 = w4;
assign green2 = w2;
assign red3 = w3;
assign blue3 = w4;
assign green3 = w2;
assign red4 = w3;
assign blue4 = w4;
assign green4 = w2;
assign w3 = BTN1;
assign w4 = BTN2;
assign w2 = BTN3;

endmodule


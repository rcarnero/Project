module MuxMReg(MReg, RS, saida);

input MReg;
input [4:0] RS;
output reg [4:0] saida;

always @(MReg)
begin

case(MReg)
1'd0:saida <= RS;
1'd1:saida <= 5'd29;
endcase

end
endmodule

module MuxAluSrcB (AluSrcB, B, ImeOf, ImeOf2, saida);

input [1:0] AluSrcB;
input [31:0] B;
input [31:0] ImeOf;
input [31:0] ImeOf2;
output reg [31:0] saida;

always @(AluSrcB)
begin

case (AluSrcB)
2'd0: saida <= B;
2'd1: saida <= 31'd4;
2'd2: saida <= ImeOf;
2'd3: saida <= ImeOf2;
endcase

end
endmodule

module MuxMuxPC (MuxPC, AluOut, EPC, offset, PC, Alu_Imediato, saida);

input[2:0] MuxPC;
input [31:0] AluOut;
input [31:0] EPC;
input [31:0] offset;
input [31:0] PC;
input [31:0] Alu_Imediato;
output reg [31:0] saida;

always @(MuxPC)
begin

case(MuxPC)
3'd0: saida <= AluOut;
3'd1: saida <= EPC;
3'd2: saida <= offset;
3'd3: saida <= PC;
3'd4: saida <= Alu_Imediato;
endcase

end
endmodule

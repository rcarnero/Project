module Divisao (clock, reset, A, B, CtoD, DtoC, Quociente, Resto, DivZero);

input clock;
input reset;
input [31:0] A;
input [31:0] B;
input CtoD;

output reg DtoC;
output reg [31:0] Quociente;
output reg [31:0] Resto;
output reg DivZero;

always @ (negedge Clock)
begin

if (reset == 1) begin //Resetando o m�dulo
	
end


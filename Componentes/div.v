module div(A, B, DtoC, CtoD, High, Low, Clock, Reset);
  input [31:0] A;
  input [31:0] B;
  input CtoD;
  input Clock;
  input Reset;
  integer Counter;
  reg sgA;
  reg sgB;
  integer quo;
  integer rem;
  reg [31:0] Bb,Aa;
  output reg DtoC;
  output reg [31:0] High;
  output reg [31:0] Low;
  output reg DivZero;
  always @(negedge Clock) begin
	if(reset==0)begin
		if(CtoD)begin
			if(B==32'b0)begin
				DivZero<=1;
				DtoC<=1;
			end
			else begin
				DtoC<=0;
				rem=0;
				quo=0;
				Counter=30;
				sgA<=A[31];
				sgB<=B[31];
				if(A[31])begin
					Aa<=(~A)+32'b1;
				end
				else begin
					Aa<=A;
				end
				if(B[31])begin
					Bb<=(~B)+32'b1;
				end
				else begin
					Bb<=B;
				end
			end
		end
		if(Counter==-1)begin
			DtoC<=1;
			High<=quo;
			Low<=rem;
		end
		else begin
			rem=rem<<1;
			rem[0]=Aa[Counter]//not sure
			if(rem>=Aa)begin
				rem=rem-Aa;
				quo[Counter]=1;
			end
			Counter=Counter-1;	
		end		
	end
  
  	
  end
endmodule

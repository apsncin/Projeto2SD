module ula(
	input [3:0] A, B,
	input [2:0] seletor,
	output [4:0] S,
	output cout
);
	always@(*) begin
		case(seletor)
		3'b000:
			S = A + B;
			cout = S[4];
			S[4] = 0;
		3'b001:
			S = A - B;
			cout = S[4];
			S[4] = 0;
		3'b010: //Shift right => Dividir por 2
			S = B>>1;
		3'b011: //Shift left => Multiplicar por 2
			S = B<<1;
			cout = S[4];
			S[4] = 0;
		default:
			S = A + B;
		endcase	
	end
endmodule 
module controle(
	input clock,
	input [2:0] instrucao,
	output [1:0] tx, ty, tz,
	output [2:0] tula
);

	always@(posedge clock) begin
		case(instrucao)
		3'b000: //Clear + loadX
			ty = 00;
			tx = 10;
			tz = 00;
			tula = 000;
		3'b001: //ADD
			ty = 10;
			tx = 10;
			tz = 01;
			tula = 000;
		3'b010: //SUB 
			ty = 10;
			tx = 10;
			tz = 01;
			tula = 001;
		3'b011: //SR - Div2
			ty = 10;
			tx = 10;
			tz = 01;
			tula = 010;
		3'b100: //SL - Mult2
			ty = 10;
			tx = 10;
			tz = 01;
			tula = 011;
		3'b101: //Display
			ty = 01;
			tx = 01;
			tz = 10;
			tula = 000;
		endcase
	end
endmodule

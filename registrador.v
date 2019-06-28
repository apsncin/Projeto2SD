module registrador(
	input clock,
	input [3:0] A,
	input [1:0] T,
	output [3:0] S
);

	always@(posedge clock) begin
		case(T)
		2'b00: //Reset
			S = 0;
		2'b01: //Hold
			S = S;
		2'b10: //Load
			S = A;
		default:
			S = S;
		endcase
	end
endmodule
	
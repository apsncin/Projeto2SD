module cpu(clock, instrucao, Ax);
	input clock;
	input [2:0] instrucao;
	input [3:0] Ax;
	controle c (clock, instrucao, tx, ty, tz, tula); 
	registrador x (clock, Ax,tx,Sx);
	registrador y (clock, Sula,ty,Sy);
	ula u (Sx, Sy, tula, Sula, cout);
	registrador z (clock, Sy, tz, Sz);
endmodule
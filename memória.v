module memoria_RAM(
  input tx, ty, tz,
  input clock
  input [3:0] dado_in
  input [1:0] endereco
  output reg [3:0] dado_out;

  reg [9:0] memoria[4];
);
always@(posedge clock) begin
  //
  if(tx && !ty) memoria[endereco]=dado_in;
  //
  else if(tx && ty && tz) dado_out=memoria[endereco];
  //
  else if(!tz && !tx) dado_out=7'bz;

end
end module

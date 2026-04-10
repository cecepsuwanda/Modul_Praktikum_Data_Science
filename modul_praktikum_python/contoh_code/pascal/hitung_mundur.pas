uses crt; 
Var 
  N : integer; (* angka awal *) 
  i: integer;(* counter *) 
begin 
 write(‘Masukan angka : ‘);readln(N); 
 for i:=N downto 1 do 
 write(i,’, ’); 
 write(‘0’); 
end.

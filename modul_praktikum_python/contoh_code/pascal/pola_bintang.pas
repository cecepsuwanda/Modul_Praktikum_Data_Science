uses crt; 
Var 
  N : integer; (* u *) 
  I,j: integer;(* counter *) 
begin 
 write(‘Masukan jumlah awal bintang : ‘);readln(N); 
 for i:=N downto 0 do 
  begin  
   for j:=1 to i do  
     write(‘*’); 
  writeln; 
  end;     
end.

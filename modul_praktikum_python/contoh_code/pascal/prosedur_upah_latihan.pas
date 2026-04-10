uses crt; 

procedure input(var Nama:String;var gol:char;var 
jmlanak:integer); 
begin 
 (* definisikan sendiri *)   
end; 

function Upahkotor(gol:char):real; 
begin 
  (* definisikan sendiri *) 
end; 

function Persentunjangan(jmlanak:integer)real; 
begin 
  (* definisikan sendiri *) 
end; 

var 
  (* definisikan sendiri *) 
Begin 
  input(Nama,Gol,jmlanak); 
  Upahbersih:= upahkotor(Gol) –  
               (upahkotor(Gol)*persentunjangan(jmlanak)); 
  writeln(‘Upah        : ’,upahbersih); 
end.

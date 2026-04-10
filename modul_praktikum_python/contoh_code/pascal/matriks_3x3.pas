uses crt; 
type  
  tmatrik=array[1..3,1..3]of integer; 

procedure isi(var matrik:tmatrik); 
var 
 i,j:integer; 
begin 
 for i:=1 to 3 do   
  for j:=1 to 3 do 
    begin   
     write(‘A[‘,i,’,’,j,’] = ‘);readln(matrik[i,j]); 
    end; 
end; 

procedure cetak(matrik:tmatrik); 
var 
 i,j:integer; 
begin  
 for i:=1 to 3 do 
 begin   
  for j:=1 to 3 do   
     write(matrik[i,j]:3); 
  writeln; 
 end; 
end; 

var 
 matrik:tmatrik; 
begin 
  writeln(‘Mengisi elemen matrik A’); 
  isi(matrik); 
  writeln(‘Mencetak elemen matrik A’); 
  cetak(matrik); 
end.

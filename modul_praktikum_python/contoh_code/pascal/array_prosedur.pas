uses crt; 
type 
  Tarray=array[1..3] of integer; 

procedure isi(var nilai:Tarray); 
var 
  i:integer; 
begin 
  i:=1; 
  while (i<=3) do 
  begin  
   write(‘Nilai ke ‘,i,’ = ‘);readln(nilai[i]); 
   i:=i+1;  
  end; 
end; 

procedure cetak(nilai:Tarray); 
var 
 i:integer; 
begin 
 for i:=1 to 3 do 
 begin 
  writeln(‘Nilai ke ‘,i,’ = ‘,nilai[i]); 
 end; 
end; 

var 
 nilai:Tarray; 
 n:integer;(*data yang dicari*) 
begin 
  writeln(‘Mengisi elemen array’); 
  isi(nilai); 
  writeln(‘Mencetak elemen array’); 
  cetak(nilai); 
end.

uses crt; 
var 
  Nama : string; 
  Gol  : char; 
  JmlAnak : integer; 
  Upahkotor,upahbersih : real; 
  PersenTunjangan:real; 
Begin 
  Write(‘Nama        : ’);readln(Nama); 
  Write(‘Gol (A - D) : ’);readln(Gol); 
  Write(‘Jumlah Anak : ’);readln(JmlAnak); 

  Case Gol of 
  ‘A’ : Upahkotor:=1000000; 
  ‘B’ : Upahkotor:=800000; 
  ‘C’ : Upahkotor:=600000; 
  ‘D’ : Upahkotor:=400000; 
  end;   

  if(JmlAnak>2)then  
    PersenTunjangan := 0.3   
  else 
   PersenTunjangan := 0.2; 

  Upahbersih:= upahkotor – (upahkotor*persentunjangan); 
  writeln(‘Upah        : ’,upahbersih); 
end.

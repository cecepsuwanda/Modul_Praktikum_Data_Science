uses crt; 
var 
  i : integer; 
  j : real; 
  kar : char; 
  NString : string; 

begin 
  clrscr; 
  writeln(‘Contoh membaca dan menulis’);  
  write(‘Masukkan nilai integer  : ’);readln(i); 
  write(‘Masukkan nilai real     : ‘);readln(j); 
  write(‘Masukkan nilai karakter : ‘);readln(kar); 
  write(‘Masukkan nilai string   : ‘);readln(Nstring); 
  writeln(‘Nilai integer yang dibaca  =‘,i); 
  writeln(‘Nilai real yang dibaca     =‘,j); 
  writeln(‘Nilai karakter yang dibaca =‘,kar); 
  writeln(‘Nilai string yang dibaca   =‘,NString); 
  readkey;  
end.

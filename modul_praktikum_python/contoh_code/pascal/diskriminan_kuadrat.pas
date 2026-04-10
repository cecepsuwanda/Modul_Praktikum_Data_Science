uses crt; 
var 
  a,b,c,D : real; 
begin 
  writeln(‘Menentukan Jenis Akar Persamaan Kuadrat’); 
  writeln(‘      Persamaan Umum : ax^2+bx+c       ’); 
  writeln; 
  write(‘a = ’);readln(a); 
  write(‘b = ’);readln(b); 
  write(‘c = ’);readln(c); 
  writeln; 
  D:=(b*b)-(4*a*c); 
  writeln(‘Nilai Diskriminan : ’,D);  
  write(‘Jenis Akar : ’); 
  if D=0 then  
     write(‘Kembar’) 
  else 
    if D>0 then  
     write(‘Berlainan’) 
    else 
    if D<0 then  
     write(‘imajiner berlainan’); 
  readkey; 
end.

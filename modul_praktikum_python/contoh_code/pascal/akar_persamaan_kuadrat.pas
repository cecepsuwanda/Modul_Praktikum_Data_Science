uses crt; 
var 
  a,b,c,D,x1,x2 : real; 
begin 
  writeln(‘    Mencari Akar Persamaan Kuadrat     ’); 
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
    begin  
     X1:=(-b)/(2*a); 
     writeln(‘Kembar’); 
     writeln(‘x1=x2=’,x1:10:2); 
    end 
  else 
    if D>0 then  
      begin  
        x1:=((-b)+ sqrt(D))/(2*a); 
        x2:=((-b)+ sqrt(D))/(2*a); 
        writeln(‘Berlainan’); 
        writeln(‘x1 = ’,x1:10:2); 
        writeln(‘x2 = ’,x2:10:2); 
      end 
    else 
    if D<0 then  
     begin  
        x1:=(-b)/(2*a); 
        x2:=sqrt(-d)/(2*a); 
        writeln(‘2 akar imajiner berlainan’); 
        writeln(‘x1 = ’,x1:5:2,’+‘,x2:5:2,’i’); 
        writeln(‘x2 = ’,x1:5:2,’-’,x2:5:2,’i’); 
      end; 

end.

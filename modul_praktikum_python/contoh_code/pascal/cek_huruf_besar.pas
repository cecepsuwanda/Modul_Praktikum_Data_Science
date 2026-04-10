uses crt; 
var 
  A : char; 
begin 
  write(‘Masukkan Suatu Karakter :’); 
  A:=readkey; 
  writeln; 
  if (A>=’A’)and(A<=’Z’) then  
    begin  
     writeln(‘Anda menekan huruf besar’); 
     writeln(‘Huruf yang anda tekan, Huruf ’,A); 
    end 
  else 
    begin  
     writeln(‘Anda tidak menekan huruf besar’); 
     writeln(‘Karakter yang anda tekan, Karakter ’,A); 
    end; 
  readkey; 
end.

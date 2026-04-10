uses crt; 
var 
  A : char; 
begin 
  write(‘Masukkan Suatu Karakter :’); 
  A:=readkey; 
  writeln; 
  if A=’A’ then  
     writeln(‘Anda menekan A besar’) 
  else 
     writeln(‘Anda tidak menekan A besar’); 
  readkey; 
end.

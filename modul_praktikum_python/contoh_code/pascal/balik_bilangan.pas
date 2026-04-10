Uses crt; 
var  
 i:integer; 
begin 
 i:=2345; 
 writeln(‘Bilangan : ’,i); 
 write(‘Dibalik  : ‘); 
 while(i<>0)do 
 begin 
   write(i mod 10); 
   i:=i div 10; 
 end; 
end.

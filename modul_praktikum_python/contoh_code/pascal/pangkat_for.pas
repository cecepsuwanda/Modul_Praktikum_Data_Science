uses crt; 
var 
  i,pangkat:integer;   
  hasilpangkat,dipangkatkan:real; 
begin   
 write(‘Bilangan yang akan dipangkatkan : ‘); 
 readln(dipangkatkan); 
 write(‘Masukkan pangkatnya : ‘);readln(pangkat); 
 hasilpangkat:=1; 
 for i:=1 to pangkat do  
    hasilpangkat:=hasilpangkat*dipangkatkan; 
 write(dipangkatkan,‘^’,pangkat,’ : ‘,hasilpangkat); 
readkey; 
end.

uses crt; 
function fpangkat(dipangkatkan:real;pangkat:integer):real; 
var  
  (* variabelnya anda tentukan sendiri  *) 
begin 
  (* pahami program pangkat.pas dan kemudian lengkapi bagian 
ini*) 
end; 

var 
  (* lengkapi bagian ini *) 
begin 
  write(‘Bilangan yang akan dipangkatkan : ‘); 
  readln(dipangkatkan); 
  write(‘Masukkan pangkatnya : ‘);readln(pangkat);  
  write(dipangkatkan,‘^’,pangkat,’ : ‘, 
        fpangkat(dipangkatkan,pangkat)); 
  readkey; 
end.

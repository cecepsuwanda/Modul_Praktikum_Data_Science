uses crt; 
var 
  JumlahAnak : integer; 
  GajiKotor,Tunjangan,PersenTunjangan : real ; 
begin 
  PersenTunjangan:=0.2; 
  write(‘Gaji Kotor ?’);readln(GajiKotor); 
  write(‘Jumlah Anak ?’);readln(JumlahAnak); 
  if JumlahAnak>2 then  
     PersenTunjangan:=0.3; 
  Tunjangan := PersenTunjangan*GajiKotor; 
  writeln(‘Besar Tunjangan = Rp ’,Tunjangan:10:2); 
  readkey;   
end.

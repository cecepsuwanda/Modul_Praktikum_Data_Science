uses crt; 
var 
  JumlahAnak : integer; 
  GajiKotor,Tunjangan,PersenTunjangan,PersenPotongan : real ; 
  Potongan:Real; 
begin 
  PersenTunjangan:=0.2; 
  PersenPotongan:=0.05; 
  write(‘Gaji Kotor ?’);readln(GajiKotor); 
  write(‘Jumlah Anak ?’);readln(JumlahAnak); 
  if JumlahAnak>2 then  
   begin 
     PersenTunjangan:=0.3; 
     PersenPotongan:=0.07;  
   end; 
  Tunjangan := PersenTunjangan*GajiKotor; 
  Potongan:= PersenPotongan*GajiKotor; 
  writeln(‘Besar Tunjangan = Rp ’,Tunjangan:10:2);   
  writeln(‘Besar Potongan  = Rp ’,Potongan:10:2);   
  readkey;  
end.

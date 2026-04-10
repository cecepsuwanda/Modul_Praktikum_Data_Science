uses crt; 
type 
  Tpegawai=record 
           Nama : string[20]; 
           Gol  : char; 
           JmlAnak : integer; 
           end; 
var 
  pegawai:tpegawai; 
  Upahkotor,upahbersih : real; 
  PersenTunjangan:real; 
Begin 
  Write(‘Nama        : ’);readln(pegawai.Nama); 
  Write(‘Gol (A - D) : ’);readln(pegawai.Gol); 
  Write(‘Jumlah Anak : ’);readln(pegawai.JmlAnak); 

  Case pegawai.Gol of 
  ‘A’ : Upahkotor:=1000000; 
  ‘B’ : Upahkotor:=800000; 
  ‘C’ : Upahkotor:=600000; 
  ‘D’ : Upahkotor:=400000; 
  end;   

  if(pegawai.JmlAnak>2)then  
    PersenTunjangan := 0.3   
  else 
   PersenTunjangan := 0.2; 

  Upahbersih:= upahkotor – (upahkotor*persentunjangan); 
  writeln(‘Upah        : ’,upahbersih); 
end.

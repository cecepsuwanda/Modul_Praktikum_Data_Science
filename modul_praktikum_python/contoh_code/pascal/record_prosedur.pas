uses crt; 
type 
  Tpegawai=record 
           Nama : string[20]; 
           Gol  : char; 
           JmlAnak : integer; 
           end; 
procedure input(var pegawai:tpegawai); 
begin 
 with pegawai do 
 begin  
  write(‘Nama        : ’);readln(Nama); 
  write(‘Gol (A - D) : ’);readln(Gol); 
  write(‘Jumlah Anak : ’);readln(JmlAnak); 
 end; 
end; 

function upahkotor(gol:char):real; 
begin 
  Case Gol of 
  ‘A’ : upahkotor:=1000000; 
  ‘B’ : upahkotor:=800000; 
  ‘C’ : upahkotor:=600000; 
  ‘D’ : upahkotor:=400000; 
  end;   
end; 

function persentunjangan(jmlanak:integer):real; 
begin 
  if(JmlAnak>2)then  
    persenTunjangan := 0.3   
  else 
   persenTunjangan := 0.2; 
end; 

procedure cetak(pegawai:tpegawai); 
var 
upahbersih : real; 
begin 
 clrscr; 
 with pegawai do 
 begin  
  writeln(‘Nama        : ’,Nama); 
  writeln(‘Gol (A - D) : ’,Gol); 
  writeln(‘Jumlah Anak : ’,JmlAnak); 
  upahbersih:= upahkotor(gol) – 
(upahkotor(gol)*persentunjangan(jmlanak)); 
  writeln(‘Upah        : ’,upahbersih:5:2); 
 end; 
end; 

var 
  pegawai:tpegawai; 
Begin 
  input(pegawai); 
  cetak(pegawai); 
end.

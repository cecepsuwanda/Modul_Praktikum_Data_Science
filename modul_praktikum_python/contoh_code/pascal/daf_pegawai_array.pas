uses crt; 
type 
  Tpegawai=record 
           Nama : string[20]; 
           Gol  : char; 
           JmlAnak : integer; 
           end; 
  Tdaf_peg=array[1..5]of Tpegawai; 

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
  daf_pegawai:tdaf_peg; 
  i:integer; 
Begin 
For i:=1 to 5 do   
begin 
  writeln('Data ke ',i,':'); 
  input(daf_pegawai[i]); 
end; 
For i:=1 to 5 do   
 begin 
   writeln('Data ke ',i,':'); 
   cetak(daf_pegawai[i]); 
   readkey; 
 end; 
end.

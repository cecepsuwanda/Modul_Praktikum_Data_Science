uses crt; 
const 
   pi = 3.14; 
var 
  pilih : integer; 
  sisi,jari,tinggi : real; 
begin 
  writeln(‘         <<< Menu >>>        ’); 
  writeln; 
  writeln(‘1. Menghitung Isi Kubus’); 
  writeln(‘2. Menghitung Luas Lingkaran’); 
  writeln(‘3. Menghitung Isi Silisnde’); 
  writeln; 
  write(‘Pilih Nomor : ’);readln(pilih); 
  case pilih of 
  1 : begin 
       write(‘Panjang Sisi Kubus : ’);readln(sisi); 
       writeln(‘Isi Kubus : ’,sisi*sisi*sisi); 
      end; 
  2 : begin 
       write(‘Jari-jari lingkaran : ’);readln(jari); 
       writeln(‘Luas Lingkaran : ’,pi*jari*jari); 
      end; 
  3 : begin 
       write(‘Jari-jari lingkaran : ’);readln(jari); 
       write(‘Tinggi Silinder : ’);readln(tinggi); 
       writeln(‘Isi Silinder : ’,pi*jari*jari*tinggi); 
      end; 
  end;  
end.

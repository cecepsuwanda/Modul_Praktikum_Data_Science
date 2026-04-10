uses crt; 
var 
  TF : boolean; 
  i,j,hsl : integer; 
  x,y  : real; 
  hsl1 : integer; 
  hsl2 : real;  

begin 
  clrscr; 
  (* proses boolean *) 
  writeln('tabel kebenaran'); 
  writeln('-----------------------------------------------------'); 
  writeln('|   x1  |   x2  |     x1 and x2     |    x1 or x2  |'); 
  writeln('----------------------------------------------------'); 
  writeln('| true  | true  |',(true and true):12,'|':8, 
          (true or true):10,'|':8); 
  writeln('| true  | false |',(true and false):12,'|':8, 
          (true or false):10,'|':8); 
  writeln('| false | true  |',(false and true):12,'|':8, 
          (false or true):10,'|':8); 
  writeln('| false | false |',(false and false):12,'|':8, 
          (false or false):10,'|':8); 
  writeln('----------------------------------------------------'); 

  (* proses operasi numerik *) 
  i:=5;j:=2; 
  writeln('operasi numerik pada tipe data integer'); 
  writeln('---------------------------'); 
  writeln('| operasi | hasil operasi |'); 
  writeln('---------------------------'); 
  writeln('| ',i,' + ',j,'   | ',(i+j):6,'        |'); 
  writeln('| ',i,' - ',j,'   | ',(i-j):6,'        |'); 
  writeln('| ',i,' * ',j,'   | ',(i*j):6,'        |'); 
  writeln('| ',i,' / ',j,'   | ',(i/j):6:2,'        |'); 
  writeln('| ',i,' div ',j,' | ',(i div j):6,'        |'); 
  writeln('| ',i,' mod ',j,' | ',(i mod j):6,'        |'); 
  writeln('---------------------------'); 
  writeln(‘Tekan enter untuk meneruskan . . .’); 
  readkey; 

 x:=5.0;y:=2.0; 
  writeln('operasi numerik pada tipe data float'); 
  writeln('---------------------------'); 
  writeln('| operasi | hasil operasi |'); 
  writeln('---------------------------'); 
  writeln('| ',x:3:1,' + ',y:3:1,'   | ',(x+y):6:1,'    |'); 
  writeln('| ',x:3:1,' - ',y:3:1,'   | ',(x-y):6:1,'    |'); 
  writeln('| ',x:3:1,' * ',y:3:1,'   | ',(x*y):6:1,'    |'); 
  writeln('| ',x:3:1,' / ',y:3:1,'   | ',(x/y):6:1,'    |'); 
  writeln('---------------------------'); 

 (* operator relasi numerik *) 
 TF := x<>y; 
 writeln(‘5.0 <> 2.0 adalah=’,TF); 
 TF := x<y; 
 writeln(‘5.0 < 2.0 adalah=’,TF); 
 readkey; 
end.

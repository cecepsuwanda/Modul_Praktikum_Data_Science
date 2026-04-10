uses crt; 
Var 
  i,N : integer;(* counter dan jumlah data *) 
  Data,Rata,Total : real;  
begin 
  write(‘Banyaknya data : ’);readln(N); 
  for i:=1 to N do 
    begin 
       write(‘Data ke ’,i,’ : ‘);readln(Data); 
       Total:=Total+Data; 
    end; 
    Rata:=Total/N; 
  writeln(‘Banyaknya Data       : ‘,N); 
  writeln(‘Total Nilai Data     : ‘,Total:5:2); 
  writeln(‘Rata-rata nilai Data : ’,Rata:5:2)  
end.

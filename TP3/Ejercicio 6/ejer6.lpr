program ejer6;

const
     sueldoInicial=1000;

var
   mov:char;
   dep,ret,sueldo:real;

begin
     writeln('Ingrese un movimiento (D,R,F)');
     readln(mov);
     mov:=upcase(mov);
     sueldo:=sueldoInicial;
     while (mov <> 'F') do
           begin
                if (mov = 'D') then
                   begin
                        writeln('Cuanto desea depositar');
                        readln(dep);
                        sueldo:=sueldo + dep;
                   end
                else if (mov = 'R') then
                   begin
                        writeln('Cuanto desea extraer');
                        readln(ret);
                        sueldo:=sueldo - ret;
                   end;

                   writeln('Ingrese un movimiento (D,R,F)');  //Considerar nunca evaluar dentro del if la condicion que ya evalua el while
                   readln(mov);
                   mov:=upcase(mov);

           end;

     writeln('Su sueldo final es de: $',sueldo:8:2);

     readln;

end.



// Este ejemplo muestra el uso de expresiones, operadores y funciones matematicas

Proceso Matematicas
   Salir<-0;
   Escribir 'Ingresar Numero:';
   Leer N;
   Repetir
      Escribir ' ';
      Escribir 'Presione Enter para continuar';
      Leer x;
      Escribir '1 - Seno, Coseno, ArcoTangente';
      Escribir '2 - Lograritmo Natural, Funcion Exponencial';
      Escribir '3 - Truncar, Redondear';
      Escribir '4 - Raiz Cuadrada';
      Escribir '5 - Valor Absoluto';
      Escribir '6 - Separar parte entera y decimal';
      Escribir '7 - Hallar Factorial';
      Escribir '8 - Averiguar si es primo';
      Escribir '9 - Ingresar Otro Numero';
      Escribir ' ';
      Escribir '0 - para Salir';
      Escribir ' ';
      Leer Opcion;
      Segun Opcion Hacer
         1: 
            Escribir 'Seno:',Sen(N);
            Escribir 'Coseno:',Cos(N);
            Escribir 'ArcTangente:',Atan(N);
         2: 
            Si N<=0
               Entonces Escribir 'El numero debe ser mayor a cero!';
               Sino
                  Escribir 'Log Nat.:',ln(N);
                  Escribir 'Func Expon.:',exp(N);
            FinSi
         3: 
            Escribir 'Turncar:',trunc(N);
            Escribir 'Redondear:',redon(N);
         4: Escribir 'Raiz Cuad.:',rc(N);
         5: Escribir 'Valor Abs.:',abs(N);
         6: 
            Escribir 'Parte Entera:',Trunc(n);
            Escribir 'Parte Decimal:',n-Trunc(n);
         7: 
            Si N<>Trunc(N)
               Entonces
                  Escribir 'El numero debe ser entero!';
               Sino
                  Si abs(N)>50
                     Entonces Escribir 'Resultado muy grande!';
                     Sino
                        r<-1; f<-1;
                        Mientras f<=abs(N) Hacer
                           Si N<0 
                              Entonces r<-(-f)*r;
                                    Sino r<-f*r;
                           FinSi
                           f<-f+1;
                        FinMientras
                        Escribir 'Factorial:',r;
                  FinSi
            FinSi
         8: 
            Si N<>Trunc(N)
               Entonces
                  Escribir 'El numero debe ser entero!';
               Sino
                  Primo<-'Si'; 
                  Si N/2=trunc(N/2)
                     Entonces 
                        Primo<-'No';
                  FinSi
                  Si N<0 
                     entonces Nu<-N*-1;
                     sino Nu<-N;
                  FinSi
                  Nu<-RC(Nu);
                  f<-3;
                  Mientras f<=Nu Y Primo='Si' Hacer
                     Si N/F=trunc(N/F)
                        Entonces Primo<-'No';
                     FinSi
                     f<-f+2;
                  FinMientras
                  Escribir 'Numero Primo:',Primo;
                  Si f=3
                     Entonces F<-4;
                  FinSi
                  Si Primo='No'
                     Entonces 
                        Escribir N,'=',f-2,'x',N/(f-2);
                  FinSi
            FinSi
         9:
            Escribir 'Ingrese Numero:';
            Leer N;
         0: Salir<-1;
         De Otro Modo:
            Escribir 'Opcion No Valida!';
      FinSegun
   Hasta que Salir=1
FinProceso









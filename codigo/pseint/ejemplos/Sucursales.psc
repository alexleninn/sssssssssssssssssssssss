
   // Problema Ejemplo:
   
   //    Se ingresan los precios de 5 articulos y las cantidades vendidas
   // por una empresa en sus 4 sucursales. Informar:
   //    * Las cantidades totales de cada articulo.
   //    * La cantidad de articulos en la sucursal 2.
   //    * La cantidad del articulo 3 en la sucursal 1.
   //    * La recaudacion total de cada sucursal.
   //    * La recaudacion total de la empresa.
   //    * La sucursal de mayor recaudacion.
   
Proceso Sucursales
   
   // Inicializar Prec=Arreglo de precios y Cant=Arreglo para cantidades
   Dimension Prec[5], Cant[4,5];
   
   // Leer Precios
   Para I<-1 Hasta 5 Hacer
      Escribir 'Ingrese Precio Articulo ',I,':';
      Leer Prec[I];
   FinPara
   
   // Leer Cantidades
   Para J<-1 Hasta 4 Hacer
      Para I<-1 Hasta 5 Hacer
         Escribir 'Ingrese Cant. de Articulo ',I,', en Sucursal ',J,':';
         Leer Cant[J,I];
      FinPara
   FinPara
   
   // Sumar cantidades por articulos
   Escribir 'Cantidades por articulos:';
   Para I<-1 Hasta 5 Hacer
      Suma<-Cant[1,I]+Cant[2,I]+Cant[3,I]+Cant[4,I];
      Escribir 'Total articulo ',I,':',Suma;
   FinPara
   
   // Informar Total de Articulos Sucursal 2
   Suc2<-0;
   Para I<-1 Hasta 5 Hacer
      Suc2<-Suc2+Cant[2,I];
   FinPara
   Escribir 'Total Sucursal 2:',Suc2;
   
   // Informar Sucursal 1, Articulo 3:
   Escribir 'Sucursal 1, Articulo 3:',Cant[1,3];
   
   
   // Acumular total de cada sucursal (TotSuc) y
   // total de la empresa (TotEmp)
   MayorRec<-0; NumMayor<-0; TotEmp<-0;
   Para J<-1 Hasta 4 Hacer
      TotSuc<-0;
      Para I<-1 Hasta 5 Hacer
         TotSuc<-TotSuc+(Cant[J,I]*Prec[i]);
      FinPara
      Escribir 'Recaudaciones Sucursal ',J,':',TotSuc;
      Si TotSuc>MayorRec
         entonces MayorRec<-TotSuc; NumMayor<-J; 
      FinSi
      TotEmp<-TotEmp+TotSuc;
   FinPara
   Escribir 'Recaudacion total de la empresa:',TotEmp;
   Escribir 'Sucursal de Mayor Recaudacion:',NumMayor;

FinProceso


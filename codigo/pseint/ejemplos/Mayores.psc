
// Busca los dos mayores de una lista de N datos

Proceso Mayores

	Dimension datos[200];
	
	Escribir "Ingrese la cantidad de datos:";
	Leer n;
	
	Para i<-1 Hasta n Hacer
		Escribir "Ingrese el dato ",i,":";
		Leer datos[i];
	FinPara

	
	Si datos[1]>datos[2] Entonces
		may1<-datos[1];
		may2<-datos[2];
	Sino
		may1<-datos[2];
		may2<-datos[1];
	FinSi
	
	Para i<-3 Hasta n Hacer
		Si datos[i]>may1 Entonces
			may2<-may1;
			may1<-datos[i];
		Sino 
			Si datos[i]>may2 Entonces
				may2<-datos[i];
			FinSi
		FinSi
	FinPara
	

	Escribir "El mayor es: ",may1;
	Escribir "El segundo mayor es: ",may2;
	
FinProceso

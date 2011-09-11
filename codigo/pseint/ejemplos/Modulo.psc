Proceso Modulo
	Escribir "Ingrese el numero: ";
	Leer N;
	Escribir "Ingrese el divisor: ";
	Leer M;
	Si N mod M = 0 Entonces
		Escribir M," es divisor exacto de ",N,".";
	Sino
		Escribir "El resto de dividir ",N," por ",M," es: ",N mod M;
	FinSi
FinProceso

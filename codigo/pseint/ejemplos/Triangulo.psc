
//    Lee los tres lados de un triangulo rectangulo, determina 
// si corresponden (por Pitargoras) y en caso afirmativo 
// calcula el area

Proceso TrianguloRectangulo
	
	// cargar datos
	Escribir "Ingrese el lado 1:";
	Leer l1;
	Escribir "Ingrese el lado 2:";
	Leer l2;
	Escribir "Ingrese el lado 3:";
	Leer l3;
	
	// encontrar la hipotenusa (mayor lado)
	Si l1>l2 Entonces
		cat1<-l2;
		Si l1>l3 Entonces
			hip<-l1;
			cat2<-l3;
		Sino
			hip<-l3;
			cat2<-l1;
		FinSi
	Sino
		cat1<-l1;
		Si l2>l3 Entonces
			hip<-l2;
			cat2<-l3;
		Sino
			hip<-l3;
			cat2<-l2;
		FinSi
	FinSi
	
	// ver si cumple con Pitagoras
	Si hip^2 = cat1^2 + cat2^2 Entonces
		// calcualar area
		area<-(cat1*cat2)/2;
		Escribir "El area es: ",area;
	Sino
		Escribir "No es un triangulo rectangulo.";
	FinSi
	
FinProceso

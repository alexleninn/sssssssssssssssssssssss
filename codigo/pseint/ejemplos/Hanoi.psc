
//    El objetivo del juego es mover los discos de la torre 1 a la 3 en la
// menor cantidad de movimientos posible. No se puede colocar un disco de 
// un tamanio sobre otro mas chico

//     Hay una matriz que representa las torres, cada columna contiene
//  nros que representan los tamanios de los discos en esas torres (solo
//  interesan los valores hasta la cantidad de discos de esa torre).
//  Cuantos discos tiene cada torre lo dice el vector cant_discos. 

Proceso Hanoi
	
	Dimension torres[3,10], cant_discos[3];
	
	// pedir y validar cuantos discos colocar en la primer torre
	Escribir "Ingrese el nro de discos (1-5):";
	leer discos;
	mientras discos<1 O discos>8 Hacer
		Escribir "El numero de discos debe ser mayor a 0 y menor a 5:";
		leer discos;
	finmientras

	// inicializar los datos
	cant_discos[1]<-discos;
	cant_discos[2]<-0;
	cant_discos[3]<-0;
	para i<-1 hasta discos hacer
		torres[1,i]<-discos-i+1;
	finpara
	
	cant_movs<-0;
	
	// jugar!
	mientras cant_discos[3]<>discos Hacer // mientras no esten todos los discos en la tercer torre, el juego sigue
		
		para i<-1 hasta 3 Hacer // dibujar las tres torres
			escribir "";
			escribir "Torre ",i;
			si cant_discos[i]=0 Entonces
				Escribir "";
			sino
				para j<-cant_discos[i] hasta 1 con paso -1 Hacer // recorrer los discos de la torre, de arriba hacia abajo
					segun torres[i,j] Hacer // dibujar cada disco
						1: escribir "                   XX";
						2: escribir "                 XXXXXX";
						3: escribir "               XXXXXXXXXX";
						4: escribir "             XXXXXXXXXXXXXX";
						5: escribir "           XXXXXXXXXXXXXXXXXX";
						6: escribir "         XXXXXXXXXXXXXXXXXXXXXX";
						7: escribir "       XXXXXXXXXXXXXXXXXXXXXXXXXX";
						8: escribir "     XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
					finsegun
				FinPara
			finsi
			Escribir "   ----------------------------------";
			escribir "";
		FinPara
		
		// solicitar movimiento
		Escribir "Mover desde la torre: ";
		leer t1;
		Escribir "hacia la torre: ";
		leer t2;
		
		si t1<0 O t1>3 O t2<0 O t2>3 Entonces // controlar que el nro de torre sea valido
			escribir "Movimiento invalido";
		sino
			si cant_discos[t1]=0 Entonces // controlar que la torre 1 tengo al menos un disco
				escribir "Movimiento invalido";
			Sino
				disco_a_mover <- torres[t1,cant_discos[t1]]; // obtener tamanio del disco que se quiere mover
				puede_mover<-verdadero;
				si cant_discos[t2]<>0 entonces // controlar que la torre dos no tenga discos o tenga discos mas grandes
					si torres[t2,cant_discos[t2]]<disco_a_mover Entonces
						puede_mover<-Falso;
					FinSi
				FinSi
				si puede_mover Entonces // si paso todos los controles, mover
					cant_movs <- cant_movs+1;
					cant_discos[t2]<-cant_discos[t2]+1;
					torres[t2,cant_discos[t2]] <- disco_a_mover;
					cant_discos[t1]<-cant_discos[t1]-1;
				Sino
					escribir "Movimiento invalido";
				finsi
			FinSi
		finsi
	
	finmientras
	
	// mostrar resultado
	escribir "";
	escribir "";
	escribir "Juego finalizado en ",cant_movs," movimientos!";
	escribir "";
	
FinProceso

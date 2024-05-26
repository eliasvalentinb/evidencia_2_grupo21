Algoritmo App_Futbol
	Escribir 'Que queres hacer hoy?'
	Escribir 'ingresa 1 si queres alquilar una cancha'
	Escribir 'Ingresa 2 si queres sumarte a un partido'
	Leer eligio
	Según eligio Hacer
		1:
			Escribir 'Que tamaño de cancha te gustaria:'
			Escribir 'Para cancha de Futbol 5 - Elige 1 '
			Escribir 'Para cancha de Futbol 7 - Elige 2 '
			Escribir 'Para cancha de Futbol 11 - Elige 3 '
			Leer cancha
			Escribir 'Aguarda un instante, te estamos buscando opciones'
			Salir_D <- 'No'
			Mientras Salir_D='No' Hacer
				Escribir 'Los dia disponibles que tenemos son: Lunes , Miercoles, Viernes'
				Escribir 'Que dia te gustaria jugar? '
				Leer dia
				Si minusculas(dia)='lunes' O minusculas(dia)='miercoles' O minusculas(dia)='viernes' Entonces
					Salir_H <- 'No'
					Mientras Salir_H='No' Hacer
						Escribir 'Los horarios Disponibles son: 15, 20 y 22 horas'
						Escribir 'que horario te sirve?'
						Leer hora
						Si hora=15 O hora=20 O hora=22 Entonces
							Escribir 'Perfecto!, los equipos estan completos? (si - no)'
							Leer completo
							Si minusculas(completo)='no' Entonces
								Escribir 'Queres que te avisemos si alguien se quiere sumar? ( si - no)'
								Leer avisar
							FinSi
							Escribir 'Tu reserva es para el dia ', minusculas(dia)
							Escribir 'a las ', hora, ' horas.'
							Escribir 'En la cancha numero ', cancha
							Si minusculas(avisar)='si' Entonces
								Escribir 'te avisamos si alguien se quiere sumar.'
							FinSi
							Salir_D <- 'Si'
							Salir_H <- 'Si'
						SiNo
							Escribir 'No es un horario disponible, intenta de nuevo'
						FinSi
					FinMientras
				SiNo
					Escribir 'No es un dia disponible, intenta de nuevo'
				FinSi
			FinMientras
		2:
			Escribir 'Perfecto, te podemos ofrecer las siguientes opciones: '
			Salir_D <- 'No'
			Mientras Salir_D='No' Hacer
				Escribir 'Los dia disponibles que tenemos son: Lunes , Miercoles, Viernes'
				Escribir 'Que dia te gustaria jugar? '
				Leer dia
				Si minusculas(dia)='lunes' O minusculas(dia)='miercoles' O minusculas(dia)='viernes' Entonces
					Salir_H <- 'No'
					Mientras Salir_H='No' Hacer
						Escribir 'Los horarios Disponibles son: 15, 20 y 22 horas'
						Escribir 'que horario te sirve?'
						Leer hora
						Si hora=15 O hora=20 O hora=22 Entonces
							Escribir 'Genial! mandamos al organizador tu pedido de sumarte al partido del ', minusculas(dia), ' a las ', hora, ' horas'
							Escribir 'te notificaremos cuando el te acepte'
							Salir_D <- 'Si'
							Salir_H <- 'Si'
						SiNo
							Escribir 'No es un horario Disponible, intenta de nuevo'
						FinSi
					FinMientras
				SiNo
					Escribir 'no es una fecha disponible, intenta de nuevo'
				FinSi
			FinMientras
	FinSegún
FinAlgoritmo

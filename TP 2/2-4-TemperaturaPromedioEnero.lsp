#| Actividad 4 |#
#| Los días del mes de Enero y su temperatura promedio para cada uno de los días se almacenan en dos listas diferentes, cada una almacenada en su respectiva variable. Ellas son:
    - días_enero: contiene los números de los días en el mes de Enero ( 1 2 3 4....) 
    - temp_promedio: contiene la temperatura promedio de cada día ( 37 35 37 ...)
Leer con atención el apunte funciones constructoras de listas y luego desarrollar las funciones 
necesarias para poder resolver los siguientes items
    a. Informar en una lista el primer día del mes junto con su temperatura promedio
    b. Informar en una lista el último día del mes junto con su temperatura promedio
    c. Devolver una nueva lista con todos los elementos de las dos listas. Los mismos deben 
    quedar todos en el primer nivel.
    d. Devolver una nueva lista donde el primer elemento será la lista días_enero y el segundo 
    elemento será la lista temp_promedio
    e. Devolver una nueva lista con todos los elementos de las dos listas. Los mismos deben 
    quedar todos en el primer nivel.
    f. Informar en una lista todas las temperaturas promedios menos la primera y la última. |#

(setq dias_enero    '( 1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31))
(setq temp_promedio '(37 35 37 36 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64))


#| a |#
(setq primerDia (list (car dias_enero) (car temp_promedio)))
(format t "El primer día del mes junto con su temperatura promedio es: ~a" primerDia)

#| b |#
(setq ultimoDia (list (car (last dias_enero)) (car (last temp_promedio))))
(format t "~%El último día del mes junto con su temperatura promedio es: ~a" ultimoDia)

#| c |#
(setq listaUnida (append dias_enero temp_promedio))
(format t "~%La lista unida es: ~a" listaUnida)

#| d |#
(setq listaUnida2 (list dias_enero temp_promedio))
(format t "~%La lista unida 2 es: ~a" listaUnida2)

#| e |#
(setq listaUnida3 (append dias_enero temp_promedio))
(format t "~%La lista unida 3 es: ~a" listaUnida3)

#| f |#
(setq listaTemperaturas (subseq temp_promedio 1 (1- (length temp_promedio)))) 
(format t "~%La lista de temperaturas promedios menos la primera y la última es: ~a" listaTemperaturas)

#| (load "C:/Users/lucio.solis/Documents/Nueva carpeta/Matias/Paradigma/TP 2/2-4-TemperaturaPromedioEnero.lsp") |#
#| Actividad 2.3.  
La cantidad de lluvia caída en el mes de Enero se registró también en una lista que se encuentra 
contenida en la variable lluvia_enero con el siguiente formato: 
( (dia lluvia_caida) (dia lluvia_caida) ..............) 
donde cada sublista contendrá en:  
    • día: número de día del mes en que cayó la lluvia  
    • lluvia_caida: la cantidad en mm/h de lluvia caída ese día  
Desarrollar las funciones necesarias para obtener los siguientes datos: 
    a. ¿Cuál es el primer día que se informa la cantidad de lluvia caída?  
    b. ¿Cuánto llovió el primer día que se informa?  
    c. ¿Cuál es el último día que se informa la cantidad de lluvia caída?  
    d. ¿Cuánto llovió el último día que se informa?  
    e. Informar el día y la cantidad de lluvia caída el 4to día que se registra en la lista (devolver la 
    sublista)
    f. Informar la cantidad de lluvia caída el 4to día que se registra en la lista.  
    g. Evaluar si ( 10 9.5) se encuentra en la lista lluvia_enero   |#

(setq lluvia_enero '((1 10) (2 9.5) (3 8) (4 7.5) (5 6) (6 5.5) (7 4) (8 3.5) (9 2) (10 1.5) (11 1) (12 0.5) (13 0.25) (14 0.125) (15 0.0625) (16 0.03125)))

#| a |#
(setq primerDiaLluvia (car (car lluvia_enero)))
(format t "El primer día que se informa la cantidad de lluvia caída es: ~a" primerDiaLluvia)

#| b |#
(setq lluviaPrimerDia (cadr (car lluvia_enero)))
(format t "~%La cantidad de lluvia caída el primer día que se informa es: ~a" lluviaPrimerDia)

#| c |#
(setq ultimoDiaLluvia (car (last lluvia_enero)))
(format t "~%El último día que se informa la cantidad de lluvia caída es: ~a" ultimoDiaLluvia)

#| d |#
(setq lluviaUltimoDia (cadr (last lluvia_enero)))
(format t "~%La cantidad de lluvia caída el último día que se informa es: ~a" lluviaUltimoDia)

#| e |#
(setq cuartoDiaLluvia (nth 3 lluvia_enero))
(format t "~%El día y la cantidad de lluvia caída el 4to día que se registra en la lista es: ~a" cuartoDiaLluvia)

#| f |#
(setq lluviaCuartoDia (cadr cuartoDiaLluvia))
(format t "~%La cantidad de lluvia caída el 4to día que se registra en la lista es: ~a" lluviaCuartoDia)

#| g |#
(setq lluviaBuscada '(10 9.5))
(setq lluviaEncontrada (member lluviaBuscada lluvia_enero :test 'equal)) ; :test funciona para comparar listas
(if lluviaEncontrada
    (format t "~%La lluvia buscada ~a se encuentra en la lista lluvia_enero" lluviaBuscada)
    (format t "~%La lluvia buscada ~a no se encuentra en la lista lluvia_enero" lluviaBuscada))

#| Actividad 2 |#
#| Las máximas temperaturas para cada uno de los días del mes de Enero se registraron en una lista que se encuentra contenida en la variable  max_temp. Desarrollar las funciones necesarias para obtener los siguientes datos: 
a. ¿Qué temperatura se registra el primer día del mes?  
b. ¿Qué temperatura se registra el último día del mes?  
c. ¿Qué temperatura se registra el tercer día del mes?  
d.  ¿Qué temperatura se registra el anteúltimo día del mes?  
e. Verificar si en alguno de los días del mes la máxima fue de 40. |#

(setq max_temp '((1 35) (2 36) (3 37) (4 38) (5 39) (6 40) (7 41) (8 42) (9 43) (10 44) (11 45) (12 46) (13 47) (14 48) (15 49) (16 50)))

#| a |#
(setq tempPrimerDia (cadr (car max_temp)))
(format t "La temperatura máxima del primer día del mes es: ~a" tempPrimerDia)

#| b |#
(setq tempUltimoDia (cadr (last max_temp)))
(format t "~%La temperatura máxima del último día del mes es: ~a" tempUltimoDia)

#| c |#
(setq tempTercerDia (cadr (nth 2 max_temp)))
(format t "~%La temperatura máxima del tercer día del mes es: ~a" tempTercerDia)

#| d |#
(setq tempAnteUltimoDia (cadr (nth (- (length max_temp) 2) max_temp)))
(format t "~%La temperatura máxima del anteúltimo día del mes es: ~a" tempAnteUltimoDia) ;nth devuelve el elemento en la posición indicada, comenzando desde 0. Por lo tanto, para obtener el anteúltimo elemento, se debe restar 2 a la longitud de la lista.

#| e |#
(setq temp40 (assoc 40 max_temp)) ;assoc busca en la lista de pares (día, temperatura) si existe un par con temperatura 40.
(if temp40
    (format t "~%En alguno de los días del mes la máxima fue de 40.")
    (format t "~%No hubo ningún día del mes con una máxima de 40."))
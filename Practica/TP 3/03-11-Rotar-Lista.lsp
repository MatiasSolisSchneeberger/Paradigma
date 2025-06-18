#| Actividad 3.11  |#
 
#| Crear las siguientes funciones de rotación:  
    a. una función llamada derecha que rote a la DERECHA los elementos de una lista ingresada como parámetro haciendo que su primer elemento pase a ser el último. Por ejemplo:  
        >> (rotar-derecha '(1 2 3 4))   ==> (2 3 4 1).  
 
    b. una  función  llamada  izquierda  que  rote  a  la  IZQUIERDA  los  elementos  de  una  lista ingresada  como  parámetro  haciendo  que  el  último  elemento  pase  a  ser  el  primero.  Por ejemplo,  
        >> (rotar-izquierda '(1 2 3 4)) ==> (4 1 2 3).  |#

(defun rotar-derecha (lista)
    (append (cdr lista) (list (car lista))))

(defun rotar-izquierda (lista)
    (append (list (car (reverse lista))) (cdr lista)))

(pprint (rotar-derecha '(1 2 3 4)))
(pprint (rotar-izquierda '(1 2 3 4)))

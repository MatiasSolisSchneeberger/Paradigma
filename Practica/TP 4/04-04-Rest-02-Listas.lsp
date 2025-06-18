#| Actividad Nº 4 |#
 
#| A partir de dos listas ingresadas como parámetros, definir una función que devuelva una nueva lista donde cada elemento sea el resultado de la diferencia de los elementos de la lista 1 con los elementos de la lista 2 que se encuentren en la misma posición |#

(defun ingresar-listas ()
    (let ((lista1) (lista2))
        (format t "Ingresar lista 1: ")
        (setq lista1 (read))
        (format t "Ingresar lista 2: ")
        (setq lista2 (read))
        (if (and (listp lista1) (listp lista2))
            (pprint (restar-x-posicion lista1 lista2))
        )
    )
)

(defun restar-x-posicion (lista1 lista2)
    (cond
        ((or (null lista1) (null lista2)) nil)
        (t 
            (cons 
                (- (car lista1) (car lista2))
                (restar-x-posicion (cdr lista1) (cdr lista2))
            )
        )
    )
)
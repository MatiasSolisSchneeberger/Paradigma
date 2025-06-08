#| Definir  una  función  predicado  llamada  palíndromo,  que  indique  si  una  lista  ingresada  por  el operador, es una lista palíndromo (se lee igual de izquierda a derecha y de derecha a izquierda).
Por ejemplo: ( I T A T I) es una lista palíndromo |#

(defun palindromo ()
    (let (lista)
        (format t "Ingrese una lista: ")
        (setf lista (read))
        (if (AND (listp lista) (equal lista (reverse lista)))
            (format t "La lista es palíndromo")
            (format t "La lista no es palíndromo") ) )  ; Fin de la función palindromo
)

(palindromo)

(defun Ingresos-Pinos ()
    (LET ((altura))
        (PRINT "Ingrese una altura (en enteros 1 2 3 4) o en decimales 1.2 2.5: ")
        (SETQ altura (READ))
        (if (and (NUMBERP altura) (> altura 0))
            (PROGN 
            (format t "Peso del pino: A%" (pesopino altura))
            (format t "Le sirve a la fabrica?: A%" (esPesoUtil (pesoPino altura))
            (format t "Le sirve a la fabrica?: A%" (sirvePino (pesoPino altura)))
            (PRINT "Ingrese un valor válido")
        )
        ))
    )
)
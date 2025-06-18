#| Actividad 3 |#
#|
Definir una función; la que a partir de una lista ingresada por el operador; devuelva una nueva lista cuyos  elementos  sean  el  resultado  de  evaluar  si  cada  elemento  de  la  lista  original  es  o  no  un elemento numérico
|#

(defun ingresar-datos (lista)
    (let ((lista))
        (format t "Ingresar lista: ")
        (setq lista (read))
        (if (listp lista)
            (#| funcion |#)
            'error
        )
    )
)

(defun numericop (lista)
    (mapcar 
        (lambda (x)
            (numberp x)
        )
        lista
    )
)
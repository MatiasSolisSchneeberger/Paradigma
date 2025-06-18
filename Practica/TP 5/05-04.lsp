#|  Actividad Nº 4:  |#
#|
Realizar los cambios necesarios en la función definida en la Actividad N° 3, de tal manera que el resultado de cada evaluación realizada devuelva la leyenda SI o NO.
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
            (if (numberp x) 'SI 'NO)
        )
        lista
    )
)
#| Actividad 3.6 |#
#| Definir una función llamada mediano¸ la que a partir de tres valores numéricos ingresados por el operador, devuelva el valor mediano (puede ayudarse con las funciones max y min). El valor mediano será aquel que no es ni el mayor ni el menor valor. |#
#| Aclaracion: se puede ordenar la lista y tomar el car del cdr, el segundo lugar y listo |#
(defun mediano (lista)
    (cond 
        ((and 
            (not (= (first lista) (max (first lista) (second lista) (third lista) )))
            (not (= (first lista) (min (first lista) (second lista) (third lista) )))) (first lista))
        ((and 
            (not (= (second lista) (max (first lista) (second lista) (third lista) )))
            (not (= (second lista) (min (first lista) (second lista) (third lista) )))) (second lista))
        ((and 
            (not (= (third lista) (max (first lista) (second lista) (third lista) )))
            (not (= (third lista) (min (first lista) (second lista) (third lista) )))) (third lista))
        (t 'error)
    )
)

(defun ingresar-numeros ()
    (let ((lista))
        (format t "Ingresar lista de tres numeros")
        (setq lista (read))
        (if (equal 3 (length lista))
            (mediano lista)
            'error
        )
    )
)


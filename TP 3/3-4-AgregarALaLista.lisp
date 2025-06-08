#| Definir una función llamada mi-segundo, la que a partir de una lista y un átomo ingresados por el operador deberá devolver una nueva lista donde el átomo ocupará la primera posición de la lista. (Recuerde que las posiciones comienzan a contarse desde la 0) |#

(defun mi-segundo()
    (let (lista atomo)
        (format t "Ingresar lista: ")
        (setq lista (read))
        (format t "Ingresar atomo: ")
        (setq atomo (read))
        (pprint (cons atomo lista))
    )
)

(mi-segundo)
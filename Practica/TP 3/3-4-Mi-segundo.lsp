#| Actividad 3.4   |#

#|
Definir una función llamada mi-segundo, la que a partir de una lista y un átomo ingresados por el operador deberá devolver una nueva lista donde el átomo ocupará la primera posición de la lista. 
(Recuerde que las posiciones comienzan a contarse desde la 0) 
|#

(defun mi-segundo (lista atomo)
    (cons atomo lista)
)

(defun ingresar-lista-atomo()
    (let ((lista) (atomo))
        (format t "Ingrese una lista de elementos separados por espacios: ")
        (setf lista (read))
        (format t "Ingrese un atomo: ")
        (setf atomo (read))
        (mi-segundo lista atomo)
    )
)


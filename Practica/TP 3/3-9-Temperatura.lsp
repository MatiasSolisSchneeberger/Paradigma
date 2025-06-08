#| Actividad 3.9 |#
#|
Definir una función predicado para cada una de los ítems que se detallan a continuación. Cada función definida debe recibir como parámetro la lista contenida en la variable max_temp.
    a. Evaluar si la temperatura registrada el primer día está comprendida entre los 40 y 45 grados. 
    b. Evaluar si en alguno de los días del mes la máxima fue de 40. 
    c. Evaluar si la temperatura del primer y último día son IGUALES.
|#

(defun ingresar-temperaturas ()
    (let ((max_temp))
        (format t "Ingrese las temperaturas máximas del mes (separadas por espacios): ")
        (setq max_temp (read))
        (if (listp max_temp)
            (progn
                (pprint (primer-dia max_temp))
                (pprint (temperatura-40 max_temp))
                (pprint (temperatura-igual max_temp))
            )
        )
    )
)

(defun primer-dia (max_temp)
    (and (>= (first max_temp) 40) (<= (first max_temp) 45))
)

(defun temperatura-40 (max_temp)
    (member 40 max_temp)
)

(defun temperatura-igual (max_temp)
    (equal (first max_temp) (last max_temp))
)
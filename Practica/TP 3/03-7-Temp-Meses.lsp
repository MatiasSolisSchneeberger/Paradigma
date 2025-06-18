#| Actividad 3.7 |#
#|
La máxima temperatura de ayer y las máximas temperaturas de enero y febrero se registran en dos listas:
    • max_enero: que contendrá las máximas temperaturas registradas para cada uno de los días de enero
    • max_febrero: que contendrá las máximas temperaturas registradas para cada uno de los días de febrero
definir una función predicado que permita determinar si la temperatura máxima de ayer se registró también en enero o en febrero. (el valor atómico y las dos listas deben ser ingresadas por el operador)
|#
(defun temperatura-registrada (tempEnero tempFebrero tempAyer)
    (cond 
        ((member tempAyer tempEnero) T)
        ((member tempAyer tempFebrero) T)
    )    
)

(defun ingresar-temperaturas ()
    (let ((tempEnero) (tempFebrero) (tempAyer))
        (format t "Ingresar temperaturas de Enero: ")
        (setq tempEnero (read))
        (format t "Ingresar temperaturas de Febrero: ")
        (setq tempFebrero (read))
        (format t "Ingresar temperatura de Ayer: ")
        (setq tempAyer (read))
        (if (and (listp tempEnero) (listp tempFebrero) (numberp tempAyer))
            (temperatura-registrada tempEnero tempFebrero tempAyer)
        )
    )
)
#| b. Recordando la fórmula que permite calcular el volumen de un cilindro, definir una función que permita el ingreso por teclado de las variables necesarias para ejecutar dicha función y obtener el valor del volumen.  
|#

(format t "b) ~%")
(defun volumen-cilindro()
    (let (radio altura)
        (format t "Ingrese el radio: ")
        (setf radio (read))
        (format t "Ingrese la altura: ")
        (setf altura (read))
        (pprint (calcular-volumen-cilindro radio altura))
    )
)

(defun calcular-volumen-cilindro (radio altura)
    (if (and (numberp radio) (> radio 0) (numberp altura) (> altura 0))
        (* pi (expt radio 2) altura)
        (format t "El radio o la altura ingresados no son válidos.")
    )
)

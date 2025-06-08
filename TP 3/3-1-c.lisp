#| c. Recordando  la  fórmula  que  permite  calcular  el  área  del  trapecio,  definir  una  función  que permita  el  ingreso  por  teclado  de  las  variables  necesarias  para  ejecutar  dicha  función  y obtener el valor del área. 
|#

(format t "c) ~%")

(defun area-trapecio()
    (let (base-mayor base-menor altura)
        (format t "Ingrese la base mayor: ")
        (setf base-mayor (read))
        (format t "Ingrese la base menor: ")
        (setf base-menor (read))
        (format t "Ingrese la altura: ")
        (setf altura (read))
        (pprint (calcular-area-trapecio base-mayor base-menor altura))
    )
)

(defun calcular-area-trapecio (base-mayor base-menor altura)
    (if (and (numberp base-mayor) (> base-mayor 0) (numberp base-menor) (> base-menor 0) (numberp altura) (> altura 0))
        (/ (+ base-mayor base-menor) 2 altura)
        (format t "Las bases o la altura ingresados no son válidos.")
    )
)

(area-trapecio)
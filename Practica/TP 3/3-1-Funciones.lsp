#| Actividad 3.1. |#  

#| Para desarrollar esta actividad puede ayudarse de las resoluciones de la Actividad 1  

a. A partir de un determinado monto en pesos,  que será ingresado por operador, definir una 
función que devuelva la cantidad de dólares que se pueden comprar con el monto ingresado. 

b. Recordando la fórmula que permite calcular el volumen de un cilindro, definir una función 
que permita el ingreso por teclado de las variables necesarias para ejecutar dicha función y 
obtener el valor del volumen.  

c. Recordando  la  fórmula  que  permite  calcular  el  área  del  trapecio,  definir  una  función  que 
permita  el  ingreso  por  teclado  de  las  variables  necesarias  para  ejecutar  dicha  función  y 
obtener el valor del área. |#

#| a |#
(defun dolares (pesos, dolar)
    (let cambio (* pesos dolar)
        (format t "Con ~A pesos se pueden comprar ~A dolares" pesos cambio)
        cambio
    )
)


#| b |#
(defun volumen (radio, altura)
    (let area (* pi (expt radio 2))
        (let vol (* area altura)
            (format t "El volumen del cilindro es ~A" vol)
            vol
        )
    )
)

(defun cilindro ()
    (let radio (read)
        (let altura (read)
            (volumen radio altura)
        )
    )
)

#| c |#
(defun area_trapecio (base_menor, base_mayor, altura)
    (let area (/ (+ base_menor base_mayor) 2)
        (let area_total (* area altura)
            (format t "El área del trapecio es ~A" area_total)
            area_total
        )
    )
)

(defun trapecio ()
    (let base_menor (read)
        (let base_mayor (read)
            (let altura (read)
                (area_trapecio base_menor base_mayor altura)
            )
        )
    )
)


#| Llamados |#
(dolares 1000 200)
(cilindro)
(trapecio)

#| C:/Users/lucio.solis/Documents/Nueva carpeta/Matias/Paradigma/TP 3/3-1-Funciones.lsp |#
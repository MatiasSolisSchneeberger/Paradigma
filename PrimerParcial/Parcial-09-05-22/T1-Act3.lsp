#| 
Suponiendo que el kilo de azucar esta a $80 y el kilo de cafe a $1500. Tener en cuenta que un cuarto del monto de dinero que se dispone, se destina para comprar azucar y el resto para comprar cafe.

    a. Definir una funcion; al que a partir de monto de dinero ingresado por el operaodor; devuelva en una lista el monto ingresado por le operador y la cantidad de kilos de azucar que se puede comprar
    b. Definir una funcion predicado, la que a partir del monto ingresado como parametro evalue si se puede comprar al menos 2 kilos de cafe
|#

(defun ingresar-datos ()
    (let ((monto))
        (format t "Ingresar monto: ")
        (setq monto (read))
        (if (and (numberp monto) (> monto 0))
            (progn
                (azucar monto)
                (cafep monto)
            )
        )
    )
)

(defun azucar (monto)
    (list monto (truncate (/ (/ monto 4) 80)))
)

#| supongo que el monto es 3/4 del monto original, es lo que sobra de la compra de azucar |#
(defun cafep (monto)
    (> (/ (/ monto 0.75) 1500) 2)
)
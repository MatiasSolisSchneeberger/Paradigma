#| 
    Se necesita comprar arena y piedra para lo cual se posee un determinado monto de dinero

    a. Desarrollar una funcion que permita el ingreso por parte del operador del valor del m^3 de arena el valor del m^3 de piedra y un determinado monto. La función también debe llamar a cada una de las funciones solicitadas en los puntos b, c y d.

    b. Definir una funcion; la que a partir del dinero que se dispone para la compra y el valor de m^3 de arena qeu serán ingresados como parámetro; devuelva el siguiente mensaje:
        - "Monto insuficiente" si el monto no le alcanza para comprar 1 m^3 de arena.
        - "Monto justo" si el monto es igual a la compra de 2000 dm^3 de arena, sabiendo que 1m^3 = 1000 dm^3. 
        - "Monto suficiente" si el monto ingresado supera a la mitad del valor del m^3 de arena

    c. Definir una función predicado; al que a partir del dinero que se dispone para la compra, el valor de m^3 de arena y el valor de m^3 de piedra que serán ingresados como parámetros, evalúe si con la mitad del dinero disponible se puede comprar al menos 4 m^3 de arena y 1,5 m^3 de piedra

    d. Definir una funcion; al que a partir del dinero que se dispone para la compra, el valor de m^3 de arena y el valor del m^3 de piedra que serán infresados como parámetros, devuelva una lista formada por dos sublistas donde:
        - La primer sublista contendrá el texto "arena", el monto ingresado como parámetro y la cantidad de m^3 de arena que se puede comprar con ese monto
        - La primer sublista contendrá el texto "piedra", el monto ingresado como parámetro y la cantidad de m^3 de piedra que se puede comprar con ese monto
|#

(defun ingresar ()
    (let ((arena) (piedra) (monto))
        (format t "Ingresar el valor del m^3 de arena: ")
        (setq arena (read))
        (format t "Ingresar el valor del m^3 de piedra: ")
        (setq piedra (read))
        (format t "Ingresar el monto total: ")
        (setq monto (read))

        (if (and (numberp arena) (> arena 0) (numberp piedra) (> piedra 0) (numberp monto) (> monto 0))
            (progn
                (pprint (calcular-arena-monto arena monto))
                (pprint (arena-y-piedra arena piedra monto))
                (pprint (lista-arena-piedra arena piedra monto))
            )
        )
    )
)

; b
(defun calcular-arena-monto (arena monto)
    (cond 
        ((< monto arena) "Monto insuficiente")
        ((= monto (/ arena 2)) "Monto justo")
        ((> monto (/ arena 2)) "Monto suficiente")
    )
)

; c
(defun arena-y-piedra (arena piedra monto)
    (and (> (/ monto 2) (* piedra 1.5)) (> (/ monto 2) (* arena 4)))
)

; d
(defun lista-arena-piedra (arena piedra monto)
    (append 
        (list "arena" monto (/ monto arena))
        (list "piedra" monto (/ monto piedra))
    )
)
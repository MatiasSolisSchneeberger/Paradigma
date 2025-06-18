#| Actividad 3.14: |#

#| En una plantación de pinos, de cada árbol se conoce la altura expresada en metros. El peso de un pino se puede calcular a partir de la altura así:

    • 3 kg por cada centímetro hasta 3 metros,
    • 2 kg por cada centímetro arriba de los 3 metros

Por ejemplo:
    • 2 metros pesan 600 kg, porque 200 * 3 = 600
    • 5 metros pesan 1300 kg, porque los primeros 3 metros pesan 900 kg y los siguientes 2 pesan los 400 restantes.

Los pinos se usan para llevarlos a una fábrica de muebles, a la que le sirve árboles de entre 400 y 
1000 kilos, un pino fuera de este rango no le sirve a la fábrica.

    a. Definir la función pesoPino, que recibe la altura de un pino y devuelve su peso.

    b. Definir la función predicado  esPesoUtil, recibe un peso en kg y responde verdadero  si un pino 
    de ese peso le sirve a la fábrica

    c. Definir la función predicado sirvePino, recibe la altura de un pino y responde verdadero si un 
    pino de ese peso le sirve a la fábrica. |#

(defun pesoPino (altura)
    (cond 
        ((and (> altura 0) (> (* altura 100) 300)) (+ (* (- (* altura 100) 300) 2) (* 300 3)))
        ((and (> altura 0) (< (* altura 100) 300)) (* (* altura 100) 3))
    )
)

(defun esPesoUtil (peso)
    (and (> peso 400) (< peso 1000))
)

(defun sirvePino (altura)
    (if (esPesoUtil (pesoPino altura))
        t
        nil
    )
)

(pprint (sirvePino 2.5))

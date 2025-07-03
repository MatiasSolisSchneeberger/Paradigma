#| Ejercicio N° 1: 1.5 Ptos 
Desarrollar una función, la que permita que el operador ingrese la lista y llame a las distintas funciones que se solicitan.  |#

(defun ingresar-datos ()
    (let ((lista))
        (format t "Ingresar una lista: ")
        (setq lista (read))
        (if (listp lista)
            (progn
                (pprint (promedio lista))
                (pprint (lista-mayores-3000 lista))
                (pprint (lista-precios lista))
                (pprint (stockp lista))
            )
            (t (format t "La lista ingresada no es válida"))
        )
    )
)

#| Ejercicio N° 2: 2.5 Ptos 
Desarrollar una función, la que recibirá como parámetro la lista ingresada en el punto1; y permita obtener el promedio de los precios de las prendas de las que hay stock.  |#
(defun promedio (lista)
    (/ (sumar-lista lista) (contar-elementos lista))
)
(defun sumar-lista (lista)
    (cond 
        ((null lista) 0)
        ((numberp (first lista)) (+ (first lista) (sumar-lista (rest lista))))
        (t (sumar-lista (rest lista)))
    )
)

(defun contar-elementos (lista)
    (cond 
        ((null lista) 0)
        ((numberp (first lista)) (+ 1 (contar-elementos (rest lista))))
        (t (contar-elementos (rest lista)))
    )
)


#| Ejercicio N° 3: 2 Ptos 
Desarrollar una función; la que recibirá como parámetro la lista ingresada en el punto 1; la cual debe devolver una nueva lista formada solamente por los nombres de las prendas cuyo precio sea mayor a los 3000 pesos.  |#
(defun lista-mayores-3000 (lista)
    (cond 
        ((null lista) nil)
        ((and (numberp (car lista)) (> (car lista) 3000)) (cons (car lista) (lista-mayores-3000 (cdr lista))))
        (t (lista-mayores-3000 (cdr lista)))
    )
)

#| Ejercicio N° 4: 2.5 Ptos 
Desarrollar una función; utilizando mapcar, la que recibirá como parámetro la lista ingresada en el punto 1, la cual debe devolver una nueva lista conteniendo sublistas. Cada sublista estará formada por el precio de la prenda y un mensaje. 
    - Para los precios de la lista iguales a 0, se formará una sublista conteniendo el precio y el mensaje "sin-stock". 
    - Para los precios de la lista menores o iguales a 1000, se formará una sublista conteniendo el precio y el mensaje "barato". 
    - Para los precios de la lista mayores a 1000, se formará una sublista conteniendo el precio y el mensaje "caro".
|#
(defun lista-precios (lista)
    (mapcar 
        (lambda (x)
            (cond
                ((not (numberp x)) nil)
                ( (= x 0) (list x 'sin-stock))
                ( (<= x 1000) (list x 'barato))
                ( (> x 1000) (list x 'caro))
            )
        )
        lista
    )
)

#| Ejercicio N° 5: 1.5 Ptos 
Definir una función utilizando mapcar, la que a partir de una lista ingresada como parámetro, devuelva una nueva lista cuyos elementos sean el resultado de evaluar uno a uno cada prenda, determinando si la misma posee o no stock. Recordar que una prenda no posee stock si su precio es 0. |#

(defun stockp (lista)
    (mapcar 
        (lambda (x)
            (if (and (numberp x) (> x 0)) t nil)
        )
        lista
    )
)

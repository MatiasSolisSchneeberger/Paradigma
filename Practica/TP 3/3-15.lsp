#| Actividad 3.15  |#
 
#| Un grupo de amigos comparten unas pizzas. Se desea saber cuanto tiene que pagar cada uno por las pizzas que consumen a partir del precio de 1 pizza y la cantidad de amigos que serán ingresadas a la función como parámetros.  
Tener en cuenta que cada persona come 3 porciones y sólo se pueden comprar pizzas enteras (que tiene cada una 8 porciones).  
  
Por ejemplo:  
Son 3 comensales, se necesitan entonces 9 porciones, lo que son dos pizzas, que salen $ 120 cada una, lo que implica $240 a dividir entre 3 = $80 cada uno. Ayuda: Recuerde la diapositiva Otras funciones aritméticas  |#

(defun ingresar-datos ()
    (let (#| (num-amigos) (precio-pizza) |#)
        (format t "Ingresar cantidad de amigos: ")
        (setq num-amigos (read))
        (format t "Ingresar precio de una pizza: ")
        (setq precio-pizza (read))
        (if (and (numberp num-amigos) (numberp precio-pizza) (> num-amigos 0) (> precio-pizza 0))
            (pprint (calcular-precio num-amigos precio-pizza))
            'error
        ) 
    )
)

(defun calcular-precio (num-amigos precio-pizza)
    (if (= (mod (* 3 num-amigos) 8) 0)
        (/ (* (floor (/ (* 3 num-amigos) 8)) precio-pizza) num-amigos)
        (/ (* (floor (+ (/ (* 3 num-amigos) 8) 1)) precio-pizza) num-amigos)
    )
)

#| Actividad Nº 6 |#
#| Definir una función la que a partir de una lista heterogénea ingresada por el operador, devuelva una nueva lista formada por sublistas. Cada sublista será el resultado de comparar el elemento de la lista con 0 (cero) y tendrá el siguiente formato: ( X signo 0), donde:
    • X:  será el elemento de la lista original 
    • Signo:  será <, > o =  dependiendo si el valor del elemento de la lista original es  mayor, menor o igual a cero. 
    • 0: será una constante que se corresponderá al valor cero
|#

((defun ingresar-datos ()
    (let ( (lista) )
        (format t "Ingresar lista: ")
        (setq lista (read))
        
        (if (consp lista)
            (cuadrados lista )
        )
    )
))

(defun signo-numero (lista)
    (mapcar
        (lambda (x)
            (cond
                ((and (numberp x) (< x 0)) (list x '< 0))
                ((and (numberp x) (> x 0)) (list x '> 0))
                ((and (numberp x) (= x 0)) (list x '= 0))
            )
        )
        lista
    )
)
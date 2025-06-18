#| Actividad Nº 5: |#
#|
Definir una función que solicite al operador el ingreso de una lista no vacía y un número entero, de tal  manera  que  devuelva  una  lista  formada  por  sublistas.  Cada  sublista  estará  formada  por  el elemento de la lista original junto con su potencia ( el exponte de la potencia será el número entero ingresado por el operador)
|#

(defun ingresar-datos ()
    (let ( (lista) (numero))
        (format t "Ingresar lista: ")
        (setq lista (read))
        (format t "Ingresar numero: ")
        (setq numero (read))
        (if (and (consp lista) (numberp numero))
            (cuadrados lista numero)
        )
    )
)

(defun cuadrados (lista numero)
    (mapcar 
        (lambda (x)
            (if (numberp x)
                (cons x (expt x numero) )
            )
        )
        lista
    )    
)
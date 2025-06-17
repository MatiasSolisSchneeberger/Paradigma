#| Actividad Nº 5  |#
 
#| A partir de una lista que es ingresada por el operador, definir una función que devuelva una nueva lista conteniendo dos sublistas. La primer sublista estará formada por los elementos de la lista original que son números pares. La segunda sublista estará formada por los elementos de la lista original que son números impares. |# 

(defun ingresar-lista ()
  (let ((lista))
    (format t "Ingresar lista: ")
    (setq lista (read))
    (if (listp lista)
        (pprint (separar-pares-impares lista))
        (format t "Error: debe ingresar una lista.~%"))))

        
(ingresar-lista)

(defun filtrar-impares (lista)
    (cond
        ((null lista) nil)
        ((oddp (car lista)) ; si el número es impar
            (cons (car lista) (filtrar-impares (cdr lista)))
        )
        (t (filtrar-impares (cdr lista)))
    )
)


(defun filtrar-pares (lista)
    (cond
        ((null lista) nil)
        ((evenp (car lista)) ; si el número es par
            (cons (car lista) (filtrar-pares (cdr lista)))
        )
        (t (filtrar-pares (cdr lista)))
    )
)


(defun separar-pares-impares (lista)
  (list (filtrar-pares lista) (filtrar-impares lista)))




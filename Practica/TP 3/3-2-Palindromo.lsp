#| Definir una función predicado llamada palíndromo, que indique si una lista ingresada por el operador, es una lista palíndromo (se lee igual de izquierda a derecha y de derecha a izquierda).
Por ejemplo: ( I T A T I) es una lista palíndromo |#

(defun palindomo (lista)
    (equal lista (reverse lista)))

(defun ingresar-palabra ()
    (let ((palabra))
        (format t "Ingrese una lista de caracteres: ")
        (setq palabra (read))
        (if (listp palabra) (palindomo palabra))))

(ingresar-palabra)

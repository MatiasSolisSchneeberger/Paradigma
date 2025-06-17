#| Actividad Nº 1  |# 
 
#|
Las máximas temperaturas del mes de enero se registraron en una lista contenida en la variable max_enero. Definir una función que permita el ingreso por teclado de dicha lista y pueda resolver cada una de las siguientes situaciones.  
 
a) Se desea conocer la cantidad de días que se registró una temperatura menor a los 38°. 
b) Se desea conocer el valor de la temperatura promedio de dicho mes. Definir una función que reciba como parámetro la lista y devuelva el valor deseado. 
c) Se desea saber si las temperaturas registradas en la lista están ordenadas en forma ascendente (para ello definir una función predicado que verifique lo solicitado) 
d) Se desea conocer cuales son las diferentes temperaturas registradas. Para ello defina una función que devuelva una lista sin las temperaturas repetidas de la lista original. Si el elemento está repetido debe aparecer una sola vez  
|#

#| (defun ingresar-lista()
    (let ((temps))
        (format t "Ingresar lista de temperaturas: ")
        (setq temps (read))

        (if (listp temps)
            (progn
                (pprint (contar-menos-de-38 temps))
                (pprint (temp-prom temps))
                (pprint (ordenada-ascendente? temps))
                (pprint (eliminar-repetidos temps))
            )
        )
    )
) |#
#| a |#
(defun contar-menos-de-38 (lista)
    (cond
        ((null lista) 0)
        ((< (car lista) 38) (+ 1 (contar-menos-de-38 (cdr lista))))
        (t (contar-menos-de-38 (cdr lista)))
    )
)

#| b |#
(defun contar-elementos-lista (lista)
    (if (null lista) 0
        (+ 1 (contar-elementos-lista (cdr lista)))
    )
)

(defun sumar-elementos-lista (lista)
    (if (null lista)
        0
        (+ (car lista) (sumar-elementos-lista (cdr lista)))
    )
)

(defun temp-prom (lista)
    (if (null lista)
        0
        (/ (sumar-elementos-lista lista) (contar-elementos-lista lista))
    )
)

#| c |#
(defun ordenada-ascendente? (lista)
    (cond
        ((or (null lista) (null (cdr lista))) t)
        ((> (car lista) (cadr lista)) nil)
        (t (ordenada-ascendente? (cdr lista)))
    )
)

#| d |#
(defun eliminar-repetidos (lista)
    (cond
        ((null lista) nil)
        ((member (car lista) (cdr lista)) (eliminar-repetidos (cdr lista)))
        (t (cons (car lista) (eliminar-repetidos (cdr lista))))
    )
)




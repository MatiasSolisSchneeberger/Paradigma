#| 
lista: (25 30 29 (25 28 26) 34 20 32 lluvia 31 34 28 27 29 (30 31) 25)
- contar valores numéricos
- sumar valores numéricos
- máximo valor numérico
- sublistas con longitud
- eliminar elementos no numéricos y no sublistas
- promedio, maximo, cantidad 
|#

(defun contarNumeros (lista)
    (cond 
        ((null lista) 0)
        ((numberp (first lista)) (+ 1 (contarnumeros (cdr lista))))
        (t (contarnumeros (cdr)))
    )
)

(defun sumarNumeros (lista)
    (cond 
        ((null lista) 0)
        ((numberp (first lista)) (+ (first lista) (sumarNumeros (cdr lista))))
        (t (sumarNumeros (cdr)))
    )
)

(defun maximoNumero (lista)
    (cond
        ((endp lista) nil)
        ((null (rest lista)) (first lista))
        ((numberp (first lista)) (max (first lista) (maximonumero (rest lista))))
        (t (maximonumero (rest lista)))
    )
)

(defun lenghtSublistas (lista)
    (cond
        ((null lista) nil)
        ((consp (car lista)) ; si el primer elemento es una sublista no vacía
            (cons 
                (list (length (car lista)) (car lista)) ; (longitud sublista)
                (lenghtSublistas (cdr lista))))
        (t (lenghtSublistas (cdr lista))) ; si no es sublista, lo ignora
    )
)

(defun eliminarElementos (lista)
    (cond
        ((null lista) nil)
        ((or (numberp (car lista)) (listp (car lista))) (cons (car lista) (eliminarelementos (cdr lista))))
        (t (eliminarelementos (cdr lista)))
    )
)

(defun masinfo (lista)
    (list (cons 'promedio (promedio lista)) (cons 'maximo (maximonumero lista)) (cons 'cantidad (lengh lista)))
)

(defun promedio (lista)
    (/ (sumarNumeros lista) (length lista))
)





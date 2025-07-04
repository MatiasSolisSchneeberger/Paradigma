#|
a. Convertir la siguiente expresión en una función Lisp:
    (1 - 1/2 * m^-5) * ((1 + i/m) / (1 - i/m))^mt * k

b. A partir de la expresión obtenida en el punto a, determinar la cantidad total de átomos y listas que contiene la función, y detallarlos explícitamente.
c. A partir de la expresión obtenida en el punto a, extraer el átomo `t` utilizando las funciones que usted crea conveniente.
|#
; a
(* (- 1 (* 1/2 (expt m -5))) (expt (/ (+ 1 (/ i m)) (- 1 (/ i m))) (* m t)) K)
; b
#|
    Atomos 2 -> * K
    Listas 2 -> (- 1 (* 1/2 (expt m -5))), (expt (/ (+ 1 (/ i m)) (- 1 (/ i m))) (* m t))
|#
; c
     (car (cdr (cdr (cdr (cdr (car (cdr (cdr '(* (- 1 (* 1/2 (expt m -5))) (expt (/ (+ 1 (/ i m)) (- 1 (/ i m))) (* m t)) K)))))))))
(car (cdr (cdr (car (cdr (cdr (car (cdr (cdr '(* (- 1 (* 1/2 (expt m -5))) (expt (/ (+ 1 (/ i m)) (- 1 (/ i m))) (* m t)) K))))))))))
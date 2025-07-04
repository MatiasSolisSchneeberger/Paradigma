#| 
a. Convertir la siguiente expresion aritmetica en una funcion Lisp.
(1 + i/m)^mt * k
b. A partir de la expresion obtenida en el pto a, determinar la cantidad de atomos y listas que tiene dicha expresion y detallar cuales son
c. a partir de la expresion obtenida en el punto a, extraer el atomo + utilidando las funciones de ud crea crea conveniente.

|#

; a
(* (expt (+ 1 (/ i m)) (* m t)) k)
; b
#|
Una listas y dos atomo.
Lista  (expt (+ 1 (/ i m)) (* m t))
Atomos *, k
|#

; c
(car (car (cdr (car (cdr '(* (expt (+ 1 (/ i m)) (* m t)) k))))))
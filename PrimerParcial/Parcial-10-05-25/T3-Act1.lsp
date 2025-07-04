#| 
a. Convertir la siguiente expresion aritmetica en una funcion Lisp.
1 - 1/2 m^2 - 5
b. A partir de la expresion obtenida en el pto a, determinar la cantidad de atomos y listas que tiene dicha expresion y detallar cuales son
c. a partir de la expresion obtenida en el punto a, extraer el atomo * utilidando las funciones de ud crea crea conveniente.
|#

; a
(- 1 (* 1/2 (expt m 2)) 5)

; b
#|
Atomos 3 -> -, 1, 5
Listas 1 -> (* 1/2 (expt m 2))
|#

;c
(car (car (cdr (cdr '(- 1 (* 1/2 (expt m 2)) 5)))))
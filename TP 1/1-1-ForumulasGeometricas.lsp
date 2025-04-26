#| Actividad 1 |#

#| Rectangulo |#
(+ (* 2 a) (* 2 b)) ; Perímetro
(* a b) ; Área

#| Cuadrado |#
(+ (* 2 a) (* 2 a)) ; Perímetro
(expt a 2) ; Área

#| Paralelogramo |#
(+ (* 2 a) (* 2 b)) ; Perímetro
(* base altura) ; Área

#| Triangulo |#
(+ a b c) ; Perímetro
(/ (* base altura) 2) ; Área

#| Circunferencia |#
(* 2 pi r) ; Perímetro
(* pi (expt r 2)) ; Área

#| Triangulo rectangulo |#
(equal (+ (expt a 2) (expt b 2) ) (expt c 2)) ; Perímetro
(/ (* a b) 2) ; Área

#| Trapecio |#
(/ (* (+ b1 b2) h) 2) ; Área

#| Paralelepípedo recto |#
(* (+ (* 2 a) (* 2 b)) h) ;AreaL
(+ (* (+ (* 2 a) (* 2 b)) h) (* 2 (+ a b)))
(* a b h) ; Volumen

#| Cilindro |#
(* (* 2 pi R) h) ; AreaL (Se que es lo mismo hacer una sola multiplicacion, pero en el ejercicio está separado, por eso lo dejo así. Ejercicio: AreaL = (2piR)h)
(* (* 2 pi R) (+ R h)) ; AreaT
(* pi (expt r 2) h) ; Volumen

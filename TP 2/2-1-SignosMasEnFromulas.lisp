#| 
A  partir  de  las  fórmulas  geométricas  expresadas  como  funciones  Lisp  en  la  Actividad  1,  ¿qué funciones de acceso a listas utilizaría para extraer el signo + en aquellas fórmulas que la contiene? 
En el caso en que haya mas de un signo +, extraer solo el primero que aparece en la lista |#

(pprint (car '(+ (* 2 a) (* 2 b))) )
(pprint (car '(+ (* 2 a) (* 2 a))))
(pprint (car '(+ (* 2 a) (* 2 b))))
(pprint (car '(+ a b c)))
(pprint (car (car (cdr '(equal (+ (expt a 2) (expt b 2) ) (expt c 2))))))
(pprint (car (car (cdr (car (cdr '(/ (* (+ b1 b2) h) 2)))))))
(pprint (car (car (cdr (cdr '(* (* 2 pi R) (+ R h)))))))
; car devuelve un atomo, y cdr devuelve una lista por eso se aprlica dos veces car a lo ultimo


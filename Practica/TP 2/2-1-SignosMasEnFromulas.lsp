#| 
A  partir  de  las  fórmulas  geométricas  expresadas  como  funciones  Lisp  en  la  Actividad  1,  ¿qué funciones de acceso a listas utilizaría para extraer el signo + en aquellas fórmulas que la contiene? 
En el caso en que haya mas de un signo +, extraer solo el primero que aparece en la lista |#

(car '(+ (* 2 a) (* 2 b))) 
(car '(+ (* 2 a) (* 2 a)))
(car '(+ (* 2 a) (* 2 b)))
(car '(+ a b c))
(car (cdr '(equal (+ (expt a 2) (expt b 2) ) (expt c 2))))
(car (cdr (car (cdr '(/ (* (+ b1 b2) h) 2)))))
(car (car (cdr (cdr '(* (* 2 pi R) (+ R h)))))) ; car devuelve un atomo, y cdr devuelve una lista por eso se aprlica dos veces car a lo ultimo

#|  (load "C:/Users/lucio.solis/Documents/Nueva carpeta/Matias/Paradigma/TP 2/2.1.SignosMasEnFromulas.lsp")  |#
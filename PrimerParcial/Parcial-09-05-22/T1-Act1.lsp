#| 
Analice la siguiente funcion
(defun armo (A B)
    (cond 
        ((and (consp A) (consp B)) (append A B))
        ((and (consp A) (not (consp B))) (list A B))
        ((and (not(consp A))  (consp B)) (cons A B))
        (T (list A B))
    )
)

Y determine el resultado que arrojaría si evalúo la misma con los siguientes parámetros
|#


(defun armo (A B)
    (cond 
        ((and (consp A) (consp B)) (append A B))
        ((and (consp A) (not (consp B))) (list A B))
        ((and (not(consp A))  (consp B)) (cons A B))
        (T (list A B))
    )
)

(pprint (armo (car '(+ 20 5 2)) (* (+ 3 2) 10)) )
#| 
    A -> +
    B -> 50
    > (+ 50)
|#

(pprint (armo '(* 7 10 (- 15 5)) (cdr '(+ 3 4))))
#| 
    A -> (* 7 10 (- 15 5))
    B -> (3 4)
    > ✖️ ((* 7 10 (- 15 5)) (3 4)) Es append no list, 
    > ✅(* 7 10 (- 15 5) 3 4)
|#

(pprint (armo (+ 3 4) (last '(* 7 10 (- 15 5)))))
#| 
    A -> 7
    B -> ((- 15 5))
    > (7 (- 15 5))
|#

(pprint (armo (member 3 '(+ 3 4)) (numberp 4)))
#| 
    A -> T ✖️ -> (3 4)
    Member devuelve una lista desde el elemento encontrado hasta el final
    B -> T
    > ✖️((T) (T))
    > ✅ ((3 4) T)
|#
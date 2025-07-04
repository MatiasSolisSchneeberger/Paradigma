#|
a. Analice las siguientes expresiones Lisp. Indique qué valor devuelve cada una, y explique **paso a paso cómo llega al resultado**.
    
    Debe identificar claramente si cada `cond` es verdadero o falso, qué cláusula se ejecuta y qué devuelve.
    
    ```lisp
    (defun evalua1 (X Y)
      (cond
        ((and (listp X) (not (numberp Y))) (append X Y))
        ((and (numberp X) (symbolp Y)) (list X Y))
        ((or (and (integerp X) (not (consp Y)))
             (and (listp Y) (listp X)))
         (cons X (reverse Y)))
        (t 'caso-default)))
    ```
    
    Evalúe las siguientes expresiones:
    
    `(evalua1 '(4 2) '(1 3 5))`
    
    `(evalua1 3 'Z)`
    
    `(evalua1 '(a b) 'c)`
    
    `(evalua1 9 '(a b c))`
    
b. Dada la siguiente función:
    
    ```lisp
    (defun analiza (X Y Z)
      (cond
        ((and (listp X) (listp Y) (symbolp Z)) (list Z X Y))
        ((or (null X) (numberp Y)) (cons Y X))
        ((and (stringp Z) (not (listp Y))) (list (length Z)))
        ((not (equal X Y)) (append Y Z))
        (t 'nada)
      )
    )
    ```
    
    Evalúe las siguientes expresiones:
    
    `(analiza '(1 2) '(3 4) 'R)`
    
    `(analiza nil 5 "hola")`
    
    `(analiza '(1 2) '(1 2) '(3 4))`
    
    `(analiza 2 '(3 4) 'Z)`
    
c. Dada la siguiente función:
    
    ```lisp
    (defun calculo (A B C)
        (if (> (+ (* A 2) (- C B)) 0)
            (list 'positivo (+ (* A 2) (- C B)))
            (list 'negativo (+ (* A 2) (- C B)))
        )
    )
    ```
    
    Evalúe las siguientes llamadas:
    
    `(calculo 3 2 10)`
    
    `(calculo 1 8 5)`
    
    `(calculo 0 0 0)`
    
    - Modifique la función anterior para que, en lugar de usar `if`, use `cond`, y agregue una cláusula adicional que devuelva `'cero` si el resultado de la operación es 0.
|#

; a
(defun evalua1 (X Y)
    (cond
        ((and (listp X) (not (numberp Y))) (append X Y))
        ((and (numberp X) (symbolp Y)) (list X Y))
        ((or (and (integerp X) (not (consp Y)))
             (and (listp Y) (listp X)))
         (cons X (reverse Y)))
        (t 'caso-default)))

(evalua1 '(4 2) '(1 3 5)) ; -> (4 2 5 3 1)
(evalua1 3 'Z) ; -> (3 Z)
(evalua1 '(a b) 'c) ; -> (a b c) 
(evalua1 9 '(a b c)) ; -> 'caso-default
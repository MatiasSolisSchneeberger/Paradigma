#|
    Definir una funcion llamada equacion, al cual permite el ingreso por teclado de las variables necesarias para poder resolver la siguiente funcion:
    (-b + √(b²-4ac))/(2a)
    Nota:
    el parcial dice b, no -b, le cambié para que esté bien la formula
|#

(defun equacion ()
    (let ((a) (b) (c))
        (format t "Ingresar valor de a:")
        (setq a (read))
        (format t "Ingresar valor de b:")
        (setq b (read))
        (format t "Ingresar valor de c:")
        (setq c (read))
        (if (and (numberp a) (> a 0) (numberp b) (numberp c))
            (formula a b c)
            'error
        )
    )
)

(defun formula (a b c)
    (if (> (- (expt b 2) (* 4 a c)) 0)
        (/ (+ (- b) (sqrt (- (expt b 2) (* 4 a c)))) (* 2 a))
        'complejo
    )
)
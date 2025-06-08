(defun monto-a-dolares (monto)
    (let ((dolar 1200))
        (if (and (numberp monto) (> monto 0))
            (pprint (/ monto dolar))
            (format t "El monto ingresado no es válido."))
    )
)

(monto-a-dolares -450)
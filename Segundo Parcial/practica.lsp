(defun ingresar-datos 
    (let ((lista-corredores))
        (format t "Ingrese lista (numero-corredor tiempo): ")
        (setq lista-corredores (read))

        (if (listp lista-corredores)
            (pprint (SiLlego-NoLlego lista-corredores))
            (format t "Entrada no válida. Debe ser una lista de corredores."))
    )
)


(defun SiLlego-NoLlego (lista)
    (mapcar (lambda (x)
        (cond 
            ((and (numberp (cadr x)) (> (cadr x) 0)) "Si Llego")
            ((and (numberp (cadr x)) (< (cadr x) 0)) "No Llego")
        )
        ) lista
    )
)

(defun llegaron-todosp (lista)
    (cond 
        ((null lista) t)
        ((not (numberp (cadr lista))) (llegaron-todosp lista))
        ((> (cadr lista) 0) (llegaron-todosp (cdr lista)))
        (t nil)        
    )
)

(defun nombres-no-llegaron (lista)
    (cond 
        ((null lista) nil)
        ((not (numberp (cadr (car lista)))) (nombres-no-llegaron (cdr lista)))
        ((< (cadr (car lista)) 0) (cons (caar lista) (nombres-no-llegaron (cdr lista))))
    )
)
#| (cond
		((null lista) nil)
		((and (numberp (cadr (car lista))) (< (cadr (car lista)) 0)) (cons (caar lista) (lista-perdedores (cdr lista))))
		(t (lista-perdedores (cdr lista)))) |#



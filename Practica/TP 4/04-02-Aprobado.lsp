#| Actividad Nº 2  |#
 
#| A  partir  de  una  lista  con  las  Notas  de  los  parciales  de  un  alumno,  que  es  ingresada  por  el operador,  definir  una  función  predicado  llamada  Aprobado.  La  función  debe  evaluar  si  la materia está aprobada. Una materia está aprobada si todas las notas son 4 o valores mayores a 4 |#

(defun Aprobado (lista)
    (cond
        ((null lista) t) ; caso base: lista vacía → aprobado
        ((< (car lista) 4) nil) ; si alguna nota es menor que 4 → no aprobado
        (t (Aprobado (cdr lista))) ; seguir verificando el resto
    )
)

(defun ingresar-notas ()
    (let ((notas))
        (format t "Ingresar notas: ")
        (setq notas (read))
        (if (listp notas)
            (pprint (Aprobado notas))
        )
    )
)
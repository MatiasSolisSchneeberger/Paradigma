#| Actividad Nº 3 |# 
 
#| A partir de una lista heterogénea que es ingresada por el operador, definir una función que permita el ingreso de dicha lista y pueda resolver cada una de las siguientes situaciones: 
 
    • Definir  una  función  que  permita  devolver  una  lista  cuyos  elementos  serán  sublistas. Cada  sublista  estará  conformada  por  el  elemento  que  sea  una  sublista  de  la  lista ingresada por el operador junto con su longitud. 
    • A partir de una lista heterogénea que es ingresada como parámetro, definir una función que devuelva una lista cuyos elementos son el resultado de evaluar uno a uno si cada uno elemento de la lista ingresada como parámetro es una sublista.
|#

(defun ingresar-lista ()
    (let ((lista))
        (format t "Ingresar lista heterogénea: ")
        (setq lista (read))
        (if (listp lista)
            (pprint (long-sublista lista))
            (pprint (es-sublista? lista))
        )
    )
)

(defun long-sublista (lista)
    (cond 
        ((null lista) nil) ;si no es una lista devuelve nil
        ((listp (car lista)) ;si es una lista
            (cons ;hago una lista con
                (list
                    (length (car lista))
                    (car lista)
                );((longitud-de-lista (lista)) 
                (long-sublista (cdr lista)) ; [siguiente elemento] ...)
            )   
        )
        (t (long-sublista (cdr lista))) ;llama para que siga evaluando
    )
)

(defun es-sublista? (lista)
    (cond
        ((null lista) nil)
        (t (cons (consp (car lista)) (es-sublista? (cdr lista))))
    )
)
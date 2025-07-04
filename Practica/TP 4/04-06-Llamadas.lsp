#| Actividad 6 |#
#| 
En la compañía telefónica FunTel modelan la historia de llamadas del usuario mediante una lista conteniendo dos sublistas.  

    • la primer sublista corresponde al tiempo de duraciones de llamadas (en minutos) en el horario normal 
    • la segunda sublista corresponde al tiempo de duraciones de llamadas (en minutos) en el horario reducido 
 
Se necesita que desarrollen las siguientes funciones:  
    1. cuandoHabloMas,  que  determine  en  que  horario  hablo  mas.  Si  en  los  dos  hablo  la misma cantidad, responder IGUAL 
    2. LLamadaMasLarga: que determine cuál fue la llamada más larga y en que horario 
    3. LLamadaMasCorta: que determine cuál fue la llamada más corta y en que horario
|#

(defun ingresar-datos()
    (let ((horario-normal) (horario-reducido))
        (format t "Ingresar lista con los minutos del horario normal: ")
        (setq horario-normal (read))
        (format t "Ingresar lista con los minutos del horario reducído: ")
        (setq horario-reducido (read))

        (if (and (listp horario-normal) (listp horario-reducido))
            (progn 
                (pprint (cuandohablomas horario-normal horario-reducido))
                (pprint (llamadamaslarga horario-normal horario-reducido))
                (pprint (llamadamascorta horario-normal horario-reducido))
            )
            (format t "Las listas ingresadas no son válidas. Deben ser listas de números.")
        )

    )
)
#| utils |#
(defun suma-recursiva (lista)
    (cond
        ((null lista) 0)
        ((numberp (car lista)) (+ (car lista) (suma-recursiva (cdr lista))))
        (t (suma-recursiva (cdr lista)))
    )
)

(defun maximo-recursivo (lista)
    (cond
        ((endp lista) nil) ; lista vacía
        ((null (rest lista)) (first lista)) ;un elemento
        ((numberp (first lista))
            (max (first lista) (maximo-recursivo (rest lista))))
        (t (maximo-recursivo (rest lista))) ; ignora elementos no numéricos
    )
)


(defun minimo-recursivo (lista)
    (cond
        ((endp lista) nil)
        ((null (rest lista)) (first lista)) ;un elemento
        ((numberp (first lista))
            (min (first lista) (minimo-recursivo (rest lista))))
        (t (minimo-recursivo (rest lista)))
    )
)


#| 1 |#
(defun cuandoHabloMas (listaDia listaNoche)
    (cond
        ((> (suma-recursiva listaDia) (suma-recursiva listaNoche)) 'horario-normal)
        ((< (suma-recursiva listaDia) (suma-recursiva listaNoche)) 'horario-reducido)
        (t 'igual))
)


#| 2 |#
(defun LlamadaMasLarga (listaDia listaNoche)
    (cond 
        ((> (maximo-recursivo listaDia) (maximo-recursivo listaNoche)) 
            (list 'horario-normal (maximo-recursivo listaDia)))
        ((< (maximo-recursivo listaDia) (maximo-recursivo listaNoche)) 
            (list 'horario-reducido (maximo-recursivo listaNoche)))
        (t 'igual)
    )
)

#| 3 |#
(defun LlamadaMasCorta (listaDia listaNoche)
    (cond
        ((< (minimo-recursivo listaDia) (minimo-recursivo listaNoche)) 
            (list 'horario-normal (minimo-recursivo listaDia)))
        ((> (minimo-recursivo listaDia) (minimo-recursivo listaNoche)) 
            (list 'horario-reducido (minimo-recursivo listaNoche)))
        (t 'igual)
    )
)

#| para mejorar:
    - validar que los numeros sean enteros positivos
 |#
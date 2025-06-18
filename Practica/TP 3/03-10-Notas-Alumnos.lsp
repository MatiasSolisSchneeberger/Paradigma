#| Actividad 3.10 |# 
#|
Las notas de los alumnos se registran en una lista formada por sub listas con el siguiente formato:  
    ((NL1 NOTA1) (NL2 NOTA2) ......)  
donde NL.. representa los nros de libreta y NOTA la nota de cada alumno.   
Desarrollar una función que permita ingresar la lista por teclado y resolver cada una de las siguientes 
consultas  
 
    a. ¿Qué cantidad de alumnos que hay?  
    b. ¿Cuál es el nro de libreta del primer alumno de la lista?   
    c. ¿Qué nota sacó el último alumno de la lista?  
    d. ¿Ha regularizado la materia el primer alumno de la lista? Un alumno regulariza la materia cuando su nota es >= 6.
|#

(defun ingresar-lista ()
    (let ((lista))
        (format t "Ingrese la lista de notas: ")
        (setq lista (read))
        (if (listp lista)
            (progn
                (pprint (cantidad-alumnos lista))
                (pprint (primer-alumno lista))
                (pprint (nota-ultimo-alumno lista))
                (pprint (regularizo-primer-alumno lista))
            )
        )
    )
)

(defun cantidad-alumnos (lista)
    (length lista)
)

(defun primer-alumno (lista)
    (first (first lista))
)

(defun nota-ultimo-alumno (lista)
    (car (last lista)))

(defun regularizo-primer-alumno (lista)
    (>= (first (first lista)) 6)
)
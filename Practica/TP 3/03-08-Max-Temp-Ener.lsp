#| Actividad 3.8 |#
#| Las máximas temperaturas para cada uno de los días del mes de Enero se registraron en una lista que se encuentra contenida en la variable max_temp. Definir una función que permita el ingreso de la misma y llame a cada una de las funciones desarrolladas en la Actividad 2.2. a,b,c y d Recordar que cada item debe desarrollarse dentro de una función diferente ya que cada función permite devolver un único elelemnto. |#

#| 
a)
(setq tempPrimerDia (cadr (car max_temp)))
(format t "La temperatura máxima del primer día del mes es: ~a" tempPrimerDia)

b)
(setq tempUltimoDia (cadr (last max_temp)))
(format t "~%La temperatura máxima del último día del mes es: ~a" tempUltimoDia)

c)
(setq tempTercerDia (cadr (nth 2 max_temp)))
(format t "~%La temperatura máxima del tercer día del mes es: ~a" tempTercerDia)

d)
(setq tempAnteUltimoDia (cadr (nth (- (length max_temp) 2) max_temp)))
(format t "~%La temperatura máxima del anteúltimo día del mes es: ~a" tempAnteUltimoDia)
|#

(defun tempPrimerDia (lista)
    (car lista)
)

(defun tempUltimoDia (lista)
    (car (last lista))
)

(defun tempTercerDia (lista)
    (nth 2 lista)
)

(defun tempAnteUltimoDia (lista)
    (nth (- (length lista) 2) lista)
)

(defun ingresar-temperaturas ()
    (let ((lista))
        (format t "Ingresar temperaturas: ")
        (setq lista (read))
        (if (listp lista)
            (progn
                (pprint (tempPrimerDia lista))
                (pprint (tempUltimoDia lista))
                (pprint (tempTercerDia lista))
                (pprint (tempAnteUltimoDia lista))
            )
        )
    )
)




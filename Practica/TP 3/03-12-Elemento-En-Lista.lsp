#| Actividad 3.12   |#
 
#| Definir  una  función  llamada  posición,  que  reciba  como  argumentos  un  elemento  y  una  lista  e indique la posición que ocupa el elemento en la lista.   |#

(defun posicion (elemento lista)
    (if (member elemento lista)
        (- (length lista) (length(member elemento lista)))))

(pprint (posicion 't '(a b c d e f g h i j k l m n o p q r s t u v w x y z)))



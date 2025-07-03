#| Actividad 3.13  |#
 
#| Se registran los valores del nivel del rio, cada una en una variable diferente, las que son ingresadas por el operador. Desarrollar las funciones necesarias para obtener  
    a.  La dispersión del nivel del rio. Siendo la dispersión, la diferencia entre el valor más alto y el más bajo. Estos valores deben ser ingresados.  
  
    b.  Determinar si esta dispersión corresponde a días parejos, locos o normales.
        - Son días parejos si la dispersión es chica (menos de 30 cm)  
        - Son días locos si la dispersión es grande (más de un metro)  
        - Son días normales si no son ni parejos ni locos. |#
(defun main ()
    (let ((nivel1 10) (nivel2 20) (nivel3 300))
        (pprint (dispersion nivel1 nivel2 nivel3))
        (pprint (clasificacion nivel1 nivel2 nivel3))
    )
)

(defun dispersion (nivel1 nivel2 nivel3)
    (let ((max (max nivel1 nivel2 nivel3))
          (min (min nivel1 nivel2 nivel3)))
        (- max min)))

(defun clasificacion (nivel1 nivel2 nivel3)
    (cond
        ((< (dispersion nivel1 nivel2 nivel3) 30) 'parejos)
        ((> (dispersion nivel1 nivel2 nivel3) 100) 'locos)
        (t 'normales)  
    )
)

(main)


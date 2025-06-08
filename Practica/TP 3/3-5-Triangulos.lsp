#| Actividad 3.5 |#

#| Definir una función llamada clasifico-triángulos, la que a partir de los valores de los lados de un triángulo ingresados por el operador, clasifique el mismo en: isósceles, equilátero o escaleno. Tener en cuenta que todo triangulo debe cumplir que. “Un lado es menor que la suma de los otros dos y mayor que la diferencia”. |#

(defun clasificar-triangulo (lado1 lado2 lado3)
	(cond
		((and (equal lado1 lado2) (equal lado2 lado3)) 'equilatero)
		((or (equal lado1 lado2) (equal lado2 lado3) (equal lado1 lado3)) 'isosceles)
		(T 'escaleno)
	)
)

(defun verificar-triangulo (lado1 lado2 lado3)
	(and
			(> (+ lado2 lado3) lado1) (> lado1 (abs (- lado2 lado3)))
			(> (+ lado1 lado3) lado2) (> lado2 (abs (- lado1 lado3)))
			(> (+ lado1 lado2) lado3) (> lado3 (abs (- lado1 lado2)))
	)
)
		
	


(defun ingresar-triangulo ()
	(let ((lado1) (lado2) (lado3))
		(format t "Ingresar lado 1: ")
		(setq lado1 (read))
		(format t "Ingresar lado 2: ")
		(setq lado2 (read))
		(format t "Ingresar lado 3: ")
		(setq lado3 (read))

		(if (and 
					(numberp lado1)
					(numberp lado2)
					(numberp lado3)
					(verificar-triangulo lado1 lado2 lado3))
			(clasificar-triangulo lado1 lado2 lado3)
			'no-es-triangulo
		)
	)
)
#| punto 2 |# 

(defun comprar-caramelos() 
  (let 
    ((caramelo1) (caramelo2) (monto)) 
    (pprint "Ingresar precio caramelo 1: ") 
    (setq caramelo1 (read)) 
    (pprint "Ingresar precio caramelo 2: ") 
    (setq caramelo2 (read)) 
    (pprint "Ingresar monto: ") (setq monto (read)) 
    (if 
      (and 
        (and (numberp monto) (> monto 0)) 
        (and (numberp caramelo1) (> caramelo1 0)) 
        (and (numberp caramelo2) (> caramelo2 0)) ) 
			(progn
				(pprint (validar-compra monto caramelo1 caramelo2)) 
				(pprint (comprar-con-1/4-monto monto caramelo1 caramelo2))
				(pprint (cantidad-caramelos monto caramelo1 caramelo2))
			)
      (pprint "Datos ingresados invalidos") ) ) )

(defun validar-compra (monto caramelo1 caramelo2) 
  (cond 
    (
			(and 
        (or (> monto caramelo1) (> monto caramelo2))
        (not (and (> monto caramelo1) (> monto caramelo2)))) 
			"monto justo para una golosina")
    ((< monto (+ caramelo1 caramelo2)) "monto insuficiente") 
    ((>= monto (+ caramelo1 caramelo2)) "monto suficiente para 2 golosinas") )) 
 

(defun comprar-con-1/4-monto 
  (monto caramelo1 caramelo2) 
  (and 
    (> (/ monto 4) (* caramelo1 10)) 
    (> (/ monto 4) (* caramelo2 10)) ) ) 

(defun cantidad-caramelos 
  (monto caramelo1 caramelo2) 
  (list 
    (list 'golosina1 (/ monto caramelo1))
    (list 'golosina2 (/ monto caramelo2))
  )
)

(comprar-caramelos)
#|  |#
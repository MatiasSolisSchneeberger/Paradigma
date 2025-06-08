#| a. A partir de un determinado monto en pesos, que será ingresado por operador, definir una función que devuelva la cantidad de dólares que se pueden comprar con el monto ingresado. |# #| a |# 
(format t "a)") 

(defun monto-a-dolares ((monto)) 
  (if 
    (and (numberp monto) (> monto 0)) 
    (pprint (/ monto 1200)) 
    (format t "El monto ingresado no es válido.~%") ) ) 

(monto-a-dolares 24000)
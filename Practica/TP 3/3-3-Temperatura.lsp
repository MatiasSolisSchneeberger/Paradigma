#| 
A partir de un determinado valor de temperatura, que será ingresado por el operador, definir una función llamada clima que me indique el estado del clima, teniendo en cuenta:
| Temperatura   | Clima     |
|---------------|-----------|
| < 0           | Helado    |
| = 0 y < 10    | Frio      |
| = 10 y < 20   | Templado  |
| = 20 y < 30   | Cálido    |
| > 30          | Abrasador |
|#

(defun clima (temperatura)
    (cond
        ((< temperatura 0) 'Helado)
        ((< temperatura 10) 'Frio)
        ((< temperatura 20) 'Templado)
        ((< temperatura 30) 'Cálido)
        (t 'Abrasador) ; Para temperaturas mayores a 30
    )
)

(defun ingreasar-temperatura()
    (let (temperatura)
        (format t "Ingrese la temperatura: ")
        (setf temperatura (read))
        (if (numberp temperatura)
            (clima temperatura)
            'error
        )
    )
)
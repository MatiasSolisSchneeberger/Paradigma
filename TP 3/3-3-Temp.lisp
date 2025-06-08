#| 
A partir de un determinado valor de temperatura, que será ingresado por el operador, definir una función llamada clima que me indique el estado del clima, teniendo en cuenta: 

| Temperatura   | Clima     |
| ------------- |---------- |
| < 0           | Helado    |
| = 0 y < 10    | Frio      |
| = 10 y < 20   | Templado  |
| = 20 y < 30   | Cálido    |
| > 30          | Abrasador |
|#

(defun temp ()
    (let (temp)
        (format t "Ingresar temperatura: ")
        (setq temp (read))
        (cond  
            ((< temp 0) (format t "helado"))
            ((< temp 10) (format t "frio"))
            ((< temp 20) (format t "templado"))
            ((< temp 30) (format t "calido"))
            ((> temp 30) (format t "abrasador"))
        )
    )
)

(temp)
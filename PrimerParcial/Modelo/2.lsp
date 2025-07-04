#|
2. Se desea diseñar un sistema que gestione compras para una obra, donde se necesita adquirir **arena, piedra y hierro** según un monto determinado de dinero.
    a. Desarrollar una función que permita el ingreso por parte del operador de:
        - El valor por m³ de arena
        - El valor por m³ de piedra
        - El valor por kg de hierro
        - El monto disponible
        
        Esta función deberá invocar internamente a las funciones de los puntos b, c, d **y también**:
        
        - Validar que ningún valor ingresado sea negativo o nulo.
        - Mostrar un mensaje distinto si el dinero es menor a todos los valores unitarios.
    b. Definir una función que, a partir del dinero disponible y del valor del m³ de **arena**, devuelva:
        - `"monto insuficiente"`: si no alcanza para comprar ni 1 m³.
        - `"monto justo para 2m³"`: si el monto alcanza justo para comprar 2 m³.
        - `"monto suficiente para más de 2m³"`: si el monto supera el valor de 2 m³.
    c. Definir una función **predicado** que verifique si con **la mitad del dinero disponible** se puede comprar **al menos**:
        - 4 m³ de arena
        - 1.5 m³ de piedra
        - 10 kg de hierro
        
        Todos los valores deben ser ingresados como parámetros.
        
    d. Definir una función `resumen-compra-materiales` que:
    - Tome como parámetros el dinero disponible, y los valores de arena, piedra y hierro.
    - Devuelva una **lista de tres sublistas**, cada una con:
        1. El nombre del material (como string)
        2. El monto total disponible
        3. El precio unitario
        4. La cantidad que se puede comprar con ese dinero
        5. Un mensaje adicional, por ejemplo:
            - `"compra mínima cubierta"` si se puede comprar al menos 1 unidad
            - `"insuficiente"` si no alcanza ni para 1 unidad
            - `"excedente de compra"` si se puede comprar más de 10 unidades
|#

(defun ingresar-datos ()
    (let ((arena) (piedra) (hierro) (monto))
        (format t "Ingresar cantidad de arena: ")
        (setq arena (read))
        (format t "Ingresar cantidad de piedra: ")
        (setq piedra (read))
        (format t "Ingresar cantidad de hierro: ")
        (setq hierro (read))
        (format t "Ingresar monto: ")
        (setq monto (read))

        (cond
            ; verifico que no sean numeros ni negativos 
            ((not (and 
                    (numberp arena) (> arena 0 )
                    (numberp piedra) (> piedra 0 )
                    (numberp hierro) (> hierro 0 )
                    (numberp monto) (> monto 0 )
                )) "error en los datos")
            
            ; verifico que se pueda NO se comprar todo
            ((< monto (+ arena piedra hierro)) "El monto no alcanza")

            ; por defecto
            (t (progn
                    (pprint (calcular-arena arena monto))
                    (pprint (alcanza? arena piedra hierro monto))
                    (pprint (resumen-compra-materiales arena piedra hierro monto)))))))
; b
(defun calcular-arena (arena monto)
    (cond 
        ((< monto arena) "Monto Insuficiente")
        ((= monto (* arena 2)) "Monto justo para 2m^3")
        ((> monto (* arena 2)) "Monto suficiente para más de 2m^3")
        (t "No")))

; c
(defun alcanza? (arena piedra hierro monto)
    ((and (< monto arena) (< monto piedra) (< monto hierro))))

; d
(defun resumen-compra-materiales (arena piedra hierro monto)
    (list 
        (list "Arena"  monto arena (/ monto arena) (verificar-compra arena monto))
        (list "Piedra" monto piedra (/ monto piedra) (verificar-compra piedra monto))
        (list "Hierro" monto hierro (/ monto hierro) (verificar-compra hierro monto))))

(defun verificar-compra (material monto)
    (cond 
        ((> (/ monto material) 1) "compra mínima cubierta")
        ((> (/ monto material) 10) "excedente de compra")
        (t "insuficiente")))
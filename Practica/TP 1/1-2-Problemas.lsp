#| Actividad 2 |# 

#| 1) Calcular la cantidad de dólares que podemos comprar con $ 52.300 teniendo en cuenta la cotización DÓLAR BANCO NACIÓN = 1044,50 |# 
(* 52300 1044.50) 


#| 2) Representar 250 has en m2, sabiendo que 1 ha = 10.000 m2 |# 
(* 250 10000) 


#| 3) Las notas correspondientes a los exámenes finales de un alumno son las siguientes: 7, 5, 10 y 8. Calcular su promedio y que porcentaje de materias aprobadas tiene, considerando que el total de materias en la carrera es 25. |# 
(/ (+ 7 5 10 8) 4) ; Promedio
(/ (* 4 100) 25) ; Porcentaje de materias aprobadas


#| 4) Calcular la cantidad de estantes que tiene una biblioteca, sabiendo que tengo ubicado 30 libros y que en cada estante entran 6 libros. |# 
(/ 30 6) 

#| 5) Calcular la cantidad de aros que tiene Macarena guardados en 4 cajas. Cada caja tiene 8 pares y en una de ellas tiene además un solo aro. |# 
(* 4 8) ; Cantidad de pares de aros
(+ (* 4 8) 1) ; Cantidad total de aros


#| 6) Calcular la cantidad de estampillas que tiene Felipe en su álbum. El mismo tiene 14 páginas y cada página tiene 2 filas con 9 estampillas en cada fila. |# 
(* 14 2 9) ; Cantidad de estampillas


#| 7) Calcular la cantidad de plata que tiene ahorrada Pedro si tiene 6 monedas de $10, 4 billetes de $50, 1 billete de $500 y 5 billetes de $100. Si luego gasta 1/4 de su dinero, ¿cuánto dinero le queda? |# 
(* 6 10) ; Cantidad de monedas
(+ (* 6 10) (* 4 50) (* 1 500) (* 5 100)) ; Cantidad total de dinero
(/ (* 6 10) 4) ; Gasto
(- (+ (* 6 10) (* 4 50) (* 1 500) (* 5 100)) (/ (* 6 10) 4)) ; Dinero que le queda


#| 8) En un tanque hay 357 litros de agua, en otro 49800 centilitros y el tercero 1765 litros. Si se reparte toda el agua en envases de 20 litros ¿Cuántos envases habrá? |# 
(+ 357 49800 1765) ; Cantidad total de agua
(/ (+ 357 49800 1765) 20) ; Cantidad de envases


#| 9) En un almacén hay 62 sacos de papas. Cada saco pesa 85 kg. Si se venden la mitad de las papas ¿cuántos kilos quedarán sin vender? |# 
(* 62 85) ; Cantidad total de papas
(/ (* 62 85) 2) ; Cantidad de papas vendidas
(- (* 62 85) (/ (* 62 85) 2)) ; Kilos que quedan sin vender


#| 10) Durante su primer año la estación de bomberos recibió 40 alertas. Al año siguiente recibió el 20% más. ¿Cuántas alertas recibió en su corta historia? |#
(* 40 1.2) ; Cantidad de alertas recibidas en el segundo año
(+ (* 40 1.2) 40) ; Cantidad total de alertas recibidas

| Nombre                           | Función Lisp                                  | Cantidad de átomos | Cantidad de sub listas | Longitud de la lista |
| -------------------------------- | --------------------------------------------- | ------------------ | ---------------------- | -------------------- |
| Rectángulo - Perímetro           | (+ (* 2 a) (* 2 b))                           | 7                  | 2                      | 3                    |
| Rectángulo - Área                | (* a b)                                       | 3                  | 0                      | 3                    |
| Cuadrado - Perímetro             | (+ (* 2 a) (* 2 a))                           | 7                  | 2                      | 3                    |
| Cuadrado - Área                  | (expt a 2)                                    | 3                  | 0                      | 3                    |
| Paralelogramo - Perímetro        | (+ (* 2 a) (* 2 b))                           | 7                  | 2                      | 3                    |
| Paralelogramo - Área             | (* base altura)                               | 3                  | 0                      | 3                    |
| Triangulo - Perímetro            | (+ a b c)                                     | 4                  | 0                      | 4                    |
| Triangulo - Área                 | (/ (* base altura) 2)                         | 5                  | 1                      | 3                    |
| Circunferencia - Perímetro       | (* 2 pi r)                                    | 4                  | 0                      | 4                    |
| Circunferencia - Área            | (* pi (expt r 2))                             | 5                  | 1                      | 3                    |
| Triangulo rectángulo - Pitágoras | (equal (+ (expt a 2) (expt b 2) ) (expt c 2)) | 11                 | 2                      | 3                    |
| Triangulo rectángulo - Área      | (/ (* a b) 2)                                 | 5                  | 1                      | 3                    |
| Trapecio - Área                  | (/ (* (+ b1 b2) h) 2)                         | 7                  | 1                      | 3                    |
| Paralelepípedo recto - AreaL     | (* (+ (* 2 a) (* 2 b)) h)                     | 9                  | 1                      | 3                    |
| Paralelepípedo recto - AreaT     | (+ (* (+ (* 2 a) (* 2 b)) h) (* 2 (+ a b)))   | 15                 | 2                      | 3                    |
| Paralelepípedo recto - Volumen   | (* a b h)                                     | 4                  | 0                      | 4                    |
| Cilindro - AreaL                 | (* (* 2 pi R) h)                              | 6                  | 1                      | 3                    |
| Cilindro - AreaT                 | (* (* 2 pi R) (+ R h))                        | 8                  | 2                      | 3                    |
| Cilindro - Volumen               | (* pi (expt r 2) h)                           | 6                  | 1                      | 4                    |
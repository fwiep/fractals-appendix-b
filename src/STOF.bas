10 REM ***STOFFRACTAL , MONTE CARLO METHODE***
20 REM ***NAAM:STOF (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS : PI = 3.141593: RANDOMIZE 100
40 WINDOW (-1.1, -1.2)-(2.1, 1.2)
50 R1 = .6: A = R1 * COS(2 * PI / 3): B = R1 * SIN(2 * PI / 3)
60 R2 = .6: C = R2 * COS(2 * PI / 3): D = -R2 * SIN(2 * PI / 3)
70 X = A: Y = B: REM ***KEUZE BEGINPUNT***
80 FOR K = 1 TO 10000
90 IF RND < .5 THEN GOSUB 120 ELSE GOSUB 140
100 PSET (X, Y)
110 NEXT K: END
120 Z = X: X = A * X - B * Y: Y = B * Z + A * Y: REM ***ROTATIE***
130 RETURN
140 Z = X: X = C * X - D * Y + 1 - C: Y = D * Z + A * Y - D: REM ***ROTATIE***
150 RETURN
160 Z = X: X = A * X + B * Y: Y = B * Z - A * Y: REM ***SPIEGELING***
170 RETURN
180 Z = X: X = C * X + D * Y + 1 - C: Y = D * Z - A * Y - D: REM ***SPIEGELING***
190 RETURN: END


10 REM ***STOFFRACTAL , VARIA , MONTE CARLO METHODE***
20 REM ***NAAM:STOFA (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS : PI = 3.141593: RANDOMIZE 100
40 WINDOW (-2, -1.5)-(2, 1.5)
50 R = 1: A = R * COS(2 * PI / 3): B = R * SIN(2 * PI / 3): C = 2
60 X = 1: Y = 0: REM ***KEUZE BEGINPUNT***
70 FOR K = 1 TO 10000
80 IF RND < .5 THEN GOSUB 100 ELSE GOSUB 140
90 PSET (X, Y): NEXT K: END
100 Z = X: X = A * X - B * Y: Y = B * Z + A * Y: RETURN: REM ***ROTATIE***
110 Z = X: X = X / 2 + Y: Y = -Z - Y / 2: RETURN
120 Z = X: X = Y / 2: Y = Z + Y: RETURN
130 Z = X: X = Y / 2: Y = Z + Y: RETURN
140 Z = X: X = (X * X - Y * Y + C - 1) / C: Y = 2 * Z * Y / C: RETURN
150 Z = X: X = (X * X + Y * Y + C - 1) / C: Y = 2 * Z * Y / C: RETURN
160 RETURN: END


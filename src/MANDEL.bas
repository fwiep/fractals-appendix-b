10 REM ***MANDELBROT SET***
20 REM ***NAAM:MANDEL (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS
40 P1 = -2.5: P2 = -1.5: P3 = 1.5: P4 = 1.5
50 N1 = 250: N2 = INT(.833 * N1 * (P4 - P2) / (P3 - P1))
60 FOR I = -N1 TO N1
70 A = ((N1 - I) * P1 + (N1 + I) * P3) / (2 * N1)
80 FOR J = 0 TO N2
90 B = ((N2 - J) * P2 + (N2 + J) * P4) / (2 * N2)
100 X = A: Y = B
110 FOR K = 1 TO 50
120 Z = X: X = X * X - Y * Y + A
130 Y = 2 * Y * Z + B
140 IF X * X + Y * Y > 16 THEN GOTO 160
150 NEXT K
160 PSET (320 + I, 200 - J), K MOD 2: PSET (320 + I, 200 + J), K MOD 2
170 NEXT J: NEXT I: END


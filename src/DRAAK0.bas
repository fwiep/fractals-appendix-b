10 REM ***DRAAKKROMME***
20 REM ***NAAM:DRAAK0 (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS : PI = 3.141593
40 WINDOW (-.7, -1)-(1.7, .8)
50 P = 12: REM ***KEUZE ORDE***
60 H = 2 ^ (-P / 2): S = 0
70 X = H * COS(P * PI / 4): Y = H * SIN(P * PI / 4)
80 LINE (0, 0)-(X, Y)
90 FOR N = 1 TO 2 ^ P - 1: M = N
100 IF M MOD 2 = 0 THEN M = M / 2: GOTO 100
110 IF M MOD 4 = 1 THEN D = 1 ELSE D = -1
120 S = (S + D): F = (S - P / 2) * PI / 2
130 X = X + H * COS(F): Y = Y + H * SIN(F)
140 LINE -(X, Y)
150 NEXT N: END


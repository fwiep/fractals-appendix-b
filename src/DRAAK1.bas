10 REM ***DRAAKKROMME MET AFGERONDE HOEKEN*#*
20 REM ***NAAM:DRAAK1 (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS : PI = 3.141593
40 WINDOW (-.7, -1.1)-(1.7, .7)
50 P = 10: REM ***KEUZE ORDE***
60 H = 2 ^ (-P / 2): S = 0
70 X1 = H * COS(P * PI / 4): Y1 = -H * SIN(P * PI / 4)
80 LINE (0, 0)-(.75 * X1, .75 * Y1)
90 FOR N = 1 TO 2 ^ P - 1: M = N
100 IF M MOD 2 = O THEN M = M / 2: GOTO 100
110 IF M MOD 4 = 1 THEN D = 1 ELSE D = -1
120 S = (S + D) MOD 4
130 X2 = X1 + H * COS((S - P / 2) * PI / 2)
140 Y2 = Y1 + H * SIN((S - P / 2) * PI / 2)
150 XA = (3 * X1 + X2) / 4: YA = (3 * Y1 + Y2) / 4
160 XB = (X1 + 3 * X2) / 4: YB = (Y1 + 3 * Y2) / 4
170 LINE -(XA, YA): LINE -(XB, YB)
180 X1 = X2: Y1 = Y2: NEXT N
190 LINE -(1, 0): END


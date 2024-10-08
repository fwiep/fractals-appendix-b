10 REM ***PYTHAGORASLIJN***
20 REM ***NAAM:LEVY (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS : PI = 3.141593
40 WINDOW (-.5, -1.2)-(1.5, .3)
50 P = 12: REM ***KEUZE ORDE***
60 H = 2 ^ (-(P / 2)): A = H * COS(P * PI / 4): B = H * SIN(P * PI / 4)
70 LINE (0, 0)-(A, -B): LINE -(A + B, A - B)
80 X = 1: Y = 1
90 FOR N = 2 TO 2 ^ P - 1
100 M = N: S = 1
110 IF M MOD 2 = 1 THEN S = S + 1
120 M = M \ 2
130 IF M > 1 THEN GOTO 110
140 IF S MOD 4 = 0 THEN X = X + 1
150 IF S MOD 4 = 1 THEN Y = Y + 1
160 IF S MOD 4 = 2 THEN X = X - 1
170 IF S MOD 4 = 3 THEN Y = Y - 1
180 LINE -(A * X + B * Y, A * Y - B * X)
190 NEXT N: BEEP: A$ = INPUT$(1): END


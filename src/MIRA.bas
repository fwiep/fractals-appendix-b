10 REM ***BANEN VAN MIRAS ALGEMEEN SYSTEM***
20 REM ***NAAM:MIRA (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS
40 WINDOW (-60, -45)-(60, 45)
50 REM ***WAARDEN VAN PARAMETERS***
60 A = .31: B = 1: C = 2 - 2 * A
70 REM ***KEUZE BEGINPUNT***
80 X = 12: Y = 0: W = A * X + C * X * X / (1 + X * X)
90 FOR N = 0 TO 10000
100 PSET (X, Y)
110 Z = X: X = B * Y + W
120 W = A * X + C * X * X / (1 + X * X): Y = W - Z
130 NEXT N: BEEP: A$ = INPUT$(1): END


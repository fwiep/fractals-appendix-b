10 REM ***STERFRACTAL***
20 REM ***NAAM:STER (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS : PI = 3.141593
40 WINDOW (-.5, -.8)-(1.5, .7)
50 P = 5: V = 4: A = 144: R = .35: A = A * PI / 180
60 PSET (0, 0): X = 0: Y = 0
70 FOR N = 0 TO (V + 1) * V ^ (P - 1) - 1
80 M = N: B = N * A: F = 0
90 IF M MOD V <> 0 OR F >= P - 1 THEN GOTO 110
100 F = F + 1: M = INT(M / V): GOTO 90
110 X = X + R ^ (P - F - 1) * COS(B): Y = Y + R ^ (P - F - 1) * SIN(B)
120 LINE -(X, Y)
130 NEXT N: END


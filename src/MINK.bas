10 REM ***DE WORST VAN MINKOWSKI***
20 REM ***NAAM:MINK (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS
40 WINDOW (-.3, -.7)-(1.3, .5)
50 DIM A(7): A(O) = 0: A(1) = 1: A(2) = 0: A(3) = 3
60 A(4) = 3: A(5) = 0: A(6) = 1: A(7) = 0
70 P = 3: DIM T(P): REM ***KEUZE ORDE***
80 H = 4 ^ (-P): X = 0: Y = 0: PSET (0, 0)
90 FOR N = 0 TO 8 ^ P - 1
100 M = N: FOR L = 0 TO P - 1
110 T(L) = M MOD 8: M = INT(M / 8): NEXT L
120 S = 0: FOR K = 0 TO P - 1
130 S = S + A(T(K)): S = S MOD 4
140 NEXT K
150 IF S = 0 THEN X = X + H
160 IF S = 1 THEN Y = Y + H
170 IF S = 2 THEN X = X - H
180 IF S = 3 THEN Y = Y - H
190 LINE -(X, Y)
200 NEXT N: END


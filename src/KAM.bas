10 REM ***CANTOR KAM***
20 REM ***NAAM:KAM (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS
40 WINDOW (-.3, -.4)-(1.3, .8)
50 DIM A(729), B(729): A(0) = 0: A(1) = 1
60 B = .1: LINE (0, 0)-(1, 0): LINE -(1, -B): LINE -(0, -B): LINE -(0, 0)
70 FOR P = 1 TO 6
80 FOR I = 0 TO 2 ^ P - 1
90 B(I) = A(I) / 3: B(I + 2 ^ P) = 1 - (1 - A(I)) / 3
100 NEXT I
110 FOR J = 1 TO 2 ^ (P + 1) - 1
120 A(J) = B(J): NEXT J
130 FOR K = 0 TO 2 ^ (P + 1) - 1 STEP 2
140 LINE (A(K), B * P)-(A(K + 1), B * P)
150 LINE (A(K), B * P)-(A(K), B * P - B): LINE (A(K + 1), B * P)-(A(K + 1), B * P - B)
160 NEXT K: NEXT P: END


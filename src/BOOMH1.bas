10 REM ***BOOMFRACTAL OP LETTER H***
20 REM ***NAAM:BOOMH1 (C) 1987 HANS LAUWERIER***
30 DIM X(4096), Y(4096)
40 SCREEN 3: CLS
50 WINDOW (-2, -1.5)-(2, 1.5)
60 P = 10: REM ***KEUZE ORDE***
70 A = SQR(1 / 2): REM ***KEUZE VERKORTINGSVERHOUDING***
80 X(1) = 0: Y(1) = 0
90 FOR M = 0 TO P: S = M MOD 2
100 FOR N = 2 ^ M TO 2 ^ (M + 1) - 1
110 IF S = 1 THEN GOSUB 160 ELSE GOSUB 190
120 NEXT N: NEXT M
130 FOR N = 1 TO 2 ^ (P + 1) - 1
140 LINE (X(2 * N), Y(2 * N))-(X(2 * N + 1), Y(2 * N + 1))
150 NEXT N: END
160 X(2 * N) = X(N): Y(2 * N) = Y(N) + A ^ M
170 X(2 * N + 1) = X(N): Y(2 * N + 1) = Y(N) - A ^ M
180 RETURN
190 X(2 * N) = X(N) + A ^ M: Y(2 * N) = Y(N)
200 X(2 * N + 1) = X(N) - A ^ M: Y(2 * N + 1) = Y(N)
210 RETURN: END


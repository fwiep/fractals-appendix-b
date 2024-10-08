10 REM ***ZEEF VAN SIERPINSKI***
20 REM ***NAAM:SIER (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS : PI = 3.141593
40 WINDOW (-2.6, -2.4)-(2.6, 1.5)
50 P = 5: DIM T(P): A = SQR(3)
60 FOR M = 0 TO P
70 FOR N = 0 TO 3 ^ M - 1
80 N1 = N: FOR L = 0 TO M - 1
90 T(L) = N1 MOD 3: NI = N1 \ 3: NEXT L
100 X = 0: Y = 0
110 FOR K = 0 TO M - 1
120 X = X + COS((4 * T(K) + 1) * PI / 6) / 2 ^ K
130 Y = Y + SIN((4 * T(K) + 1) * PI / 6) / 2 ^ K
140 NEXT K
150 U1 = X + A / 2 ^ (M + 1): U2 = X - A / 2 ^ (M + 1): V1 = Y - 1 / 2 ^ (M + 1): V2 = Y + 1 / 2 ^ M
160 LINE (U1, V1)-(X, V2)
170 LINE -(U2, V1): LINE -(U1, V1)
180 NEXT N: NEXT M: BEEP: A$ = INPUT$(1): END


10 REM ***BOOM VAN PYTHAGORAS***
20 REM ***NAAM:PYTHB1 (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS : PI = 3.141593
40 WINDOW (-8, -4)-(8, 8)
50 P = 8: DIM A(P): REM ***KEUZE ORDE***
60 X = 0: Y = 0: U = 1: V = 1: C = 1 / SQR(2)
70 FOR M = 0 TO P
80 FOR N = 2 ^ M TO 2 ^ (M + 1) - 1
90 L = N: H = 1: X = 0: Y = 0: F = 0
100 FOR K = 0 TO M - 1
110 A(M - K) = L MOD 2: L = INT(L / 2): NEXT K
120 X = 0: Y = 0
130 FOR J = 1 TO M
140 IF A(J) = 0 THEN GOSUB 220 ELSE GOSUB 250
150 NEXT J
160 U = H * (COS(F) + SIN(F))
170 V = H * (COS(F) - SIN(F))
180 GOSUB 200
190 NEXT N: NEXT M: END
200 LINE (X - V, Y - U)-(X + U, Y - V): LINE -(X + V, Y + U)
210 LINE -(X - U, Y + V): LINE -(X - V, Y - U): RETURN
220 X = X - H * (COS(F) + 2 * SIN(F))
230 Y = Y + H * (2 * COS(F) - SIN(F))
240 F = F + PI / 4: H = C * H: RETURN
250 X = X + H * (COS(F) - 2 * SIN(F))
260 Y = Y + H * (2 * COS(F) + SIN(F))
270 F = F - PI / 4: H = C * H: RETURN
280 END


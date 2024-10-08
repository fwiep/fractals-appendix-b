10 REM ***PYTHAGORASBOOM, BACKTRACKMETHODE***
20 REM ***NAAM:PYTHB3 (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS : PI = 3.141593
40 WINDOW (-5, -3)-(5, 4.5)
50 P = 12: DIM X1(P), Y1(P), X2(P), Y2(P), U1(P), V1(P), U2(P), V2(P)
60 REM ***KEUZE HOEK F***
70 F = PI / 5: C = COS(F): S = SIN(F)
80 A1 = -C * S: A2 = C ^ 2: B1 = A1 + A2: B2 = -A1 + A2
90 C1 = B2: C2 = 1 - Bl: D1 = 1 - A1: D2 = 1 - A2
100 X1(0) = 0: Y1(0) = 0: U1(0) = 1: V1(0) = 0
110 LINE (0, 0)-(0, -1): LINE -(1, -1): LINE -(1, 0)
120 S = 1: GOSUB 180
130 FOR M = 1 TO 2 ^ (P - 1) - 1: S = P: N = M
140 IF N MOD 2 = 0 THEN N = N \ 2: S = S - 1: GOTO 140
150 GOSUB 160: NEXT M: END
160 X1(S - 1) = X2(S - 1): Y1(S - 1) = Y2(S - 1)
170 U1(S - 1) = U2(S - 1): V1(S - 1) = V2(S - 1)
180 FOR J = S TO P
190 X = X1(J - 1): Y = Y1(J - 1): U = U1(J - 1): V = V1(J - 1)
200 X3 = U - X: Y3 = V - Y
210 X1(J) = X + A1 * X3 - A2 * Y3
220 Y1(J) = Y + A2 * X3 + A1 * Y3
230 U1(J) = X + B1 * X3 - B2 * Y3
240 V1(J) = Y + B2 * X3 + B1 * Y3
250 X2(J) = X + C1 * X3 - C2 * Y3
260 Y2(J) = Y + C2 * X3 + C1 * Y3
270 U2(J) = X + D1 * X3 - D2 * Y3
280 V2(J) = Y + D2 * X3 + D1 * Y3
290 LINE (X, Y)-(X1(J), Y1(J)): LINE -(U1(J), V1(J)): LINE -(U, V)
300 LINE -(X, Y): LINE -(X2(J), Y2(J)): LINE -(U2(J), V2(J)): LINE -(U, V)
310 NEXT J: RETURN: END


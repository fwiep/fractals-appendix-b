10 REM ***BOOM VAN MANDELBROT , BACKTRACKMETHODE***
20 REM ***NAAM:BOOMM (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS : PI = 3.141593
40 WINDOW (-9.5, -3)-(10.5, 12)
50 P = 11: DIM X1(P), Y1(P), X2(P), Y2(P), U1(P), V1(P), U2(P), V2(P)
60 REM ***KEUZE HOEK F***
70 R1 = .72: R2 = .67: A = 3.98: B = 4.38
80 A1 = 0: A2 = A: B1 = 0: B2 = A + R1
90 E1 = 1: E2 = B + R2: F1 = 1: F2 = B
100 C1 = .5: C2 = B2: D1 = .5: D2 = E2
110 X1(0) = 0: Y1(0) = 0: U1(0) = 1: V1(0) = 0
120 LINE (0, 0)-(1, 0)
130 S = 1: GOSUB 210
140 FOR M = 1 TO 2 ^ (P - 1) - 1: S = P: N = M
150 IF N MOD 2 = 0 THEN N = N \ 2: S = S - 1: GOTO 150
160 H = A2: A2 = F2: F2 = H: H = B2: B2 = E2: E2 = H: H = C2: C2 = D2: D2 = H
170 GOSUB 190
180 NEXT M: BEEP: PAINT (.5, .5)
185 A$ = INPUT$(1): END
190 X1(S - 1) = X2(S - 1): Y1(S - 1) = Y2(S - 1)
200 U1(S - 1) = U2(S - 1): V1(S - 1) = V2(S - 1)
210 FOR J = S TO P
220 X = X1(J - 1): Y = Y1(J - 1): U = U1(J - 1): V = V1(J - 1)
230 X3 = U - X: Y3 = V - Y
240 X1(J) = X + A1 * X3 - A2 * Y3: Y1(J) = Y + A2 * X3 - A1 * Y3
250 U1(J) = X + B1 * X3 - B2 * Y3: V1(J) = Y + B2 * X3 + B1 * Y3
260 X2(J) = X + E1 * X3 - E2 * Y3: Y2(J) = Y + E2 * X3 + E1 * Y3
270 U2(J) = X + F1 * X3 - F2 * Y3: V2(J) = Y + F2 * X3 + F1 * Y3
280 U3 = X + C1 * X3 - C2 * Y3: V3 = Y + C2 * X3 + C1 * Y3
290 U4 = X + D1 * X3 - D2 * Y3: V4 = Y + D2 * X3 + D1 * Y3
300 IF J = S THEN H = A2: A2 = F2: F2 = H: H = B2: B2 = E2: E2 = H: H = C2: C2 = D2: D2 = H
310 LINE (X, Y)-(X1(J), Y1(J)): LINE (U1(J), V1(J))-(U3, V3)
320 LINE -(U4, V4): LINE -(X2(J), Y2(J)): LINE (U2(J), V2(J))-(U, V)
330 NEXT J: RETURN: END

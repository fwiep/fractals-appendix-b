10 REM ***SCHEVE PYTHAGORASBOOM***
20 REM ***NAAM:PYTHB2 (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS : PI = 3.141593
40 WINDOW (-2.5, -2)-(5.5, 4)
50 DIM X(4096), Y(4096)
60 REM ***KEUZE HOEK F***
70 F = PI / 3: C = COS(F): S = SIN(F)
80 A1 = -C * S: A2 = C ^ 2: B1 = A1 + A2: B2 = -A1 + A2
90 C1 = B2: C2 = 1 - B1: D1 = 1 - A1: D2 = 1 - A2
100 X(2) = 0: Y(2) = 0: X(3) = 1: Y(3) = 0
110 LINE (0, 0)-(1, 0): LINE -(1, -1): LINE -(0, -1): LINE -(0, 0)
120 FOR M = 1 TO 10
130 FOR J = 0 TO 2 ^ (M - 1) - 1
140 X0 = X(2 ^ M + 2 * J): Y0 = Y(2 ^ M + 2 * J)
150 X1 = X(2 ^ M + 2 * J + 1): Y1 = Y(2 ^ M + 2 * J + 1)
160 XA = X0 + A1 * (X1 - X0) - A2 * (Y1 - Y0)
170 YA = Y0 + A2 * (X1 - X0) + A1 * (Y1 - Y0)
180 XB = X0 + B1 * (X1 - X0) - B2 * (Y1 - Y0)
190 YB = Y0 + B2 * (X1 - X0) + B1 * (Y1 - Y0)
200 XC = X0 + C1 * (X1 - X0) - C2 * (Y1 - Y0)
210 YC = Y0 + C2 * (X1 - X0) + C1 * (Y1 - Y0)
220 XD = X0 + D1 * (X1 - X0) - D2 * (Y1 - Y0)
230 YD = Y0 + D2 * (X1 - X0) + D1 * (Y1 - Y0)
240 X(2 ^ (M + 1) + 4 * J) = XA: Y(2 ^ (M + 1) + 4 * J) = YA
250 X(2 ^ (M + 1) + 4 * J + 1) = XB: Y(2 ^ (M + 1) + 4 * J + 1) = YB
260 X(2 ^ (M + 1) + 4 * J + 2) = XC: Y(2 ^ (M + 1) + 4 * J + 2) = YC
270 X(2 ^ (M + 1) + 4 * J + 3) = XD: Y(2 ^ (M + 1) + 4 * J + 3) = YD
280 LINE (X0, Y0)-(XA, YA): LINE -(XB, YB)
290 LINE -(X1, Y1): LINE -(XD, YD)
300 LINE -(XC, YC): LINE -(X0, Y0)
310 NEXT J: NEXT M: BEEP
320 A$ = INPUT$(1): END


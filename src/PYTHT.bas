10 REM ***KALE PYTHAGORASBOOM***
20 REM ***NAAM:PYTHT (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS : PI = 3.141593
40 WINDOW (-3.5, -2)-(4.5, 4)
50 DIM X(4096), Y(4096)
60 REM ***KEUZE HOEK F***
70 F = PI / 4: C = COS(F): S = SIN(F)
80 A1 = -C * S: A2 = C ^ 2: B1 = A1 + A2: B2 = -A1 + A2
90 C1 = B2: C2 = 1 - B1: D1 = 1 - A1: D2 = 1 - A2
100 X(2) = 0: Y(2) = 0: X(3) = 1: Y(3) = 0
110 LINE (.5, -1)-(.5, 0)
120 FOR M = 1 TO 10
130 FOR J = 0 TO 2 ^ (M - 1) - 1
140 X0 = X(2 ^ M + 2 * J): Y0 = Y(2 ^ M + 2 * J)
150 X1 = X(2 ^ M + 2 * J + 1): Y1 = Y(2 ^ M + 2 * J + 1)
160 U = X1 - X0: V = Y1 - Y0
170 XA = X0 + A1 * U - A2 * V: YA = Y0 + A2 * U + A1 * V
180 XB = X0 + B1 * U - B2 * V: YB = Y0 + B2 * U + B1 * V
190 XC = X0 + C1 * U - C2 * V: YC = Y0 + C2 * U + C1 * V
200 XD = X0 + D1 * U - D2 * V: YD = Y0 + D2 * U + D1 * V
210 X(2 ^ (M + 1) + 4 * J) = XA: Y(2 ^ (M + 1) + 4 * J) = YA
220 X(2 ^ (M + 1) + 4 * J + 1) = XB: Y(2 ^ (M + 1) + 4 * J + 1) = YB
230 X(2 ^ (M + 1) + 4 * J + 2) = XC: Y(2 ^ (M + 1) + 4 * J + 2) = YC
240 X(2 ^ (M + 1) + 4 * J + 3) = XD: Y(2 ^ (M + 1) + 4 * J + 3) = YD
250 LINE ((X0 + X1) / 2, (Y0 + Y1) / 2)-((XA + XB) / 2, (YA + YB) / 2)
260 LINE ((X0 + X1) / 2, (Y0 + Y1) / 2)-((XC + XD) / 2, (YC + YD) / 2)
270 NEXT J: NEXT M: BEEP
280 AS$ = INPUT$(1): END


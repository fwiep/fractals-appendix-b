10 REM ***PYTHAGORASBOOM , BACKTRACKMETHODE***
20 REM ***NAAM:PYTHBS (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS : PI = 3.141593: RANDOMIZE 100
40 WINDOW (-9.5, -3)-(10.5, 12): W = 0: W = .15
50 P = 11: DIM X1(P), Y1(P), X2(P), Y2(P), U1(P), V1(P), U2(P), V2(P)
60 A1 = 0: A2 = 3: B1 = .5: B2 = 3.5: C1 = 1: C2 = 3
70 X1(0) = 0: Y1(0) = 0: U1(0) = 1: V1(0) = 0
80 LINE (0, 0)-(1, 0)
90 S = 1: GOSUB 260: GOSUB 160
100 FOR M = 1 TO 2 ^ (P - 1) - 1: S = P: N = M
110 IF S < 5 THEN GOSUB 260
120 IF N MOD 2 = 0 THEN N = N \ 2: S = S - 1: GOTO 120
130 GOSUB 140: NEXT M: BEEP: A$ = INPUT$(1): END
140 X1(S - 1) = X2(S - 1): Y1(S - 1) = Y2(S - 1)
150 U1(S - 1) = U2(S - 1): V1(S - 1) = V2(S - 1)
160 FOR J = S TO P
170 X = X1(J - 1): Y = Y1(J - 1): U = U1(J - 1): V = V1(J - 1)
180 X3 = U - X: Y3 = V - Y
190 X1(J) = X + A1 * X3 - A2 * Y3: Y1(J) = Y + A2 * X3 + A1 * Y3
200 U1(J) = X + B1 * X3 - B2 * Y3: V1(J) = Y + B2 * X3 + B1 * Y3
210 X2(J) = U1(J): Y2(J) = V1(J)
220 U2(J) = X + C1 * X3 - C2 * Y3: V2(J) = Y + C2 * X3 + C1 * Y3
230 LINE (X, Y)-(X1(J), Y1(J)): LINE (U1(J), V1(J))-(X2(J), Y2(J))
240 LINE (U2(J), V2(J))-(U, V)
250 NEXT J: RETURN: END
260 A2 = A2 * (1 + (RND - .5) * W)
270 C2 = C2 * (1 + (RND - .5) * W)
280 B2 = (A2 + C2) / 2 + .5
290 RETURN: END
'1300 -200140! : NEXT M : BEEP : A$=INPUT$(1) : END


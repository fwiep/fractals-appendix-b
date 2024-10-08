10 REM ***STOFFFRACTAL BACKTRACKMETHODE , DRIETALLIG***
20 REM ***NAAM:STOFBT (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS
40 WINDOW (-.8, -.6)-(1.6, 1.2)
50 P = 7: DIM X1(P), Y1(P), X2(P), Y2(P), X3(P), Y3(P)
60 T1 = .5: T2 = .866: REM ***POSITIE TOP***
70 A = .43: B = .3: C = A: D = B: E = A: F = B
80 G = T1 * (1 - E) + T2 * F: H = -T1 * F + T2 * (1 - E)
90 PSET (0, 0): PSET (1, 0): PSET (T1, T2)
100 X1(0) = .5: Y1(0) = .289: PSET (X1(0), Y1(0))
110 FOR M = 0 TO 3 ^ (P - 1) - 1: S = P: N = M
120 IF M = 0 THEN S = 1: GOTO 150
130 IF N MOD 3 = 0 THEN N = N \ 3: S = S - 1: GOTO 130
140 X1(S - 1) = X2(S - 1): Y1(S - 1) = Y2(S - 1): X2(S - 1) = X3(S - 1): Y2(S - 1) = Y3(S - 1)
150 FOR J = S TO P
160 X = X1(J - 1): Y = Y1(J - 1)
170 X1(J) = A * X - B * Y: Y1(J) = B * X + A * Y
180 X2(J) = C * X - D * Y + 1 - C: Y2(J) = D * X + C * Y - D
190 X3(J) = E * X - F * Y + G: Y3(J) = F * X + E * Y + H
200 PSET (X1(J), Y1(J)): PSET (X2(J), Y2(J)): PSET (X3(J), Y3(J))
210 NEXT J: NEXT M: BEEP: A$ = INPUT$(1): END


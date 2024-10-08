10 REM ***STOFFRACTAL BACKTRACK METHODE***
20 REM ***NAAM:STOFB (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS : PI = 3.141593
40 'A = 0: B = .7: C = .7: D = 0: P = 11: WINDOW (-.9, -.7)-(1.5, 1.1)
50 'A = .6: B = .6: C = .53: D = 0: P = 12: WINDOW (-.9, -.7)-(1.5, 1.1)
60 A = 0: B = .7071: C = .5: D = -.5: P = 12: WINDOW (-1.5, -1.3)-(2.5, 1.7)
70 DIM X1(P), Y1(P), X2(P), Y2(P): PSET (0, 0): PSET (1, 0)
80 X1(0) = A: Y1(0) = B: PSET (X1(0), Y1(0))
90 S = 1: GOSUB 150
100 FOR M = 1 TO 2 ^ (P - 1) - 1: S = P: N = M
110 IF N MOD 2 = 0 THEN N = N \ 2: S = S - 1: GOTO 110
120 GOSUB 140: NEXT M: BEEP
130 A$ = INPUT$(1): END
140 X1(S - 1) = X2(S - 1): Y1(S - 1) = Y2(S - 1)
150 FOR J = S TO P
160 X = X1(J - 1): Y = Y1(J - 1)
170 X1(J) = A * X - B * Y: Y1(J) = B * X + A * Y: REM ***ROTATIE***
180 X2(J) = C * X - D * Y + 1 - C: Y2(J) = D * X + C * Y - D: REM ***ROTATIE***
190 PSET (X1(J), Y1(J)): PSET (X2(J), Y2(J))
200 NEXT J: RETURN: END


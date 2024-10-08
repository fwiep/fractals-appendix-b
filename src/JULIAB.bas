10 REM *** JULIA FRACTAL VAN Z:=Z^2+C , BACKTRACK METHODE***
20 REM ***NAAM:JULIAB (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS
40 WINDOW (-2, -1.5)-(2, 1.5)
50 P = 12: DIM X1(P), Y1(P), X2(P), Y2(P)
60 A = 0: B = 1
70 X1(0) = -1.3002: Y1(0) = .6248
80 PSET (X1(0), Y1(0)): S = 1: GOSUB 130
90 FOR M = 1 TO 2 ^ (P - 1) - 1: S = P: N = M
100 IF N MOD 2 = 0 THEN N = N \ 2: S = S - 1: GOTO 100
110 GOSUB 120: NEXT M: END
120 X1(S - 1) = X2(S - 1): Y1(S - 1) = Y2(S - 1)
130 FOR J = S TO P
140 X = X1(J - 1): Y = Y1(J - 1)
150 R = SQR((X - A) ^ 2 + (Y - B) ^ 2) / 2: T = (X - A) / 2
160 X1(J) = SQR(R + T): X2(J) = -X1(J)
170 Y1(J) = SQR(R - T) * SGN(Y - B): Y2(J) = -Y1(J)
180 PSET (X1(J), Y1(J)): PSET (X2(J), Y2(J))
190 NEXT J: RETURN: END


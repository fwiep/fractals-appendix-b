10 REM ***BOOMFRACTAL OP LETTER H , BACKTRACK METHODE***
20 REM ***NAAM:BOOMH2 (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS
40 WINDOW (-1.2, -.9)-(1.2, .9)
50 P = 7: DIM X1(P), X2(P), X3(P), X4(P), Y1(P), Y2(P), Y3(P), Y4(P)
60 A = .5: REM ***KEUZE VERKORTINGSVERHOUDING***
70 X1(0) = 0: Y1(0) = 0: S = 1: GOSUB 130
80 FOR M = 1 TO 4 ^ (P - 1) - 1: N = M: S = P
90 IF N MOD 4 = 0 THEN N = N \ 4: S = S - 1: GOTO 90
100 GOSUB 110: NEXT M: END
110 X1(S - 1) = X2(S - 1): X2(S - 1) = X3(S - 1): X3(S - 1) = X4(S - 1)
120 Y1(S - 1) = Y2(S - 1): Y2(S - 1) = Y3(S - 1): Y3(S - 1) = Y4(S - 1)
130 FOR J = S TO P
140 X = X1(J - 1): Y = Y1(J - 1): B = A ^ J: C = A * B * 1.5
150 X1(J) = X + B: Y1(J) = Y + C
160 X2(J) = X + B: Y2(J) = Y - C
170 X3(J) = X - B: Y3(J) = Y + C
180 X4(J) = X - B: Y4(J) = Y - C
190 LINE (X - B, Y)-(X + B, Y)
200 LINE (X1(J), Y1(J))-(X2(J), Y2(J))
210 LINE (X3(J), Y3(J))-(X4(J), Y4(J))
220 NEXT J: RETURN: END


10 REM ***BIFURCATIEDIAGRAM X:=AX(1-X) ***
20 REM **#NAAM:COLLET (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS
40 FOR N = 0 TO 280
50 A = 2.8 + 1.2 * N / 280: X = .7
60 FOR K = 1 TO 400
70 X = A * X * (1 - X)
80 IF K > 100 THEN PSET (40 + 2 * N, 300 - 250 * X)
90 NEXT K: NEXT N: END


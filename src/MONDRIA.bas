10 REM ***MODERNE KUNST***
20 REM ***NAAM:MONDRIAAN (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS : RANDOMIZE 1
40 H = .1: REM ***KEUZE SCHALINGSCONSTANTE***
50 WINDOW (-.3, -.1)-(1.3, 1.1)
60 LINE (0, 0)-(1, 0)
70 LINE -(1, 1): LINE -(0, 1): LINE -(0, 0)
80 FOR N = 1 TO 100
90. X = .8 * INT(100 * RND) / 100 + .1
100 Y = .8 * INT(100 * RND) / 100 + .1
110 K = H * (1 - SQR(RND))
120 IF RND > .5 THEN GOSUB 140 ELSE GOSUB 150
130 NEXT N: END
140 LINE (X - K, Y)-(X + K, Y): RETURN
150 LINE (X, Y - K)-(X, Y + K): RETURN: END


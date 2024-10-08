10 REM ***BOOMSTRUCTUUR IN TWEETALLIG TALSTELSEL***
20 REM ***NAAM:BOOM2 (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS
40 WINDOW (-2, -.5)-(2, 2.5)
50 LINE (0, 0)-(0, 1)
60 FOR K = 1 TO 7: H = 2 ^ (-K + 1)
70 FOR L = 1 TO 2 ^ K
80 X = -2 + (4 * L - 2) * H: Y = 2 - H
90 LINE (X - H, Y + H / 2)-(X - H, Y)
100 LINE (X - H, Y)-(X + H, Y): LINE -(X + H, Y + H / 2)
110 NEXT L: NEXT K: END


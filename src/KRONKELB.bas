10 REM ***FRACTAL KROMME MET MOTIEF , BACKTRACKMETHODE***
20 REM ***NAAM:KRONKELB (C) 1987 HANS LAUWERIER***
30 SCREEN 3: CLS : PI = 3.141593
40 WINDOW (-3.2, -2.4)-(3.2, 2.4)
50 U = 4: DIM A(U), B(U): REM ***AANTAL ELEMENTEN BEGINLIJN***
60 REM ***BEGINLIJN , VECTOREN IN WARE LENGTE EN RICHTING IN GRADEN***
70 DATA 2,0,2,90,2,180,2,-90
80 X0 = -1: Y0 = -1: REM ***COORDINATEN BEGINHOEKPUNT***
90 FOR I = 0 TO U - 1: READ A(I), B(I): B(I) = B(I) * PI / 180: NEXT I
100 V = 4: DIM C(V), D(V), L(V), F(V): REM ***AANTAL ELEMENTEN MOTIEF***
110 REM ***MOTIEF , VECTOREN IN RELATIEVE LENGTE EN RICHTING IN GRADEN***
120 DATA 1,0,1,60,1,-60,1,0
130 FOR I = 1 TO V: READ L(I), F(I): F(I) = F(I) * PI / 180: NEXT I
140 S = 0: FOR I = 1 TO V: S = S + L(I) * COS(F(I)): NEXT I
150 FOR I = 1 TO V: L(I) = L(I) / S
160 C(I) = L(I) * COS(F(I)): D(I) = L(I) * SIN(F(I)): NEXT I
170 INPUT P: DIM X(V, P), Y(V, P): REM ***ORDE P***
180 PSET (X0, Y0)
190 FOR Q = 0 TO U - 1: X(1, 0) = 1: Y(1, 0) = 0: S = 1
200 A = A(Q) * COS(B(Q)): B = A(Q) * SIN(B(Q)): GOSUB 260
210 FOR M = 1 TO V ^ (P - 1) - 1: N = M: S = P
220 IF N MOD V = 0 THEN N = N \ V: S = S - 1: GOTO 220
230 GOSUB 240: NEXT M: NEXT Q: END
240 FOR I = 1 TO V - 1
250 X(I, S - 1) = X(I + 1, S - 1): Y(I, S - 1) = Y(I + 1, S - 1): NEXT I
260 FOR J = S TO P: FOR K = 1 TO V
270 X(K, J) = C(K) * X(1, J - 1) - D(K) * Y(1, J - 1)
280 Y(K, J) = D(K) * X(1, J - 1) + C(K) * Y(1, J - 1)
290 NEXT K: NEXT J
300 FOR L = 1 TO V
310 X = A * X(L, P) - B * Y(L, P): Y = B * X(L, P) + A * Y(L, P)
320 LINE -STEP(X, Y)
330 NEXT L: RETURN: END


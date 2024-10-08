# Fractals, appendix B - Programs

See [LEESMIJ.md](LEESMIJ.md) for a readme in Dutch.

> Fractals, Amsterdam, Aramith 1987, ISBN 90-6834-031-X, by Hans Lauwerier

Some time ago, this dutch book about fractals found its way into my home.
Although it was released in 1987 and it's now more than 35 years later, I
*did* want to follow through the examples given in the book's appendix B.

Therein, the author provides computer programs written in BASIC to generate all
fractal images printed in the book. He encourages the reader to experiment by
using a microcomputer and to type the programs into its BASIC interpreter.

I decided to scan the appendix' pages and use an OCR program to transform the
images into runnable BASIC programs. The next challenge was to run them under a
modern operating system (Fedora Workstation 40 on a 3GHz quadcore x64 CPU).

To the rescue came [DOSBox-X][451] and an old copy of [QBasic 4.5][533]. The
original author used the Hercules graphics mode (`SCREEN 3`), so I had to make
sure `MSHERC.COM` was loaded before my adventures could begin.

Please enjoy this nostalgic dive into programming, feeling the excitement when
those dry mathematical principles suddenly take shape in front of your eyes!

## Chapter 1

- [`BOOMH1`](src/BOOMH1.bas) H-fractal
- [`BOOMH2`](src/BOOMH2.bas) H-fractal, backtrack method
- [`BOOM2`](src/BOOM2.bas) two-tiered tree
- [`BOOM3`](src/BOOM3.bas) three-tiered tree
- [`SIER`](src/SIER.bas) Sierpiński triangle

## Chapter 2

- [`KAM`](src/KAM.bas) Cantor's comb

## Chapter 3

- [`KOCH`](src/KOCH.bas) Koch's curve
- [`MINK`](src/MINK.bas) Minkowski sausage
- [`KRONKEL`](src/KRONKEL.bas) island with winding coast
- [`LEVY`](src/LEVY.bas) Lévy's curve
- [`DRAAK`](src/DRAAK.bas) dragon curve with arbitrary angle
- [`DRAAKO`](src/DRAAKO.bas) dragon curve between two points
- [`DRAAK1`](src/DRAAK1.bas) dragon curve with rounded corners

## Chapter 4

- [`WIKKEL`](src/WIKKEL.bas) circular involute
- [`ARCHI`](src/ARCHI.bas) Archimedes' spiral
- [`LOGSPIRA`](src/LOGSPIRA.bas) logaritmic spiral
- [`BOLSPIRA`](src/BOLSPIRA.bas) ball spiral
- [`WERVEL`](src/WERVEL.bas) rotating and shrinking square
- [`PYTHB1`](src/PYTHB1.bas) Pythagoras' tree, number system method
- [`PYTHB2`](src/PYTHB2.bas) leaning Pythagoras' tree
- [`PYTHB3`](src/PYTHB3.bas) Pythagoras' tree, backtrack method
- [`PYTHT`](src/PYTHT.bas) Pythagoras' branching tree
- [`BOOMM`](src/BOOMM.bas) Mandelbrot tree, backtrack method
- [`STER`](src/STER.bas) star fractal

## Chapter 5

- [`STOFB`](src/STOFB.bas) dust fractal of two rotations, backtrack method
- [`STOFBT`](src/STOFBT.bas) dust fractal of three rotations, backtrack method

## Chapter 6

- [`MONDRIAAN`](src/MONDRIAAN.bas) random pattern of horizontal and vertical lines
- [`STOF`](src/STOF.bas) dust fractal of two rotations or miroring, Monte-Carlo method
- [`PYTHBS`](src/PYTHBS.bas) Pythagoras' tree random interference, backtrack method
- [`BROWNL`](src/BROWNL.bas) Brown's line
- [`COLLET`](src/COLLET.bas) bifurcation-diagram of x -> ax(1-x)

## Chapter 7

- [`HENON`](src/HENON.bas) orbits of Henon's quadratic system
- [`MIRA`](src/MIRA.bas) orbits of Mira's dynamical system
- [`JULIAB`](src/JULIAB.bas) Julia fractal of quadratic system, backtrack method
- [`MANDEL`](src/MANDEL.bas) Mandelbrot set of quadratic system, pixel method

## Chapter 8

- [`WOLK`](src/WOLK.bas) orbits of a dynamical system
- [`WOLK1`](src/WOLK1.bas) orbits of a dynamical systemm
- [`WOLK2`](src/WOLK2.bas) orbits of a dynamical system
- [`STOFA`](src/STOFA.bas) dust fractal, Monte-Carlo method
- [`KRONKELT`](src/KRONKELT.bas) winding line with given starting line and motif, number system method
- [`KRONKELB`](src/KRONKELB.bas) winding line with given starting line and motif, backtrack method

[451]: https://dosbox-x.com/
[533]: https://winworldpc.com/product/quickbasic/45

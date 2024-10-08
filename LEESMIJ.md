# Fractals, appendix B - Programma's

Zie [README.md](README.md) voor een Engelse readme.

> Fractals, Amsterdam, Aramith 1987, ISBN 90-6834-031-X, door Hans Lauwerier

Een tijdje geleden kwam dit boek over fractals op mijn pad. Hoewel het in 1987
uitkwam en het inmiddels meer dan 35 jaar later is, wilde ik de voorbeelden in
appendix B *wel degelijk* volgen.

De auteur, Hans Lauwerier, geeft een aantal in [BASIC][342] geschreven
computerprogramma's, waarmee alle afbeeldingen uit het boek zijn gegenereerd.
Hij moedigt de lezer aan om met een microcomputer te experimenteren en de
programma's daarop in de BASIC-interpreter over te typen.

Ik besloot de pagina's van de appendix te scannen en een OCR-programma te
gebruiken om de afbeeldingen om te zetten in uitvoerbare BASIC-programma's.
Toen kwam de uitdaging om ze draaiende te krijgen onder een modern
besturingssysteem (Fedora Workstation 40 op een 3GHz quadcore x64 CPU).

Te hulp schoten mij [DOSBox-X][451] en een oud exemplaar van [QBasic 4.5][533].
De oorspronkelijke auteur gebruikte de Hercules grafische modus (`SCREEN 3`),
dus ik moest ervoor zorgen dat `MSHERC.COM` geladen was voordat mijn avonturen
konden beginnen.

> [!NOTE]
> De programma's zijn bijna 1:1 kopiën uit de papieren appendix. Ik heb alleen
> in regel 20 telkens een copyright vermelding toegevoegd en door QBasic spaties
> laten invoegen tussen alle commando's, operators en operanden.

Geniet van deze nostalgische duik in het programmeren van mijn jeugd, en sta
versteld hoe die droge wiskunde plotseling op het scherm tot leven komen!

## Hoofdstuk 1

- [`BOOMH1`](src/BOOMH1.bas) H-fractal
- [`BOOMH2`](src/BOOMH2.bas) H-fractal backtrack-methode
- [`BOOM2`](src/BOOM2.bas) tweetallige boom
- [`BOOM3`](src/BOOM3.bas) drietallige boom
- [`SIER`](src/SIER.bas) zeef van Sierpinski

## Hoofdstuk 2

- [`KAM`](src/KAM.bas) kam van Cantor

## Hoofdstuk 3

- [`KOCH`](src/KOCH.bas) koch-kromme
- [`MINK`](src/MINK.bas) worst van Minkowski
- [`KRONKEL`](src/KRONKEL.bas) eiland met kronkelkust
- [`LEVY`](src/LEVY.bas) kromme van Lévy
- [`DRAAK`](src/DRAAK.bas) draakkromme met willekeurige hoek
- [`DRAAKO`](src/DRAAKO.bas) draakkromme tussen twee punten
- [`DRAAK1`](src/DRAAK1.bas) draakkromme met afgeronde hoeken

## Hoofdstuk 4

- [`WIKKEL`](src/WIKKEL.bas) cirkelevolvente
- [`ARCHI`](src/ARCHI.bas) spiraal van Archimedes
- [`LOGSPIRA`](src/LOGSPIRA.bas) logaritmische spiraal
- [`BOLSPIRA`](src/BOLSPIRA.bas) bolspiraal
- [`WERVEL`](src/WERVEL.bas) draaiend en krimpend vierkant
- [`PYTHB1`](src/PYTHB1.bas) boom van Pythagoras, talstelselmethode
- [`PYTHB2`](src/PYTHB2.bas) scheve boom van Pythagoras
- [`PYTHB3`](src/PYTHB3.bas) boom van Pythagoras, backtrack-methode
- [`PYTHT`](src/PYTHT.bas) takkenboom van Pythagoras
- [`BOOMM`](src/BOOMM.bas) boom van Mandelbrot, backtrack-methode
- [`STER`](src/STER.bas) sterfractal

## Hoofdstuk 5

- [`STOFB`](src/STOFB.bas) stoffractal van twee rotaties, backtrack-methode
- [`STOFBT`](src/STOFBT.bas) stoffractal van drie rotaties, backtrack-methode

## Hoofdstuk 6

- [`MONDRIAAN`](src/MONDRIAAN.bas) patroon van toevallige horizontale en verticale streepjes
- [`STOF`](src/STOF.bas) stoffractal van twee rotaties of spiegelingen, Monte-Carlo-methode
- [`PYTHBS`](src/PYTHBS.bas) boom van Pythagoras met toevallige storingen, backtrack-methode
- [`BROWNL`](src/BROWNL.bas) brownse lijn
- [`COLLET`](src/COLLET.bas) bifurcatie-diagram van x -> ax(1-x)

## Hoofdstuk 7

- [`HENON`](src/HENON.bas) banen van Hénons kwadratisch systeem
- [`MIRA`](src/MIRA.bas) banen van Mira's dynamisch systeem
- [`JULIAB`](src/JULIAB.bas) julia-fractal van kwadratisch systeem, backtrack-methode
- [`MANDEL`](src/MANDEL.bas) mandelbrot-verzameling van kwadratisch systeem, pixelmethode

## Hoofdstuk 8

- [`WOLK`](src/WOLK.bas) banen van dynamisch systeem
- [`WOLK1`](src/WOLK1.bas) banen van dynamisch systeem
- [`WOLK2`](src/WOLK2.bas) banen van dynamisch systeem
- [`STOFA`](src/STOFA.bas) stoffractal, Monte-Carlo-methode
- [`KRONKELT`](src/KRONKELT.bas) kronkellijn met gegeven beginlijn en motief, talstelsel-methode
- [`KRONKELB`](src/KRONKELB.bas) kronkellijn met gegeven beginlijn en motief, backtrack-methode

[342]: https://nl.wikipedia.org/wiki/BASIC
[451]: https://dosbox-x.com/
[533]: https://winworldpc.com/product/quickbasic/45

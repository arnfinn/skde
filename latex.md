# Hvordan installere LaTeX på SKDE-maskiner

*Det anbefales sterkt å bruke [overleaf.com](https://www.overleaf.com) i steden for å installere sin egen LaTeX på maskinen*

Hvis det oppstår problemer med denne fremgangsmåten, gi gjerne beskjed til arnfinn.steindal@skde.no.

## Installere MikTeX

Dette er selve LaTeX.

1. Last ned fra [denne siden](http://miktex.org/download)
2. Installér programmet på ditt hjemmeområdet på `c:`
3. Gå inn på `Start/Alle programmer/MikTeX 2.9/Maintenance/Settings`
    1. Sjekk at General-fanen ser omtrent slik ut:  
![Alt text](figurer/miktex_general.png)  
    2. Gå inn på Roots-fanen og legg inn følgende mappe (så slipper man å laste ned pakker hele tiden; det vil nå ta litt tid å samle informasjon):   
![Alt text](figurer/miktex_roots.png)  
4. Gå inn på `START/Alle programmer/MikTeX 2.9/Maintenance/Package Manager`
    1. Gå så inn på `Repository/Change Package Repository` og trykk på `Connection Settings...`  
![Alt text](figurer/miktex_repository1.png)  
    2. Her legger man inn en proxy med adresse `www-proxy.helsenord.no` og port nummer `8080`:  
![Alt text](figurer/miktex_repository_proxy.png)
    3. Trykk `OK` og `Neste`, og skriv inn ditt brukernavn og passord i SKDE
    4. Velg en `remote package repository` nær deg, av typen 'http'

## Installere Texmaker 

Dette er programmet vi skal skrive LaTeX i.

1. Last ned fra [denne siden](http://www.xm1math.net/texmaker/download.html)
2. Installér programmet på ditt hjemmeområdet på c:  
3. Slik ser min TeXmaker ut (har satt den til å lage pdf med PDFLaTeX)  
![Alt text](figurer/texmaker.png)  

Man kan velge et annet skriveprogram hvis man vil, f.eks [TeXnicCenter](http://www.texniccenter.org).

## Bruke LaTeX

Introduksjon [her](latex_intro.md). Ellers er [google](http://www.google.no/search?q=introduction+to+latex) din venn.  


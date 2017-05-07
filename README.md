## Files

### get-image.sh
Dette scriptet henter ned bildene og legger de i respektive mapper hvert tiende minutt. Statens Vegvesen sier på sidene sine at bildene de legger ut ikke blir arkivert, men oppdatert omtrent hvert 5. minutt. 

Legg inn lokasjoner og kamera id i array for å ta disse med.

### make-video.sh
Dette scriptet bygger en video fra bildene med en framrate på 25 bilder i sekunder en gang i døgnet. Den oppdaterer også index.html filen som ligger et annet sted. 

Oppdater array med lokasjoner og kamera tilsvarende i get-image.sh scriptet.

### index.html
Oppdater med nye seksjoner dersom du legger til flere kameraer.

Jeg har brukt simple-grid.css, som ligger vedlagt her.

## Usage
Kjør run.sh scriptet i en '''screen'''

## Credit
Alle bildene er hentet fra <a href="http://www.vegvesen.no/Trafikkinformasjon/Reiseinformasjon/Trafikkmeldinger/Webkamera">Statens Vegvesen sine veikameraer</a>. 

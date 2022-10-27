GUI Library
Af Tobias Grünbaum Hoffmann


Indlæsning af bibliotek
--------------------------

For at bruge biblioteket skal det først indlæses og tilgives et vilkårligt navn

Eksempel:
GUI_Library /navn/ = new GUI_Library();


Anvendelse af bibliotek
--------------------------

Biblioteket indeholder muligheden for at lave while-knapper, toggle-knapper og tekstfelter


* Navn på objekter samt forventede værdier*
 - AlmKnap           | (int x, int y, int w, int h) 
 - ToggleKnap        | (int x, int y, int w, int h) 
 - TextField         | (int x, int y, int w, int h) 


Når man gerne vil lave et objekt skal dette først oprettes uden for void setup() - se eksempel

Derefter skal man bruge det i void setup() og indsætte de værdier man gerne vil have at objektet skal bruge - se eksempel

For at ekstrahere hvorvidt en knap et tændt eller slukket, ligger der en boolean knapOn som fortæller om knappen er tændt eller slukket.


Eksempel:
GUI_Library.AlmKnap /navn/;

void setup(){

  /navn/ = lib.new AlmKnap(x, y, w, h);

}


Visualisering af objekter
--------------------------

For at kunne se objekterne man har lavet skal man under void draw() indsætte objektet's navn og bruge tegn funktionen.

Eksempel:

/navn/.tegn;




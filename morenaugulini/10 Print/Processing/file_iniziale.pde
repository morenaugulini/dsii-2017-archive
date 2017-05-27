// 10Print morenaugulini
// 2017 © morenaugulini, Daniele @Fupete and the course DSII2017 @UniRSM  
// github.com/fupete — github.com/dsii-2017-unirsm
// Educational purposes, MIT License, 2017, San Marino


int w = 16;       // larghezza finestra
int h = 16;      // altezza finestra
int index = 0;  

 
void setup() {
  size(640, 384);           //dimensione finestra
  background(225);         //colore sfondo
  strokeWeight(3);        //spessore linea
  stroke(255);           //colore linea
  smooth();             //anti-alias
}

//ciclo di disegno, un frame 60fps
void draw() {
  int x1 = w*index;        //crea una variabile "x1" (frame=0) 
  int x2 = x1 + w;         //crea una variabile "x2" (frame=16)
  int y1 = h*23;           //crea una variabile "y1" (frame=368)
  int y2 = h*24;           //crea una variabile "y2" (frame=384)

  if (random(2) < 1) {       //generami un numero razionale tra 0 e 2
    line(x2, y1, x1, y2);   //se minore di 1 disegnami una linea
  } else {
    line(x1, y1, x2, y2);  //se maggiore di 1 disegnami uan linea
  }
  index++;                //incrementa di 1 la variabile index
  if (index == width/w) {  
    PImage p = get(0, h, width, h*23);   //cattura un'immagine
    background(225);                    //cancella lo sfondo e lo ricoloro
    set(0, 0, p);                      //rilascia l'immagine "p" alle cordinate 0-0
    index = 0;                       
  }
}

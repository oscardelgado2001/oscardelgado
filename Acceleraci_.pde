//membres: Óscar, Adrián i Matias programa: Óscar i Adrián
//a les variables vam posar el color i la posició inicial del rectangle i dues velocitats
color c = color(0);
float x = 10;
float y = 500;
float speed = 1;
float speed2= 1;
//configuració pantalla
void setup() {
  size(1377,788);
}
//color pantalla i variables en bucle
void draw() {
  background(255);
  move();
  display();
}
//moviment del rectangle, el moviment x es sempre el mateix, mentre que el de y accelera
void move() {
  x = x + speed;
  if (x > width-30) {
//rebot a la dreta
speed=-speed;
  }
if (x<0) {
//rebot a l'esquerra
speed=-speed;
  }
y = y + speed2; speed2 = speed2 + 0.1;
if (y > height-30){
//rebot abaix
speed2=-speed2;
}
if (y < 0) {
speed2=-speed2;
  }
}
//rectangle amb el seu color
void display() {
  fill(c);
  rect(x,y,30,10);
}
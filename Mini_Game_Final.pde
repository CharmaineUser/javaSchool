int squareX = 0;
int squareY = 0;
int squareSize = 70;
int Punten = 0;
int x = 1;
int y = 1;
void setup() {
  size(400, 400);
  newSquare();
}

void draw() {
  background(255);
  fill(0, 255, 0);
  laatScoreZien();
  randcheck();
  fill(0, 0, 0);
  rect(squareX, squareY, squareSize, squareSize);
  squareX = squareX +x;
  squareY = squareY +y;
}
void laatScoreZien() {
  fill(0, 20, 0);
  textSize (35);
  text(Punten, 100, 100);
}

void mouseClicked() {
  if (mouseX >= squareX && mouseX <= squareX + squareSize && mouseY >= squareY && mouseY <= squareY + squareSize) {
    newSquare();
    Punten = Punten + 1;
    x = floor(random(-1, 1));
    y = floor(random(-1, 1));   
  } else {
    Punten = 0;
    if ( Punten == 0){
     println ("Loser!");
     squareX = 170;
     squareY = 170;
     
    }
  }
}


void newSquare() {
  squareX = int(random(width - squareSize));
  squareY = int(random(height - squareSize));
}
void randcheck(){
  if (squareX == -70 || squareY == -70) {
    Punten = 0;
    squareX = 170;
     squareY = 170;
  }else if(squareX == 470|| squareY == 470) {
    Punten = 0;
    squareX = 170;
     squareY = 170;
}
}

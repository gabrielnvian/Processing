int i;
int n = 1;
Mover mover;

void setup() {
  size(800, 600);
  mover = new Mover();
  background(255);
  frameRate(1000);
}

void draw() {
  mover.update();
  mover.checkEdges();
  mover.display();
}

void mousePressed() {
  if (mouseButton == RIGHT) {
     background(255);
  } 
}

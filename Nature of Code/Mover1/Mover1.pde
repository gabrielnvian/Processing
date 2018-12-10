int i;
int n = 1;
Mover mover;

void setup() {
  size(800, 600);
  mover = new Mover();
  background(255);
}

void draw() {
  mover.update();
  mover.checkEdges();
  mover.display();
}

void keyPressed() {
  if (keyCode == UP) {
    mover.velocity.add(new PVector(0.01, 0.01));
  } else if (keyCode == DOWN) {
    mover.velocity.sub(new PVector(0.01, 0.01));
  }
}

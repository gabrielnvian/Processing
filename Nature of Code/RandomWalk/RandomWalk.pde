// https://github.com/shiffman/The-Nature-of-Code-Examples/tree/master/introduction/NOC_I_1_RandomWalkTraditional

Walker w;

void setup() {
  size(640, 360);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.display();
}

// https://github.com/shiffman/The-Nature-of-Code-Examples/tree/master/introduction/NOC_I_1_RandomWalkTraditional

Walker w;
//Walker[] walkers = new Walker[10];
int i;

void setup() {
  size(640, 360);
  //for (int i = 0; i < 10; i++) {
  //  walkers[i] = new Walker();
  //}
  w = new Walker();
  background(255);
}

void draw() {
  //for (i = 0; i < 10; i++) {
  //  walkers[i].step();
  //  walkers[i].display(); 
  //}
  w.step();
  w.display();
}

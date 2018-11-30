// https://github.com/shiffman/The-Nature-of-Code-Examples/tree/master/introduction/NOC_I_1_RandomWalkTraditional

int i;
int n = 300;
Walker[] walkers = new Walker[n];

void setup() {
  size(1080, 1024);
  for (int i = 0; i < n; i++) {
    walkers[i] = new Walker();
  }
  background(255);
}

void draw() {
  for (i = 0; i < n; i++) {
    walkers[i].step();
    if (floor(random(2)) == 0) {
      //walkers[i].display();
    } else {
      walkers[i].track();
    }
  }
}

void mouseDragged() {
  stroke(255);
  fill(255);
  ellipse(mouseX, mouseY, 30, 30);
}

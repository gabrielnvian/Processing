Mover[] movers = new Mover[100];

void setup() {
  frameRate(1000);
  size(1500, 1000);
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(0.5, 5), random(0, width), random(0, height));
  }
}

void draw() {
  background(255);
  
  for (int i = 0; i < movers.length; i++) {
    PVector wind = new PVector(0.01, 0);
    float m = movers[i].mass;
    PVector gravity = new PVector(0, 0.1*m);

    movers[i].applyForce(wind);
    movers[i].applyForce(gravity);
    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
  }
}

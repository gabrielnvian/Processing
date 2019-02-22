class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;

  Mover() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    //acceleration = new PVector(random(-0.01, 0.01), random(-0.01, 0.01));
  }
  
  void update() {
    PVector mouse = new PVector(mouseX, mouseY);
    PVector toMouse = PVector.sub(mouse, location);
    toMouse.normalize();
    toMouse.mult(0.4);
    
    velocity.add(toMouse);
    velocity.limit(6);
    location.add(velocity);
  }
  
  void display() {
    stroke(0);
    fill(50);
    ellipse(location.x, location.y, 16, 16);
  }
  
  void checkEdges() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }
    
    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
}

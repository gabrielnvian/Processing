class Walker {
  int x, y;
  int min, max;
  int prevx, prevy;
  int choice;
  boolean semidir = false;
  boolean drawline;

  Walker() {
    x = floor(random(0, width));
    y = floor(random(0, height));
    
    prevx = x;
    prevy = y;
    
    min = 10; // 1, 10
    max = 50; // 3, 50
  }
  
  void display() {
    stroke(floor(random(0, 255)));
    point(x, y);
  }
  
  void track() {
    drawline = true;
    
    if (x > width) {
      x = x - width;
      drawline = false;
    } else if (x < 0) {
      x = width + x;
      drawline = false;
    }
    
    if (y > height) {
      y = y - height;
      drawline = false;
    } else if (y < 0) {
      y = height + y;
      drawline = false;
    }
    
    if (floor(random(map(mouseY, 0, height, 1, 30))) == 0) { //if (floor(random(5)) == 0) {
      stroke(0);
    } else {
      stroke(255);
    }
    
    if (drawline) {
      line(prevx, prevy, x, y);
    }
    prevx = x;
    prevy = y;
  }
  
  void step() {
    if (semidir) {
      choice = int(random(8));
    } else {
      choice = int(random(4));
    }
    
    if (choice == 0) {        // Right
      x += floor(random(min, max));
    } else if (choice == 1) { // Left
      x -= floor(random(min, max));
    } else if (choice == 2) { // Up
      y += floor(random(min, max));
    } else if (choice == 3) { // Down
      y -= floor(random(min, max));
    } else if (choice == 4) { // Up Right
      x += floor(random(min, max));
      y += floor(random(min, max));
    } else if (choice == 5) { // Down Right
      x += floor(random(min, max));
      y -= floor(random(min, max));
    } else if (choice == 6) { // Up Left
      x -= floor(random(min, max));
      y += floor(random(min, max));
    } else if (choice == 7) { // Down Left
      x -= floor(random(min, max));
      y -= floor(random(min, max));
    }
    
    constrain(x, 0, width);
    constrain(y, 0, height);
  }
}

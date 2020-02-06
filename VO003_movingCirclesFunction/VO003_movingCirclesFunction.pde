void setup() {
  size(1200, 600);
//fullScreen();
}

void draw() {
  background(random(130), random(150), random(100));
  final color purple = color(255, 6, 170); 
  final color turquoise = color(0, 250, 200);
  
  interactiveCircle(80, purple, true, turquoise, true);
  interactiveCircle(60, turquoise, false, purple, false);
}

// draws an interactive circle:
// the circle follows the mouse, if last argument is true;
// runs away from it otherwise
void interactiveCircle(int diam, color fillColour, boolean drStrk, color strkColor, boolean follows) {
  int x;
  int y;

  if (follows) {
    x = int(map(mouseX, 0, width, diam/2, width-diam/2));
    y = int(map(mouseY, 0, height, diam/2, height-diam/2));
  }
  else {
    x = int(map(mouseX, 0, width, width-diam/2, diam/2));
    y = int(map(mouseY, 0, height, height-diam/2, diam/2));
  }

  // pushStyle() limits the changes of style (fill, stroke, etc.) from here to the call of popStyle()
  pushStyle();
  
  fill(fillColour);
  if (drStrk) {
    strokeWeight(3);
    stroke(strkColor);
  }
  else {
    noStroke();
  }
  
  circle(x, y, diam);
  
  popStyle();

}

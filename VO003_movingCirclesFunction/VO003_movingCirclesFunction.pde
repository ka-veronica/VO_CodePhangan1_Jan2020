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

  //circleFollowsMouse(80, purple, true, turquoise);
  //circleFollowsMouse(40, 255, false, 0);
  //circleRunsFromMouse(60, turquoise, false, purple);
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

void circleFollowsMouse(int diamF, color fillColour, boolean drStrk, color strkColor) {   
  // military secret! Other don't need to know the position of this circle!
  int xF;
  int yF;

  xF = int(map(mouseX, 0, width, diamF/2, width-diamF/2));
  yF = int(map(mouseY, 0, height, diamF/2, height-diamF/2));

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
  
  circle(xF, yF, diamF);
  
  popStyle();
 
//xF horizontal limits  
  //if (mouseX<=diamF/2) {
  //  xF=mouseX+diamF/2;
  //}
  //else if (mouseX>width-diamF/2) {
  //  xF=width-diamF/2;
  //}
  //else {
  //  xF=mouseX;
  //}

//Y Vertical limits
  //if (mouseY<=diamF/2) {
  //  yF=mouseY+diamF/2;
  //}
  //else if (mouseY>height-diamF/2) {
  //  yF=height-diamF/2;
  //}
  //else {
  //  yF=mouseY;
  //}     
}

void circleRunsFromMouse(int diamR, color fillColour, boolean drStrk, color strkColor) {  
  // military secret! Other don't need to know the position of this circle!
  int xR;
  int yR;
  
  // as for followers, but different diam and inverted values
  xR = int(map(mouseX, 0, width, width-diamR/2, diamR/2));
  yR = int(map(mouseY, 0, height, height-diamR/2, diamR/2));
  
  pushStyle();
  
  fill(fillColour);
  if (drStrk) {
    strokeWeight(3);
    stroke(strkColor);
  }
  else {
    noStroke();
  }
    
  circle(xR, yR, diamR);

  popStyle();

//xF horizontal limits  
    //if (mouseX<=diamR/2) {
    //  xR=width-diamR/2;
    //}
    //else if (mouseX>width-diamR/2) {
    //  xR=0+diamR/2;
    //}
    //else {
    //  xR=width - mouseX;
    //}

//Y Vertical limits
    //if (mouseY<=diamR/2) {
    //  yR=height-diamR/2;
    //}
    //else if (mouseY>height-diamR/2) {
    //  yR=0+diamR/2;
    //}
    //else {
    //  yR=height - mouseY;
    //}     
}  

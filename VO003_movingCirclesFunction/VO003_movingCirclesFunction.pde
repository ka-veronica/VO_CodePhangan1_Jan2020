int xF;
int yF;
int diamF;
int xR;
int yR;
int diamR;
void setup() {
  size(1200, 600);
//fullScreen();
}

void draw() {
  background(random(130), random(150), random(100));
  final color purple = color(255, 6, 170); 
  final color turquoise = color(0, 250, 200);
  
  circleFollowsMouse(80, purple, true, turquoise);
  //circleFollowsMouse(40, 255, false, 0);
  circleRunsFromMouse(60, turquoise, false, purple);
}
  
void circleFollowsMouse(int diamF, color fillColour, boolean drStrk, color strkColor) {   
    fill(fillColour);
    if (drStrk) {
      strokeWeight(3);
      stroke(strkColor);
    }
    else {
      noStroke();
    }
    
    circle(xF, yF, diamF);
 
//xF horizontal limits  
    if (mouseX<=diamF/2) {
      xF=mouseX+diamF/2;
    }
    else if (mouseX>width-diamF/2) {
      xF=width-diamF/2;
    }
    else {
      xF=mouseX;
    }

//Y Vertical limits
    if (mouseY<=diamF/2) {
      yF=mouseY+diamF/2;
    }
    else if (mouseY>height-diamF/2) {
      yF=height-diamF/2;
    }
    else {
      yF=mouseY;
    }     
}

void circleRunsFromMouse(int diamR, color fillColour, boolean drStrk, color strkColor) {  
  
  fill(fillColour);
    if (drStrk) {
      strokeWeight(3);
      stroke(strkColor);
    }
    else {
      noStroke();
    }
    
    circle(xR, yR, diamR);

//xF horizontal limits  
    if (mouseX<=diamR/2) {
      xR=width-diamR/2;
    }
    else if (mouseX>width-diamR/2) {
      xR=0+diamR/2;
    }
    else {
      xR=width - mouseX;
    }

//Y Vertical limits
    if (mouseY<=diamR/2) {
      yR=height-diamR/2;
    }
    else if (mouseY>height-diamR/2) {
      yR=0+diamR/2;
    }
    else {
      yR=height - mouseY;
    }     
}  

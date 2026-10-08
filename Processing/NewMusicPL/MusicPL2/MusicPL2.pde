
// Global Display Variables
int appWidth, appHeight;

void setup() {
  println(displayWidth, displayHeight);
  //size(600, 400); //width, height
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  divs();
  //
  //Simple FOR Drawing all DIV Rectangles
  for ( int j=0; j<divs.length; j+=4 ) {
    rectDIV(divs[j], divs[j+1], divs[j+2], divs[j+3]);
  }
  //
  //Simple FOR Drawing Music Button Symbols (Buttons 2, 3, and 4)
  for ( int i=2; i<=4; i++ ) {
    int buttonIndex = 44 + (i * 4); // Button 2 -> 52, Button 3 -> 56, Button 4 -> 60
    musicSymbol( i, divs[buttonIndex], divs[buttonIndex+1], divs[buttonIndex+2], divs[buttonIndex+3] );
  }
  //
}//End Setup
//

void draw() {
  //
}//End Draw
//

void mousePressed() {
}//End MousePressed
//

void keyPressed() {
}//End keyPressed
//
//End MAIN Program

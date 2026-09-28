//Global Variables
int numberOfDIVs = 1; //18 in total
int numberOfParameters = 4; // [X, Y, Width, Height]
float[] divs = new float[numberOfDIVs * numberOfParameters];
//
void divs() {
  for ( int i=0; i<4; i++) {
    if ( i%4==0 ) {
      divs[i] = appWidth*6.3/16.0; //X
    }
    if ( i%4==1 ) {
      divs[i] = appHeight*2/12.0; //Y
    }
    if ( i%4==2 ) {
      divs[i] = appWidth*6/16.0; //Width
    }
    if ( i%4==3 ) {
      divs[i] = appHeight*6/12.0; //Height
    }
    //
  }
  printArray(divs);
  //
  float referent = divs[2] / 25;

  // Draw all rectangles using step-by-4 loop
  for ( int j=0; j<divs.length; j+=4 ) {
    rectDIV(divs[j], divs[j+1], divs[j+2], divs[j+3]);
  } // End DIVs FOR
  //
}// End DIVs
void rectDIV(float x, float y, float w, float h) {
  // DIVs: dividing out the CANVAS in non-overlapping sections
  rect(x, y, w, h);
}// End Rectangle Code
//
// End Subprogram DIVs

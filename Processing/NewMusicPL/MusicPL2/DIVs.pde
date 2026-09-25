//Global Variables
int numberOfDIVs = 1; //18 in total
int numberOfParameters = 4; // [X, Y, Width, Height]
float[] divs = new float[numberOfDIVs * numberOfParameters];
//
void divs() {
  for ( int i=0; i<4; i++) {
    if ( i%4==0 ) {
      divs[i] = appWidth*6.3/16.0;
    }
    if ( i%4==1 ) {
      divs[i] = appHeight*2/12.0;
    }
    if ( i%4==2 ) {
      divs[i] = appWidth*6/16.0;
    }
    if ( i%4==3 ) {
      divs[i] = appHeight*3/12.0;
    }
    //
  }
  printArray(divs);
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


//before
/*
//Global Variables
int numberOfDIVs = 18; //# of Recs
int numberOfParameters = 4;
float[] divs= new float[numberOfDIVs*numberOfParameters];
//
void divs() {
  float paperWidth = 16;
  float paperHeight = 12;
  divs[0] = appWidth * 0.5 / paperWidth;
  divs[1] = appHeight * 10.0 / paperHeight;
  divs[2] = appWidth * 3.0 / paperWidth;
  divs[3] = appHeight * 1.5 / paperHeight;
  //
  for ( int i=0; i<divs.length; i+=4 ) {
    rectDIV(divs[i], divs[i+1], divs[i+2], divs[i+3]);
  } //End FOR
  //
}//End DIVs
//
void rectDIV(float x, float y, float w, float h) {
  //DIVs: dividing out the CANVAS in non-overlapping sections
  rect(x, y, w, h);
}//End Rectangle Code
//
//
*/

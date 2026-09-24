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

//Global Variables
int numberOfDivs = 1;
int numberOfParameters = 4;
float[] divs = new float[numberOfDIVs*numberOfParameters];
//
void divs() {
  float paperWidth = 279;
  float paperHeight = 216;
  divs[0] = appWidth * 70 / paperWidth;
  divs[1] = appHeight * 54 / paperHeight;
  divs[2] = appWidth * 134 / paperWidth;
  divs[3] = appHeight * 102 / paperHeight;
  //
  for ( int i=0; i<divs.length; i+=4 ) {
    rectDIV(divs[i], divs[i+1], divs[i+2], divs[i+3]);
  } //End FOR
  //
}//End DIVs

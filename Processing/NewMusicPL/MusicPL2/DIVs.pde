//Global Variables
int numberOfDIVs = 17; //17 in total
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
      divs[i] = appWidth*6/16.0; //Height
    }
    //
  }
  printArray(divs);
  //
  float referent = divs[2] / 100.0;
  float column1 = divs[0] + referent * 2; // 3 picture, number, song bar
  float column2 = divs[0] + referent * 15; // 3 picture, number, song bar
  float column3 = divs[0] + referent * 18; // 3 picture, number, song bar
  float column4 = divs[0] + referent * 22; // 3 picture, number, song bar
  float column5 = divs[0] + referent * 31; // 3 picture, number, song bar
  float column6 = divs[0] + referent * 44; // 3 picture, number, song bar
  float column7 = divs[0] + referent * 57; // 3 picture, number, song bar
  float column8 = divs[0] + referent * 70; // botton
  float column9 = divs[0] + referent * 81; // numer

  float row1 = divs[1] + referent * 2;
  float row2 = divs[1] + referent * 14;
  float row3 = divs[1] + referent * 26;
  float row4 = divs[1] + referent * 54;
  float row5 = divs[1] + referent * 67;
  float row6 = divs[1] + referent * 76;
  float row7 = divs[1] + referent * 83;
  float row8 = divs[1] + referent * 88;
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

//Global Variables
int numberOfDIVs = 15; // 15 rect() boxes total
int numberOfParameters = 4; // [X, Y, Width, Height]
float divs[] = new float[numberOfDIVs*numberOfParameters];

void divs() {
  //
  // Primitive Style Reading - Main App Container (DIV 0)
  for ( int i=0; i<4; i++) {
    if ( i%4==0 ) {
      divs[i] = appWidth*6.3/16.0; // X
    }
    if ( i%4==1 ) {
      divs[i] = appHeight*2/12.0; // Y
    }
    if ( i%4==2 ) {
      divs[i] = appWidth*6/16.0; // Width
    }
    if ( i%4==3 ) {
      divs[i] = appHeight*6/12.0; // Height
    }
    //
  }
  printArray(divs);
  //
  // Develop a Grid based on the smallest DIV or measure
  float referent = divs[2] / 100.0;

  // Columns across the layout
  float leftColX = divs[0] - referent*22.0;
  float column1  = divs[0] + referent*5.0;
  float column2  = divs[0] + referent*10.0;
  float column3  = divs[0] + referent*17.5;
  float column4  = column3 + referent*17.0;
  float column5  = column4 + referent*17.0;
  float column6  = column5 + referent*17.0;
  float column7  = column6 + referent*17.0;
  float column8  = divs[0] + divs[2] - referent*20.0;

  // Rows down the layout
  float leftRow1 = divs[1];
  float leftRow2 = divs[1] + referent*22.0;
  float leftRow3 = divs[1] + referent*44.0;

  float row1 = divs[1] + referent*5.0;   // Main display top
  float row2 = divs[1] + referent*74.0;  // Song Title
  float row3 = row2 + referent*12.0;     // Artist Name
  float row4 = row3 + referent*10.0;     // Time / Progress row
  float row5 = row4 + referent*10.0;     // Progress Bar
  float row6 = row5 + referent*8.0;      // Bottom 5 Nav Buttons

  // Element Dimensions
  float leftSqDim   = referent*18.0;
  float mainDisplayW = referent*90.0;
  float mainDisplayH = referent*65.0;
  float titleWidth   = referent*80.0;
  float titleHeight  = referent*8.0;
  float artistWidth  = referent*60.0;
  float artistHeight = referent*6.0;
  float sideBoxWidth = referent*15.0;
  float sideBoxHeight= referent*6.0;
  float progressWidth= referent*90.0;
  float progressHeight= referent*3.0;
  float buttonSize   = referent*14.0;

  //
  // Left Column Squares: 4-15
  int i = 4;
  divs[i] = leftColX;
  i++;
  divs[i] = leftRow1;
  i++;
  divs[i] = leftSqDim;
  i++;
  divs[i] = leftSqDim;

  i++;
  divs[i] = leftColX;
  i++;
  divs[i] = leftRow2;
  i++;
  divs[i] = leftSqDim;
  i++;
  divs[i] = leftSqDim;

  i++;
  divs[i] = leftColX;
  i++;
  divs[i] = leftRow3;
  i++;
  divs[i] = leftSqDim;
  i++;
  divs[i] = leftSqDim;

  // Main Display / Album Box: 16-19
  i++;
  divs[i] = column1;
  i++;
  divs[i] = row1;
  i++;
  divs[i] = mainDisplayW;
  i++;
  divs[i] = mainDisplayH;

  // Song Title Box: 20-23
  i++;
  divs[i] = column2;
  i++;
  divs[i] = row2;
  i++;
  divs[i] = titleWidth;
  i++;
  divs[i] = titleHeight;

  // Artist Name Box: 24-27
  i++;
  divs[i] = column3;
  i++;
  divs[i] = row3;
  i++;
  divs[i] = artistWidth;
  i++;
  divs[i] = artistHeight;

  // Time / Status Indicators: 28-35
  i++;
  divs[i] = column1;
  i++;
  divs[i] = row4;
  i++;
  divs[i] = sideBoxWidth;
  i++;
  divs[i] = sideBoxHeight;

  i++;
  divs[i] = column8;
  i++;
  divs[i] = row4;
  i++;
  divs[i] = sideBoxWidth;
  i++;
  divs[i] = sideBoxHeight;

  // Progress Bar: 36-39
  i++;
  divs[i] = column1;
  i++;
  divs[i] = row5;
  i++;
  divs[i] = progressWidth;
  i++;
  divs[i] = progressHeight;

  // Bottom 5 Control Buttons: 40-59
  i++;
  divs[i] = column3;
  i++;
  divs[i] = row6;
  i++;
  divs[i] = buttonSize;
  i++;
  divs[i] = buttonSize;

  i++;
  divs[i] = column4;
  i++;
  divs[i] = row6;
  i++;
  divs[i] = buttonSize;
  i++;
  divs[i] = buttonSize;

  i++;
  divs[i] = column5;
  i++;
  divs[i] = row6;
  i++;
  divs[i] = buttonSize;
  i++;
  divs[i] = buttonSize;

  i++;
  divs[i] = column6;
  i++;
  divs[i] = row6;
  i++;
  divs[i] = buttonSize;
  i++;
  divs[i] = buttonSize;

  i++;
  divs[i] = column7;
  i++;
  divs[i] = row6;
  i++;
  divs[i] = buttonSize;
  i++;
  divs[i] = buttonSize;

  // Draw all rectangles using step-by-4 loop
  for ( int j=0; j<divs.length; j+=4 ) {
    rectDIV(divs[j], divs[j+1], divs[j+2], divs[j+3]);
  }//End DIVs FOR
}//End DIVs
//
void rectDIV(float x, float y, float w, float h) {
  //DIVs: dividing out the CANVAS in non-overlapping sections
  rect(x, y, w, h);
}//End Rectangle Code
//
//End DIVs



/* BEFORE CODE TO CHECKAOKSFOIAHGOUEOGOA
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
      divs[i] = appHeight*6/12.0; //Height
    }
    //
  }
  printArray(divs);
  //
  float referent = divs[2] / 100;

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
*/

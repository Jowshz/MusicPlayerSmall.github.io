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
  float column2 = divs[0] + referent * 15; // Big picture
  float column3 = divs[0] + referent * 18; // Song Name and button 1
  float column4 = divs[0] + referent * 21; // artist
  float column5 = divs[0] + referent * 31; // Button 2
  float column6 = divs[0] + referent * 44; // Button 3
  float column7 = divs[0] + referent * 57; // Button 4
  float column8 = divs[0] + referent * 70; // Button 5
  float column9 = divs[0] + referent * 82; // numer

  float row1 = divs[1] + referent * 2; // Cover top right big pic
  float row2 = divs[1] + referent * 14; // Cover 2
  float row3 = divs[1] + referent * 26; // Cover 3
  float row4 = divs[1] + referent * 53; // Song Name
  float row5 = divs[1] + referent * 66; // Artist
  float row6 = divs[1] + referent * 76; // Number
  float row7 = divs[1] + referent * 83; // song bar
  float row8 = divs[1] + referent * 88; // buttons
  
  float CovBut = referent * 11;
  float BigpicW = referent * 70;
  float BigpicH = referent * 49;
  float SongNameW = referent * 64;
  float SongNameH = referent * 11;
  float ArtistW = referent * 58;
  float ArtistH = referent * 8;
  float SongTimeW12 = referent * 16;
  float SongTimeH12 = referent * 6;
  float SongBarW = referent * 96;
  float SongBarH = referent * 3;
  //
  //Error Check
  //
  //Buttons
  //Cover1-3
  int i = 4;
  divs[i] = column1;
  i++;
  divs[i] = row1;
  i++;
  divs[i] = CovBut;
  i++;
  divs[i] = CovBut;
  
  i++; // 2
  divs[i] = column1;
  i++;
  divs[i] = row2;
  i++;
  divs[i] = CovBut;
  i++;
  divs[i] = CovBut;
  
  i++; // 3
  divs[i] = column1;
  i++;
  divs[i] = row3;
  i++;
  divs[i] = CovBut;
  i++;
  divs[i] = CovBut;
  
  //BigPic
  i++; 
  divs[i] = column2;
  i++;
  divs[i] = row1;
  i++;
  divs[i] = BigpicW;
  i++;
  divs[i] = BigpicH;
  
  //Song Title
  i++; 
  divs[i] = column3;
  i++;
  divs[i] = row4;
  i++;
  divs[i] = SongNameW; 
  i++;
  divs[i] = SongNameH;
  
  //Artist
  i++; 
  divs[i] = column4;
  i++;
  divs[i] = row5;
  i++;
  divs[i] = ArtistW;
  i++;
  divs[i] = ArtistH;
  
  //SongNumber1-2
  i++; 
  divs[i] = column1;
  i++;
  divs[i] = row6;
  i++;
  divs[i] = SongTimeW12;
  i++;
  divs[i] = SongTimeH12;
  
  i++; // 2
  divs[i] = column9;
  i++;
  divs[i] = row6;
  i++;
  divs[i] = SongTimeW12;
  i++;
  divs[i] = SongTimeH12;
  
  //SongBar
  i++; 
  divs[i] = column1;
  i++;
  divs[i] = row7;
  i++;
  divs[i] = SongBarW;
  i++;
  divs[i] = SongBarH;
  
  //Buttons1-5
  i++; 
  divs[i] = column3;
  i++;
  divs[i] = row8;
  i++;
  divs[i] = CovBut;
  i++;
  divs[i] = CovBut;
  
  i++; // 2
  divs[i] = column5;
  i++;
  divs[i] = row8;
  i++;
  divs[i] = CovBut;
  i++;
  divs[i] = CovBut;

  i++; // 3
  divs[i] = column6;
  i++;
  divs[i] = row8;
  i++;
  divs[i] = CovBut;
  i++;
  divs[i] = CovBut;
  
  i++; // 4
  divs[i] = column7;
  i++;
  divs[i] = row8;
  i++;
  divs[i] = CovBut;
  i++;
  divs[i] = CovBut;

  i++; // 5
  divs[i] = column8;
  i++;
  divs[i] = row8;
  i++;
  divs[i] = CovBut;
  i++;
  divs[i] = CovBut;

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

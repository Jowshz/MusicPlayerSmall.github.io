/* Music Buttons
*/
//
void musicSymbols() {
  // Button 2: Last Song (divs index 52-55)
  // Button 3: Play Button (divs index 56-59)
  // Button 4: Next Song (divs index 60-63)
  musicSymbol( 2, divs[52], divs[53], divs[54], divs[55] );
  musicSymbol( 3, divs[56], divs[57], divs[58], divs[59] );
  musicSymbol( 4, divs[60], divs[61], divs[62], divs[63] );
}//End Music Symbols
//
void musicSymbol( int buttonNum, float divX, float divY, float divW, float divH ) {
  if ( buttonNum == 2 ) drawLastSong( divX, divY, divW, divH );
  if ( buttonNum == 3 ) drawPlay( divX, divY, divW, divH );
  if ( buttonNum == 4 ) drawNextSong( divX, divY, divW, divH );
}//End Music Symbol
//
void drawPlay( float divX, float divY, float divW, float divH ) {
  // Play Button Points: (1/4, 1/4), (3/4, 2/4), (1/4, 3/4)
  triangle( divX + divW*1/4, divY + divH*1/4, divX + divW*3/4, divY + divH*2/4, divX + divW*1/4, divY + divH*3/4 );
}//End Draw Play
//
void drawLastSong( float divX, float divY, float divW, float divH ) {
  // Rectangle Bar: (1/4, 1/4) to (3/8, 3/4) -> Width 1/8, Height 2/4
  drawRectangle( divX + divW*1/4, divY + divH*1/4, divW*1/8, divH*2/4 );
  // Triangle Points: (3/8, 1/2), (3/4, 1/4), (3/4, 3/4)
  triangle( divX + divW*3/8, divY + divH*1/2, divX + divW*3/4, divY + divH*1/4, divX + divW*3/4, divY + divH*3/4 );
}//End Draw Last Song
//
void drawNextSong( float divX, float divY, float divW, float divH ) {
  // Triangle Points: (1/4, 1/4), (5/8, 2/4), (1/4, 3/4)
  triangle( divX + divW*1/4, divY + divH*1/4, divX + divW*5/8, divY + divH*2/4, divX + divW*1/4, divY + divH*3/4 );
  // Rectangle Bar: (5/8, 1/4) to (3/4, 3/4) -> Width 1/8, Height 2/4
  drawRectangle( divX + divW*5/8, divY + divH*1/4, divW*1/8, divH*2/4 );
}//End Draw Next Song
//
void drawRectangle( float x, float y, float w, float h ) {
  rect( x, y, w, h );
}//End Draw Rectangle
//
//End Subprogram Music Buttons

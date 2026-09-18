/* Drawing Shapes & Buttons
 */

void buttonDraw() {
  // Render OpenMSC DIV Box
  fill(255);
  stroke(resetInk);
  rect(openmscX, openmscY, openmscWidth, openmscHeight);
  
  // Render Mplay Box only when showMplay is true
  if (showMplay) {
    rect(MplayX, MplayY, MplayWidth, MplayHeight);
  }
}

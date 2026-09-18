/* Layout & Coordinate Calculations
 */

void population() {
  // Color Palette Assignment
  resetBackground = #C694F0; // Purple background
  resetInk = color(0); // Black stroke

  // X-axis uses 16 units across top/bottom
  openmscWidth = appWidth * 3.0 / 16.0;   
  openmscX = appWidth * 0.5 / 16.0; 
  
  MplayWidth = appWidth * 6/16.0; 
  MplayX = appWidth * 6.3/16.0; 
  
  // Y-axis uses 12 units along the sides
  openmscHeight = appHeight * 1.5 / 12.0;  
  openmscY = appHeight * 10.0 / 12.0;// Positioned near bottom edge (10/12 down)
  
  MplayHeight = appHeight * 3.0/12.0; 
  MplayY = appHeight * 2/12.0;
} 

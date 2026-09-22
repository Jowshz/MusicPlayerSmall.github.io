// Global Display Variables
int appWidth, appHeight;

// Box Variables
float openmscX, openmscY, openmscWidth, openmscHeight;
float MplayX, MplayY, MplayWidth, MplayHeight;

// Toggle State
boolean showMplay = false;

// Color Variables
color resetBackground, resetInk;

void setup() {
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  
  println("Display Size:", appWidth, appHeight);
  
  // Initialize modular setup subprograms
  population();
  textSetup();
}

void draw() {
  background(resetBackground);
  
  // Render layout and elements continuously
  buttonDraw();
  textDraw();
}

void mousePressed() {
  // Toggle Mplay box visibility when clicking openmsc box
  if (mouseX >= openmscX && mouseX <= openmscX + openmscWidth && //mouseX >= 3, mouseX <= 3 + Hidth
      mouseY >= openmscY && mouseY <= openmscY + openmscHeight) { //mouseY >=10, mouseY <= 10 + Height
    showMplay = !showMplay;
  }
}

PApplet p;

GUIHandler guiHandler = new GUIHandler();

void setup() {
  p = this;
  p.size(500, 500);
  guiHandler.createButton(100, 10, 100, 50);
  guiHandler.createTextField(100, 100, 100, 50);
}

void draw() {
  p.background(0);
  guiHandler.displayAll();
}

void mousePressed() {
  guiHandler.detectClick();
}

void mouseReleased() {
  guiHandler.detectRelease();
}

void keyPressed() {
  guiHandler.detectKeyPressed();
}

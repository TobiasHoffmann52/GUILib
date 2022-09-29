class Button extends Komponent {
  int      knapX, knapY, knapB, knapH;
  boolean  knapOn = false;

  Button(int  x, int y, int b, int h) {
    knapX = x;
    knapY = y;
    knapB = b;
    knapH = h;
  }

  void detectClick() {
    if (mouseX>knapX && mouseX<(knapX+knapB) && mouseY>knapY && mouseY<(knapY+knapH)) {
      knapOn = !knapOn;
    }
  }
}

class AlmKnap extends Button {
  //int  knapX, knapY, knapB, knapH;
  AlmKnap(int x, int y, int b, int h) {
    super(x, y, b, h);
  }

  void tegn(int knapX, int knapY, int knapB, int knapH) {

    if (mousePressed && mouseX>knapX && mouseX<(knapX+knapB) && mouseY>knapY && mouseY<(knapY+knapH)) {
      fill(0, 255, 0);
      rect(knapX, knapY, knapB, knapH);

      fill(255);
      text("+ 1$", knapX+20, knapY+20);
    } else {   
      fill(255, 0, 0);
      rect(knapX, knapY, knapB, knapH);

      fill(255);
      text("+ 1$", knapX+20, knapY+20);
    }
  }
}

class ToggleKnap extends Button {
  //int  knapX, knapY, knapB, knapH;

  ToggleKnap(int x, int y, int b, int h) {
    super(x, y, b, h);
  }

  void detectClick() {
    if ( mouseX>knapX && mouseX<(knapX+knapB) && mouseY>knapY && mouseY<(knapY+knapH)) {

      knapOn = !knapOn;
    }
  }

  void tegn(int knapX, int knapY, int knapB, int knapH) {
    if (knapOn==false) {
      fill(0, 255, 0);
      rect(knapX, knapY, knapB, knapH);

      fill(255);
      text("Confirm", knapX+20, knapY+20);
    } else if (knapOn==true) {
      fill(255, 0, 0);
      rect(knapX, knapY, knapB, knapH);

      fill(255);
      text("Confirm", knapX+20, knapY+20);
    }
  }
}

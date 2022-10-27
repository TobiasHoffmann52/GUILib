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
    if (p.mouseX>knapX && p.mouseX<(knapX+knapB) && p.mouseY>knapY && p.mouseY<(knapY+knapH)) {
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

    if (p.mousePressed && p.mouseX>knapX && p.mouseX<(knapX+knapB) && p.mouseY>knapY && p.mouseY<(knapY+knapH)) {
      p.fill(0, 255, 0);
      p.rect(knapX, knapY, knapB, knapH);
    } else {   
      p.fill(255, 0, 0);
      p.rect(knapX, knapY, knapB, knapH);
    }
  }
}

class ToggleKnap extends Button {
  //int  knapX, knapY, knapB, knapH;

  ToggleKnap(int x, int y, int b, int h) {
    super(x, y, b, h);
  }

  void detectClick() {
    if ( p.mouseX>knapX && p.mouseX<(knapX+knapB) && p.mouseY>knapY && p.mouseY<(knapY+knapH)) {

      knapOn = !knapOn;
    }
  }

  void tegn(int knapX, int knapY, int knapB, int knapH) {
    if (knapOn==false) {
      p.fill(0, 255, 0);
      p.rect(knapX, knapY, knapB, knapH);
    } else if (knapOn==true) {
      p.fill(255, 0, 0);
      p.rect(knapX, knapY, knapB, knapH);
    }
  }
}

class TextField extends Button {
  int      tekstX, tekstY, tekstW, tekstH;
  String content = "";

  TextField(int x, int y, int b, int h) {
    super(x, y, b, h);
  }

  void tegn(int x, int y, int b, int h) {
    p.fill(255);
    p.rect(x, y, b, h);
    p.fill(0);
    p.text(content, x, y);
  }
  void keyPressed() {
    if (p.keyCode != 8) {
      content += p.key;
    } else {
      content = content.substring(0, content.length()-1);
    }
  }
}

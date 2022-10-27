import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class GUI_Library extends PApplet {

PApplet p;

GUIHandler guiHandler = new GUIHandler();

public void setup() {
  p = this;
  p.size(500, 500);
  guiHandler.createButton(100, 10, 100, 50);
  guiHandler.createTextField(100, 100, 100, 50);
}

public void draw() {
  p.background(0);
  guiHandler.displayAll();
}

public void mousePressed() {
  guiHandler.detectClick();
}

public void mouseReleased() {
  guiHandler.detectRelease();
}

public void keyPressed() {
  guiHandler.detectKeyPressed();
}
class GUIHandler {
  ArrayList<Komponent> mineKomponenter = new ArrayList<Komponent>();

  public Button createButton(int x, int y, int w, int h) {
    Button b = new Button(x, y, w, h);
    mineKomponenter.add(b);
    return b;
  }

  public TextField createTextField(int x, int y, int w, int h) {
    TextField t = new TextField(x, y, w, h);
    mineKomponenter.add(t);
    return t;
  }

  public void displayAll() {
    for (Komponent k : mineKomponenter) {
      k.tegn();
    }
  }

  public void detectClick() {
    for (Komponent k : mineKomponenter) {
      k.detectClick();
    }
  }

  public void detectRelease() {
    for (Komponent k : mineKomponenter) {
      k.detectRelease();
    }
  }

  public void detectKeyPressed() {
    for (Komponent k : mineKomponenter) {
      k.detectRelease();
    }
  }
}
class Button extends Komponent {
  int      knapX, knapY, knapB, knapH;
  boolean  knapOn = false;

  Button(int  x, int y, int b, int h) {
    knapX = x;
    knapY = y;
    knapB = b;
    knapH = h;
  }

  public void detectClick() {
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

  public void tegn(int knapX, int knapY, int knapB, int knapH) {

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

  public void detectClick() {
    if ( p.mouseX>knapX && p.mouseX<(knapX+knapB) && p.mouseY>knapY && p.mouseY<(knapY+knapH)) {

      knapOn = !knapOn;
    }
  }

  public void tegn(int knapX, int knapY, int knapB, int knapH) {
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

  public void tegn(int x, int y, int b, int h) {
    p.fill(255);
    p.rect(x, y, b, h);
    p.fill(0);
    p.text(content, x, y);
  }
  public void keyPressed() {
    if (p.keyCode != 8) {
      content += p.key;
    } else {
      content = content.substring(0, content.length()-1);
    }
  }
}
class Komponent {

  public void tegn() {
  }

  public void detectClick() {
  }

  public void detectRelease() {
  }

  public void detectKeyPressed() {
  }
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "GUI_Library" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

class GUIHandler {
  ArrayList<Komponent> mineKomponenter = new ArrayList<Komponent>();

  Button createButton(int x, int y, int w, int h) {
    Button b = new Button(x, y, w, h);
    mineKomponenter.add(b);
    return b;
  }

  TextField createTextField(int x, int y, int w, int h) {
    TextField t = new TextField(x, y, w, h);
    mineKomponenter.add(t);
    return t;
  }

  void displayAll() {
    for (Komponent k : mineKomponenter) {
      k.tegn ();
    }
  }

  void detectClick() {
    for (Komponent k : mineKomponenter) {
      k.detectClick();
    }
  }

  void detectRelease() {
    for (Komponent k : mineKomponenter) {
      k.detectRelease();
    }
  }

  void detectKeyPressed() {
    for (Komponent k : mineKomponenter) {
      k.detectRelease();
    }
  }
}

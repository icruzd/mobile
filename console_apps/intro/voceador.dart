class Voceador <T> {
  int veces;
  T queVocear;
  Voceador(this.veces, this.queVocear);
    void shout() {
      for (int i = 0; i < veces; i++) {
        print(queVocear);
      }
    }
  }
  void main() {
    Voceador<int> myVoceador1 = new Voceador(23, 34);
    myVoceador1.shout();
    Voceador<String> myVoceador2 = new Voceador(12, "hello");
    myVoceador2.shout();
  }
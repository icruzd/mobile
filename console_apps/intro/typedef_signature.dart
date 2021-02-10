typedef String uniter(String s1, String s2);
String concatenater(String s1, String s2) =>
    s1 + s2; // same signature as uniter
String spacer(String s1, String s2) => s1 + " " + s2; // same signature
String blank(String s1, String s2) =>
    ""; //valido aun si no toma en cuenta los parámetros

String shouter(String s1, String s2) {
  // same signature
  String shout1 = s1.toUpperCase() + "!";
  String shout2 = s2.toUpperCase() + "!";
  return shout1 + " " + shout2;
}

void repeatPrint(String s1, String s2, int numberOfRepeats, uniter myUniter) {
  for (int i = 0; i < numberOfRepeats; i++) {
    print(myUniter(s1, s2));
  }
}

void main() {
  uniter u1, u2, u3;
  u1 = concatenater; // legal because concatenater is a uniter
  u2 = spacer; // spacer is a uniter
  u3 = blank; //también es uniter
  print(u1("Hello", "Goodbye"));
  print(u2("Hello", "Goodbye"));
  print(u3("Hello", "Goodbye"));
  repeatPrint("Hi", "Bye", 3, shouter); // shouter is a uniter
}

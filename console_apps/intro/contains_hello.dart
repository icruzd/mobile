//Descripcion:  2. Write a method that returns true if an array of strings contains the string “Hello”; false otherwise.

//main() =>  trueValuesPercent([true, false, true, true, true]);
main() {
  if (containsHello(["none", "three", "Hello1"])) {
    print("La lista contiene hello");
  } else {
    print("La lista no contiene Hello");
  }
}

bool containsHello(List values) {
  for (String i in values) {
    if (i == "Hello") {
      return true;
    }
    print(i);
  }
  return false;
}

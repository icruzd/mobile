class EdadInsuficienteException implements Exception {
  String message;  // información para referencia al programador
  EdadInsuficienteException(this.message);
  
  String toString() {
    return message;
  }
}

class TrumpException implements Exception {  // Creamos una excepción personalizada!
  String toString() {
    return "TrumpException: El acceso a Trump no está permitido!";
  }
}

class Person {
  String name;
  int age;
  Person(this.name, this.age);
}

class FaceAccess {
  List<Person> currentPatrons = new List();
  
  void checkId(Person p) {
    if (p.name == "Trump") {     //si Trump intenta acceder, se lanzará la excepción especialmente creada para el TrumpException 
      throw new TrumpException();
    } else if (p.age < 21) {
      throw new EdadInsuficienteException("EdadInsuficienteException: ${p.name} no cumple el requisito de edad.");
    } else {
      currentPatrons.add(p);
    }
  }
}

void main() {
  FaceAccess faceAccess = new FaceAccess();
  try {
    faceAccess.checkId(new Person("Trump", 25));
    faceAccess.checkId(new Person("Jimmy", 22));
    faceAccess.checkId(new Person("Sandra", 17));
  } catch (e) {
    print(e);
  }
  print(faceAccess.currentPatrons);
}

class Poblacion {
   String nombre;
   int pop;
   int x;

   Poblacion(this.nombre, this.pop);
   operator &(Poblacion other) => new Poblacion(nombre + " & " + other.nombre, pop + other.pop);
   operator +(int newPeople) => pop += newPeople;
   String toString() {
   return "$nombre tiene una poblacion de $pop";
   }
}

void main() {
   Poblacion montemorelos = new Poblacion("montemorelos", 2343);
   Poblacion linares = new Poblacion("linares", 4000);
   Poblacion both = montemorelos & linares;
   print(both); // Prints: montemorelos & linares tienen una población de 6343
   linares + 1000;
   print(linares); // Prints: linares has a poblacion of 5000
}
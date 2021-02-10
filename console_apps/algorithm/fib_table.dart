import 'dart:io';

void main(List<String> arguments) {
  int n;

  print("Tabla de Números de Fibonacci. Introduzca el Numero máximo:");

  String max = stdin.readLineSync();

  try {
    n = int.parse(max);
  } catch (e) {
    //uh oh, could not be turned into integer
    print('That was not an integer.' + e.toString());
    return;
  }

  print('Numero  \t \t Suma Fibonacci  \t\t\ttime');
  for (int i = 0; i <= n; i = i + 5) {
    final stopwatch = Stopwatch()..start();
    print("$i \t\t\t\t" + fib(i).toString() + '\t\t\t\t${stopwatch.elapsed}');
  }
}

/// Find the nth term in the Fibonacci sequence
/// fib(0) = 0  fib(1) = 1   fib(2)=1  fib(3)= 2  fib(4)=3  fib(5)=5 fib(6)=8

int fib_iterativo(int n) {
  if (n < 2) {
    //base case
    return n;
  }
  int fib0 = 0;
  int fib1 = 1;
  int fib;

  for (int i = 2; i <= n; i++) {
    fib = fib0 + fib1;
    fib0 = fib1;
    fib1 = fib;
  }
  return fib;
}

int fib(int n) {
  if (n < 2) {
    //base case
    return n;
  }
  return fib(n - 2) + fib(n - 1); //recursive case
}

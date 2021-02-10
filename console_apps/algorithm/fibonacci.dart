import 'dart:io';

void main(List<String> arguments) {
  int n;

  print("What n do you want to lookup in the Fibonacci sequence?");
  String inTemp = stdin.readLineSync();

  try {
    n = int.parse(inTemp);
  } catch (e) {
    //uh oh, could not be turned into integer
    print('That was not an integer.' + e.toString());
    return;
  }

  print("fib($n) = " + fib(n).toString());
}

/// Find the nth term in the Fibonacci sequence
/// fib(0) = 0  fib(1) = 1   fib(2)=1  fib(3)= 2  fib(4)=3  fib(5)=5 fib(6)=8

int fib(int n) {
  if (n < 2) {
    //base case
    return n;
  }
  return fib(n - 2) + fib(n - 1); //recursive case
}

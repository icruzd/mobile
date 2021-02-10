import 'dart:io';

main() {
  print('factorial de 6 ${factorial_rec(6)}');
}

int factorial(int n) {
  if (n == 0 || n == 1) return 1;

// fac(5)= 5*4*3*2*1 = 120
  int fact = 1;

  for (int i = 2; i <= n; i++) {
    fact = fact * i;
  }
  return fact;
}

int factorial_rec(int n) {
  if (n == 0 || n == 1) return 1;
  return n * factorial(n - 1);
}

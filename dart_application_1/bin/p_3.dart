import 'dart:io';

List<int> generateFibonacci(int n) {
  if (n <= 0) {
    return [];
  }

  List<int> fibonacciSequence = [0];

  if (n == 1) {
    return fibonacciSequence;
  }

  if (n >= 2) {
    fibonacciSequence.add(1);
  }

  int a = 0, b = 1;

  while (fibonacciSequence.length < n) {
    int nextFib = a + b;
    fibonacciSequence.add(nextFib);
    int temp =
        a; // Store the value of 'a' to calculate the next Fibonacci number
    a = b;
    b = temp + b; // Calculate the next Fibonacci number
  }

  return fibonacciSequence;
}

void main() {
  print("Enter the value of n: ");
  int n = int.parse(stdin.readLineSync() ?? '0');

  if (n < 0) {
    print("Invalid input. Please enter a non-negative integer.");
    return;
  }

  List<int> fibonacciNumbers = generateFibonacci(n);

  print("Fibonacci sequence up to the $n-th number: $fibonacciNumbers");
}

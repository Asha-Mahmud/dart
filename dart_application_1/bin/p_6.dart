import 'dart:io';

int calculateFactorial(int n) {
  if (n < 0) {
    return -1; // Negative numbers don't have factorials
  } else if (n == 0 || n == 1) {
    return 1; // Factorial of 0 and 1 is 1
  } else {
    int factorial = 1;
    for (int i = 2; i <= n; i++) {
      factorial *= i;
    }
    return factorial;
  }
}

void main() {
  print("Enter a positive integer: ");
  String input = stdin.readLineSync() ?? '';

  int? number = int.tryParse(input);

  if (number != null && number >= 0) {
    int factorial = calculateFactorial(number);
    print("Factorial of $number is $factorial");
  } else {
    print("Invalid input. Please enter a valid positive integer.");
  }
}

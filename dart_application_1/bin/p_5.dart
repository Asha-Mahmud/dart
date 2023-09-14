import 'dart:io';

void checkEvenOrOdd(int number) {
  if (number % 2 == 0) {
    print("$number is even.");
  } else {
    print("$number is odd.");
  }
}

void main() {
  print("Enter a number: ");
  String input = stdin.readLineSync() ?? '';

  if (int.tryParse(input) != null) {
    int number = int.parse(input);
    checkEvenOrOdd(number);
  } else {
    print("Invalid input. Please enter a valid integer.");
  }
}

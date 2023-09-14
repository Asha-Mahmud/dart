import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  final targetNumber =
      random.nextInt(100) + 1; // Generate a random number between 1 and 100
  int attempts = 0;
  int? userGuess;

  print("Welcome to the Number Guessing Game!");
  print("I've selected a number between 1 and 100. Try to guess it.");

  while (userGuess != targetNumber) {
    print("Enter your guess (1-100): ");
    String input = stdin.readLineSync() ?? '';
    try {
      userGuess = int.parse(input);

      if (userGuess < 1 || userGuess > 100) {
        print("Please enter a number between 1 and 100.");
      } else {
        attempts++;

        if (userGuess < targetNumber) {
          print("Too low! Try again.");
        } else if (userGuess > targetNumber) {
          print("Too high! Try again.");
        }
      }
    } catch (e) {
      print("Invalid input. Please enter a valid number.");
    }
  }

  print(
      "Congratulations! You guessed the number $targetNumber in $attempts attempts.");
}

import 'dart:io';

void main() {
  // Input the length of the list
  print("Enter the length of the list: ");
  int length = int.parse(stdin.readLineSync() ?? '0');

  if (length <= 0) {
    print("Invalid length. Please enter a positive integer.");
    return;
  }

  // Input the list of numbers
  List<int> numbers = [];
  for (int i = 0; i < length; i++) {
    print("Enter number ${i + 1}: ");
    int number = int.parse(stdin.readLineSync() ?? '0');
    numbers.add(number);
  }

  // Find and print the largest number
  int largestNumber = findLargestNumber(numbers);
  print("The largest number in the list is: $largestNumber");
}

int findLargestNumber(List<int> numbers) {
  int largest = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }

  return largest;
}

bool isPalindrome(String input) {
  // convert to lowercase
  String cleanedInput = input.toLowerCase();

  // Check if the cleaned string is a palindrome
  String reversedInput = cleanedInput.split('').reversed.join('');
  return cleanedInput == reversedInput;
}

void main() {
  List<String> testStrings = ["Madam", "radar", "Civic", "hello"];

  for (String testString in testStrings) {
    bool result = isPalindrome(testString);

    if (result) {
      print("$testString: True");
    } else {
      print("$testString: False");
    }
  }
}

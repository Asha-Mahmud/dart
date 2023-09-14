List<int> getUniqueElements(List<int> numbers) {
  // Create a Set to store unique elements
  Set<int> uniqueSet = Set<int>();

  // Create a List to store the unique elements in order of appearance
  List<int> uniqueList = [];

  // Iterate through the input list
  for (int number in numbers) {
    // Check if the number is not in the set (i.e., it's unique)
    if (!uniqueSet.contains(number)) {
      // Add the number to both the set and the unique list
      uniqueSet.add(number);
      uniqueList.add(number);
    }
  }

  return uniqueList;
}

void main() {
  // Example input list with duplicates
  List<int> inputList = [1, 2, 2, 3, 4, 4, 5, 6, 6];

  // Call the function to get unique elements
  List<int> uniqueElements = getUniqueElements(inputList);

  // Print the original list and the list of unique elements
  print("Original List: $inputList");
  print("Unique Elements: $uniqueElements");
}

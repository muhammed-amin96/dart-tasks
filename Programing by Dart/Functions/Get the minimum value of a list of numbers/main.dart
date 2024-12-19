void main() {
  List<int> numbers = [10, 0, 5, 20, -5, -10, 50, -20];
  int minimumValue = getMinimumVal(numbers);
  print("Minimum value of this list is $minimumValue");
}

int getMinimumVal(List<int> numbers) {
  int minimumVal = 0;
  for (int number in numbers) {
    if (number <= minimumVal) {
      minimumVal = number;
    }
  }
  return minimumVal;
}

void main() {
  List<int> numbers = [
    2,
    5,
    10,
    20,
    25,
    600,
    603,
    709,
    500
  ]; //initialize list of numbers
  for (int num in numbers) {
    //iterate through the list number by number
    switch (num % 2) {
      //check using a switch case whether the number is even or odd
      case 0:
        print('$num is an even number');
        break;
      case 1:
        print('$num is an odd number');
        break;
    }
  }
}

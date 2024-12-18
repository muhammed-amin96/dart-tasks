import 'dart:io';

void main() {
  stdout.write("Please enter your number: ");
  String? input = stdin.readLineSync();
  int number = int.parse(input!); //parse string input from user to integer
  if (number >= 0) {
    //check if it's positive number
    print("This number is positive");
  } else {
    print("This number is negative");
  }
  if (number % 2 == 0) {
    //check if it's even number
    print("This number is even");
  } else {
    print("This number is odd");
  }
}

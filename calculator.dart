import 'dart:io';

main(List<String> args) {

  while (true) { // An infinite loop

    double num1 = getNum(); // Getting numbers from functions
    double num2 = getNum(); // Getting numbers from functions
    String operation = getOperation(); // Getting operation from the function

    print("Result: " + getResult(num1, num2, operation)); // Getting and printing the result we've found
    print("***************************************************");

  }

}

double getNum() {

  bool isValid = false; // Creating a boolean variable to control whether number written by user is valid
  String num; // Initializing the num variable

  while (!isValid) { // If it is the first loop or if the user enters a non-valid num

    print("Write a number (or x to escape): "); // Printing the message to get a number
    num = stdin.readLineSync().trim(); // Getting number (in String)

    if (num.toUpperCase() == "X") exit(exitCode); // If the case of exiting happens exit the program

    else if (double.tryParse(num) != null) isValid = true; // If the number is parseble to double, make the isValid variable true

    else print("You entered a non-valid number! Please write in valid format.."); // Print the error if the number given by user is non-valid

  }

  return double.parse(num); // Return the number entered by user

}

String getOperation() {

  bool controller = false; // Creating a boolean variable to control whether operation written by user is valid
  String operation; // Initializing the operation variable

  while (!controller) { // If it is the first loop or if the user enters a non-valid string

    print("Write the operation you want to do \n + : addition \n - : subtraction \n * : multiplication \n / : division \n Your operation: ");
    operation = stdin.readLineSync(); // Getting the operation from user

    if (operation != "+" && operation != "-" && operation != "*" && operation != "/" && operation.toUpperCase() != "X") // If the user enters a non-valid string
      print("Wrong choice!"); // Print the error

    else if (operation.toUpperCase() == "X") exit(exitCode); // If the case of exiting happens exit the program

    else controller = true; // Otherwise, escape the loop

  }

  return operation; // Return the valid operation given by the user

}

String getResult(double num1, double num2, String operation) {

  switch(operation) {

    case '+': // If the operation is equal to "+"
      return (num1 + num2).toString(); // Return the result of the addition
    break; // Break the switch

    case '-': // If the operation is equal to "-"
      return (num1 - num2).toString(); // Return the result of the subtraction
    break; // Break the switch

    case '*': // If the operation is equal to "*"
      return (num1 * num2).toString(); // Return the result of the multiplication
    break; // Break the switch

    case '/': // If the operation is equal to "/"
      return (num1 / num2).toString(); // Return the result of the division
    break; // Break the switch

  }

  return null; // Useless return case

}
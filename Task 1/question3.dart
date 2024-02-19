// Create a program thats reads list of expenses amount using user input and print total.
import 'dart:io';

void main() {
  List<double> expenses = [];

  while (true) {
    stdout.write('Enter an expense amount (or type "done" to finish): ');
    String input = stdin.readLineSync()!;

    if (input.toLowerCase() == 'done') {
      break;
    }

    try {
      double expense = double.parse(input);
      expenses.add(expense);
    } catch (e) {
      print('Invalid input. Please enter a valid number.');
    }
  }

  double total = expenses.fold(0, (prev, curr) => prev + curr);

  print('Total expense: \$${total.toStringAsFixed(2)}');
}
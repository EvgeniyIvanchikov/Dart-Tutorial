void main() {
  printGreeting('Hello!');
  int result = getSquare(5);
  print(formatResult(result));
}

void printGreeting(arg) {
  print(arg);
}

int getSquare(int number) {
  final result = number * number;
  return result;
}

String formatResult(int number) {
  return 'The result is $number';
}

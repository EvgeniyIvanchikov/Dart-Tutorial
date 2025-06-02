void main() {
  makeTask(doSomething);
  final sum = (num a, num b) => a + b;
  final diff = (num a, num b) => a - b;
  final divide = (num a, num b) => a / b;
  final multiple = (num a, num b) => a * b;

  print(calculate(5, 6, sum));
  print(calculate(5, 6, diff));
  print(calculate(5, 6, divide));
  print(calculate(5, 6, multiple));
}

void makeTask(Function task) {
  print("Starting task...");
  task();
  print("Task completed.");
}

void doSomething() {
  print('Hello');
}

num calculate(num a, num b, num Function(num a, num b) operation) =>
    operation(a, b);

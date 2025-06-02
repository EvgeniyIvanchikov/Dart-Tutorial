void main() {
  String title = "Hello, Dart!";
  int number = 43;
  number = number ~/ 3;
  var isActive = true;
  bool isComplete = false;
  dynamic dynamicValue = "This can be anything";
  dynamicValue = 42;
  title = title.toUpperCase();
  const double pi = 3.141592653589793;
  final String greeting = "Welcome to Dart programming!";
  final date = DateTime.now();
  print(
    '$title $number $isActive $date $dynamicValue $isComplete $pi $greeting',
  );
}

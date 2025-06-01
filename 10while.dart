void main() {
  final students = ['John', 'Diana', 'Mike', 'Alice', 'Bob'];

  print(students);

  while (students.isNotEmpty) {
    students.removeLast();
  }
  print(students);

  var a = 10;

  do {
    print(a);
    a= a * 2;
  } while (a < 1000);

  print(a);
}

void main() {
  final students = <String, double>{
    'Alice': 4.5,
    'Bob': 4,
    'Charlie': 4.8,
    'Diana': 3.8,
  };
  students['Eve'] = 4.2;
  students.remove('Charlie');
  print(students);
}

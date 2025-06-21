void main() {
  const alex = Human(name: 'Alex', age: 22, height: 184);

  print(alex.getNameAndAge);
}

class Human {
  final String name;
  final int _age;
  final num height;

  const Human({required this.name, required int age, required this.height})
    : _age = age;

  int get age => _age;
  String get getNameAndAge => '$name, $_age years old';
}

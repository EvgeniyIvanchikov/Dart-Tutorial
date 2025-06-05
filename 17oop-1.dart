void main() {
  var alex = Human(name: 'Alex', age: 22, height: 183.5);
  print(alex.name);

  alex.age = 23;
  print(alex.age);
}

class Human {
  Human({required this.name, required this.age, required this.height});
  final String name;
  int age;
  double height;
}

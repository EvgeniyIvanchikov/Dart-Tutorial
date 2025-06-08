void main() {
  var alex = Human(name: 'Alex', age: 22, height: 184);

  print(alex.getCount);
  var alex2 = Human(name: 'Alex', age: 22, height: 184);
  print(alex2.getCount);
  var alex3 = Human(name: 'Alex', age: 22, height: 184);
  print(alex3.getCount);
}

class Human {
  Human({required this.name, required this.age, required this.height}) {
    count += 1;
  }

  final String name;
  int age;
  num height;

  static int count = 0;

  int get getCount => Human.count;
}

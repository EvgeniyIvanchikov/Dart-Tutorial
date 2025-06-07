void main() {
  var alex = Human(name: 'Alex', age: 22, height: 184);
  var john = Human(name: 'John', age: 22, height: 183);

  print(alex);
  alex.grewUp();
  print(alex);
  alex.fastGrewUp(2);
  print(alex);
  alex.isHigher(john);
}

class Human {
  Human({required this.name, required this.age, required this.height});
  final String name;
  int age;
  num height;

  @override
  String toString() {
    return 'Person. Name: $name, Age: $age, Height: $height';
  }

  grewUp() {
    age += 1;
  }

  fastGrewUp(int number) {
    age += number;
  }

  bool isHigher(Human otherHuman) {
    final a = height > otherHuman.height;
    print(a);
    return a;
  }
}

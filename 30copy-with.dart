void main() {
  const alex = Human(name: 'Alex', age: 22, height: 184);

  final john = alex.copyWith(name: 'John');

  print(alex.getNameAndAge);
  print(john.getNameAndAge);
}

class Human {
  final String name;
  final int age;
  final num height;

  const Human({required this.name, required this.age, required this.height});

  String get getNameAndAge => '$name, $age years old';

  Human copyWith({String? name, int? age, num? height}) {
    return Human(
      name: name ?? this.name,
      age: age ?? this.age,
      height: height ?? this.height,
    );
  }
}

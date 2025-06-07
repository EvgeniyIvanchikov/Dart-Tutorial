void main() {
  var alex = Human(name: 'Alex', age: 22, height: 184);

  print(alex);

  var jessica = Artist(style: 'graphic', name: 'Jessica', age: 25, height: 150);
  print(jessica);
  alex.isHigher(jessica);
  jessica.drawPicture();
}

class Human {
  Human({required this.name, required this.age, required this.height});
  final String name;
  int age;
  num height;

  @override
  String toString() {
    return 'Person. Name: $name, Age: $age, Height: $height.';
  }

  bool isHigher(Human otherHuman) {
    final a = height > otherHuman.height;
    print(a);
    return a;
  }
}

class Artist extends Human {
  Artist({
    required this.style,
    required super.name,
    required super.age,
    required super.height,
  });
  String style;

  Object createHuman() {
    final a = Human(name: name, age: age, height: height);
    return a;
  }

  @override
  String toString() {
    return super.toString() + ' ' + 'Artist. Style: $style.';
  }

  void drawPicture() {
    print('$name draw picture');
  }
}

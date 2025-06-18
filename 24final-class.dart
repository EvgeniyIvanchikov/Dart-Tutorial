void main() {
  var bird = Bird(age: 2.5);
  bird.makeSound();
  print("Bird age: ${bird.age}");

  var owl = Owl(age: 3.0);
  owl.makeSound();
  print("Owl age: ${owl.age}");
}

abstract class Animal {
  void makeSound();
  double get age;
}

final class Bird extends Animal {
  final double _age;

  Bird({required double age}) : _age = age;
  void makeSound() {
    print("Chirp");
  }

  double get age => _age;
}

final class Owl extends Bird {
  Owl({required double age}) : super(age: age);

  @override
  void makeSound() {
    print("Hoot");
  }
}

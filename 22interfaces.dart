void main() {
  final wolf = Wolf();
  final tiger = Tiger(age: 5);

  wolf.makeSound();
  tiger.makeSound();
  tiger.makePerformanceInCircus();
  print('Wolf age: ${wolf.age}');
  print('Tiger age: ${tiger.age}');
}

abstract interface class Animal {
  double? get age;

  void makeSound();
}

class Wolf implements Animal {
  Wolf({this.age});

  void makeSound() {
    print('auu');
  }

  final double? age;
}

class Tiger implements Animal {
  Tiger({this.age});

  void makeSound() {
    print('roar');
  }

  void makePerformanceInCircus() {
    print('true');
  }

  final double? age;
}

class Human {
  Human({required this.name, required int age, required this.height})
    : _age = age;
  final String name;
  int _age;
  num height;

  int get age => _age;
  String get baseData => 'Name: $name, Age: $_age, Height: $height';
  grewUp() {
    _age += 1;
  }
}

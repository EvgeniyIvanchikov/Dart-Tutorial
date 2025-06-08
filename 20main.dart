import './20encapsulation.dart';

void main() {
  var alex = Human(name: 'Alex', age: 22, height: 184);

  print(alex.age);
  alex.grewUp();
  print(alex.age);
  print(alex.baseData);
}

import 'dart:math';

void main() {
  const int number = 5;
  // const comment = 'comment';
  if (number > 5) {
    print(1);
  } else {
    print(2);
  }
  var intValue = Random().nextInt(10);
  print(intValue);
  List<String> testList = ['one', 'two', 'three', 'four'];
  testList.forEach(print);
  List<String> flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

  flybyObjects.add('test');
  flybyObjects.removeAt(0);
  flybyObjects.addAll(testList);
  print(flybyObjects);

  flybyObjects[1] = "HZ";
  final SecondObject = flybyObjects[1];
  print(SecondObject);
  print('|||||||');

  final foundedItems = flybyObjects
      .where((element) => element.contains('r'))
      .toList();
  // final foundedItems = flybyObjects.where((element) => element.contains('a'));
  foundedItems.forEach(print);
  print(foundedItems);
  double year = 2000.2;
  while (year < 2016) {
    year += 1;
  }
  print(year);

  final classes = <String>{'Math', 'Biology'};
  classes.add('Math');
  print(classes);
  int test(arg) {
    return arg * 2;
  }

  print(test(5));
}

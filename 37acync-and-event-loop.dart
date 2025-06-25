import 'dart:math';

void main() async {
  final a = await makeCoffee(1);
  print('Coffee №1 took $a seconds to make.');
  final b = await makeCoffee(2);
  print('Coffee №1 took $b seconds to make.');
  await makeCoffee(3);

  // print('Coffee making process completed.');
}

Future<int> makeCoffee(int number) async {
  print('Making coffee №$number...');
  final random = Random();
  final delay = random.nextInt(4);
  await Future.delayed(Duration(seconds: delay), () {
    print('Coffee №$number is ready!');
  });

  return delay;
}

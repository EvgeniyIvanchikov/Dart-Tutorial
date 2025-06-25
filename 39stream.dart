import 'dart:math';

Stream<String> messageStream() async* {
  final id = Random().nextInt(1000).toString();

  print(id);
  yield 'Hi';
  await Future.delayed(Duration(seconds: 2));
  yield 'Long time no see';
  await Future.delayed(Duration(seconds: 2));
  yield 'How are you?';
}

void main() {
  final stream = messageStream().asBroadcastStream();
  final subscription1 = stream.listen((value) => print(value));
  final subscription2 = stream.listen((value) => print(value));

  Future.delayed(Duration(milliseconds: 2100), () {
    subscription1.cancel();
  });

  stream.last.then((_) {
    print('Everything is done!');
  });
}

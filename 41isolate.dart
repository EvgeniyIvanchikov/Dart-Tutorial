import 'dart:isolate';
import 'dart:math';

Future<void> main() async {
  final receivePort = ReceivePort();

  Isolate.spawn(mathOperation, [10, receivePort.sendPort]);
  final result = await receivePort.first;
  print(result);
}

void sayHello(String name) {
  print('Hello $name from isolate!');
}

void mathOperation(List<Object> arguments) {
  final number = arguments[0] as int;
  final sendPort = arguments[1] as SendPort;
  final result = number * number;
  sendPort.send(result);
}

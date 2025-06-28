import 'dart:isolate';
import 'dart:math';

Future<void> main() async {
  final receivePort = ReceivePort();
  final numberList = List.generate(20, (index) => index + 1);
  final isolatesCount = 4;

  final resultResultList = <int>[];
  var completedIsolates = 0;

  for (var i = 0; i < isolatesCount; i++) {
    final stepSize = numberList.length ~/ isolatesCount;
    final subList = numberList.sublist(i * stepSize, (i + 1) * stepSize);

    Isolate.spawn(mathIsolate, [subList, receivePort.sendPort, i]);
  }

  await for (final message in receivePort) {
    resultResultList.addAll(message);
    completedIsolates++;
    if (completedIsolates == isolatesCount) {
      receivePort.close();
      break;
    }
  }
  resultResultList.sort();
  print('Isolate completed with data: $resultResultList');
}

void sayHello(String name) {
  print('Hello $name from isolate!');
}

void mathIsolate(List<Object> arguments) async {
  final numbers = arguments[0] as List<int>;
  final sendPort = arguments[1] as SendPort;
  final index = arguments[2] as int;

  final resultList = <int>[];

  await Future.delayed(Duration(seconds: 5));

  numbers.forEach((number) {
    final result = number * number;
    // sendPort.send(result);
    resultList.add(result);
    print('Isolate #$index computed $result');
  });
  sendPort.send(resultList);
  print('Isolate #$index finished processing');
}

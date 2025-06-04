void main() {
  try {
    final a = divide(4, 0);
    print('Result: $a');
  } on Exception catch (e) {
    print('Error $e');
  } on Error catch (e) {
    print('Error $e');
  } finally {
    print('do main task');
  }
}

num divide(num a, num b) {
  if (b == 0) {
    throw Exception('Division by zero is not allowed');
  }
  return a / b;
}

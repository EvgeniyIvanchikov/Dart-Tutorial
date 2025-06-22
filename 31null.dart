void main() {
  String? boxOfEggs;
  print(boxOfEggs);
  boxOfEggs = '10 eggs';
  print(boxOfEggs);
  boxOfEggs = null;
  print(boxOfEggs);

  final storage = Storage<int>();
  print(storage.read());
  storage.update(42);
  print(storage.read());
}

class Storage<T> {
  Storage({this.value});
  T? value;

  T? read() => value;

  void update(T? value) {
    this.value = value;
  }
}

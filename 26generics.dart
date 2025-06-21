void main() {
  var storage = Storage<int>(42);
  print(storage.value);
  storage.update(84);
  print(storage.value);

  var storageString = Storage<String>('Hello');
  print(storageString.value);
  storageString.update('World');
  print(storageString.value);
}

class Storage<T> {
  Storage(this.value);
  T value;

  T read() => value;

  void update(T value) {
    this.value = value;
  }
}

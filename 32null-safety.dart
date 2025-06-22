void main() {
  String? boxOfEggs;

  if (boxOfEggs != null) {
    print(boxOfEggs.substring(0, 1));
  } else {
    print('No eggs in the box');
  }
}

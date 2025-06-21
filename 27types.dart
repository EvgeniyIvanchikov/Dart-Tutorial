void main() {
  int a = 1;
  bool b = true;

  double c = a.toDouble() + convertBoolToDouble(b);
  print(c);
  print(c.runtimeType);
}

double convertBoolToDouble(bool value) {
  return value ? 1.0 : 0.0;
}

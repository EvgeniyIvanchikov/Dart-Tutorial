void main() {
  print(greatOrLessOrEqual(8, 8));
}

String greatOrLessOrEqual(int a, int b) {
  if (a == b) return 'equal';
  return a > b ? 'great' : 'less';
}

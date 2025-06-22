void main() {
  String? name = _getUserName();
  print(_getFirstCorrectCharacter(name));
}

String? _getFirstCorrectCharacter(String? name) {
  if (name == null) {
    return null;
  } else if (name.trim().isEmpty) {
    return 'The name is empty';
  }
  return name.trim().substring(0, 1);
}

String? _getUserName() {
  return ' d';
}

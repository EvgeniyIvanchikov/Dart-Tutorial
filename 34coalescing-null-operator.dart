void main() {
  String? name = _getUserName();
  print(_getFirstCorrectCharacter(name));

  final alex = {
    // 'name': 'Alex',
    // 'email': 'alex@gmail.com',
    // 'phone': 12345678999999,
  };

  final visibleData =
      alex['name'] ??
      alex['email'] ??
      alex['phone']?.toString() ??
      'No data available';
  print(visibleData);
}

String? _getFirstCorrectCharacter(String? name) {
  final modifiedName = name?.trim() ?? null;

  if (modifiedName == null) {
    return null;
  } else if (modifiedName.isEmpty) {
    return 'The name is empty';
  }
  return modifiedName.substring(0, 1);
}

String? _getUserName() {
  return ' d';
}

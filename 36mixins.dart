mixin Wifi {
  void enabledWifi() {
    print('Wifi enabled');
  }

  void disabledWifi() {
    print('Wifi disabled');
  }
}

class Phone with Wifi {}

class Animal with Wifi {}

void main() {
  var xiaomi = Phone();
  xiaomi.enabledWifi();
  xiaomi.disabledWifi();

  var dog = Animal();
  dog.enabledWifi();
  dog.disabledWifi();
}

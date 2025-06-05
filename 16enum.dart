enum Pet { dog, cat, bird }

void main() {
  final johnPet = Pet.bird;

  switch (johnPet) {
    case Pet.dog:
      print('John has a dog');
      break;
    case Pet.cat:
      print('John has a cat');
      break;
    case Pet.bird:
      print('John has a bird');
      break;
  }
}

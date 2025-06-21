void main() {
  final game = Minecraft();
  game.playerMove();
  game.playerBuild();
  game.playerDestroy();
  print('Level: ${game.level}');
}

class Minecraft {
  int level = 0;

  void playerMove() {
    print('Player move');
  }

  void playerBuild() {
    print('Player build');
  }
}

extension MinecraftDestroyExtension on Minecraft {
  void playerDestroy() {
    print('Player destroy');
    this.level += 1;
  }
}

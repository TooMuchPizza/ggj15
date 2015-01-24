class GameCamera extends HCamera {
  Player player;

  GameCamera (Player p) {
    super ();
    player = p;
  }

  void draw () {
    setPosition(player.getPosition().x - WINDOW_WIDTH / 2,
      player.getPosition().y - WINDOW_HEIGHT / 2 );
    super.draw ();
  }
}

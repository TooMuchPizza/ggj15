class GameCamera extends HCamera {
  Player player;
  Hud hud;

  GameCamera (Player p, Hud h) {
    super ();
    player = p;
    hud = h;
  }

  void update () {
  }

  void draw () {
    println("Drawing Camera");
    setPosition(player.getPosition().x - WINDOW_WIDTH / 2,
      player.getPosition().y - WINDOW_HEIGHT / 2 );
    super.draw();
    hud.draw();
  }
}

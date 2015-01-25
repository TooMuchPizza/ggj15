class Hud {
  Player player;
  String healthStr;

  Hud(Player _player) {
    player = _player;
  }

  void update() {
    healthStr = str(player.health);
  }

  void draw() {
    textSize(20);
    fill(255,18,43);
    rect(((player.getPosition().x - WINDOW_WIDTH / 2) + 30),
          ((player.getPosition().y - WINDOW_HEIGHT / 2) + 60),
          (player.health * 2f),10);
    
    fill(255,255,255);

    text("Health",(player.getPosition().x - WINDOW_WIDTH / 2) + 30,
        (player.getPosition().y - WINDOW_HEIGHT / 2) + 50);
  
    if(player.health <= 0f) {
      print("GAME OVER");
    }
  }
}

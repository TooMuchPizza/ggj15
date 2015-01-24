class Player extends Being {
  
  final static float PLAYER_RADIUS = 16;
 
  Player(float x, float y) {
    super(new HCircle(HermesMath.makeVector(x, y), PLAYER_RADIUS));
  }
  
  void draw() {
    // draw the player
  }
  
  void update() {
  }
  
  void receive(KeyMessage m) {
    int nKey = m.getKeyCode();
    if(m.isPressed()) {
      if(nKey == POCodes.Key.D || nKey == POCodes.Key.RIGHT) {
        println("RIGHT");
      }
      if(nKey == POCodes.Key.A || nKey == POCodes.Key.LEFT) {
        println("LEFT");
      }
      if(nKey == POCodes.Key.W || nKey == POCodes.Key.UP) {
        println("UP");
      }
      if(nKey == POCodes.Key.S || nKey == POCodes.Key.DOWN) {
        println("DOWN");
      } else {
        if(nKey == POCodes.Key.D || nKey == POCodes.Key.A || nKey == POCodes.Key.LEFT || nKey == POCodes.Key.RIGHT) {
          // stop the player
        }
      }
    }
  }
}

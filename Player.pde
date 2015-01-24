class Player extends Being {
  
  final static float PLAYER_RADIUS = 16;
  float speed = 150;
 
  Player(float x, float y) {
    super(new HCircle(HermesMath.makeVector(x, y), PLAYER_RADIUS));
  }
  
  void draw() {
    noStroke();
    _shape.draw();
  }
  
  void update() {
  }
  
  void receive(KeyMessage m) {
    int nKey = m.getKeyCode();
    if(m.isPressed()) {
      if(nKey == POCodes.Key.D || nKey == POCodes.Key.RIGHT) {
        getVelocity().x = speed;
      }
      if(nKey == POCodes.Key.A || nKey == POCodes.Key.LEFT) {
        getVelocity().x = -speed;
      }
      if(nKey == POCodes.Key.W || nKey == POCodes.Key.UP) {
        getVelocity().y = -speed;
      }
      if(nKey == POCodes.Key.S || nKey == POCodes.Key.DOWN) {
        getVelocity().y = speed;
      }

      float vel = sqrt(pow(getVelocity().y,2) + pow(getVelocity().x,2));
      if(vel > 0.0) {
        getVelocity().x = speed*getVelocity().x/vel;
        getVelocity().y = speed*getVelocity().y/vel;
      }

    } else {
      if( nKey == POCodes.Key.D || nKey == POCodes.Key.RIGHT ||
          nKey == POCodes.Key.A || nKey == POCodes.Key.LEFT) {
        getVelocity().x = 0;
      }
      if( nKey == POCodes.Key.W || nKey == POCodes.Key.UP ||
          nKey == POCodes.Key.S || nKey == POCodes.Key.DOWN) {
        getVelocity().y = 0;
      }
    }
  }
}

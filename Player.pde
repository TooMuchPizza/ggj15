class Player extends Entity {
  Player(float x, float y) {
    super(x, y, 16);
  }

  void update() {
    super.update();
    // stuff
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

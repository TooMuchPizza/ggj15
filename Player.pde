int GAME_WIDTH = 600;
int GAME_HEIGHT = 300;

class Player extends Entity {
  float xVelocity, yVelocity;
  
  Player(float x, float y) {
    super(x, y, 16);

    xVelocity = yVelocity = 0f;
    
  }

  void update() {
    super.update();
    
    // stuff
    getVelocity().x = xVelocity;
    getVelocity().y = yVelocity;
    
    if(getPosition().x > 960 && getPosition().y > 400 && getPosition().y < 600){
     println("FINISH"); 
    }
   
  }
  void receive(KeyMessage m) {
    int nKey = m.getKeyCode();
    boolean changedXVelocity, changedYVelocity;
    changedXVelocity = changedYVelocity = false;
    
    if(m.isPressed()) {
      if(nKey == POCodes.Key.D || nKey == POCodes.Key.RIGHT) {

        xVelocity = speed;
        changedXVelocity = true;

      }
      if(nKey == POCodes.Key.A || nKey == POCodes.Key.LEFT) {
        xVelocity = -speed;
        changedXVelocity = true;
      }
      if(nKey == POCodes.Key.W || nKey == POCodes.Key.UP) {
        yVelocity = -speed;
        changedYVelocity = true;
      }
      if(nKey == POCodes.Key.S || nKey == POCodes.Key.DOWN) {

        yVelocity = speed;
        changedYVelocity = true;
      }

      float vel = sqrt(pow(yVelocity, 2) + pow(xVelocity, 2));
      if(vel > 0f) {
        if (changedXVelocity) xVelocity = speed * xVelocity / vel;
        if (changedYVelocity) yVelocity = speed * yVelocity / vel;
      }


    } else {
      if( nKey == POCodes.Key.D || nKey == POCodes.Key.RIGHT ||
          nKey == POCodes.Key.A || nKey == POCodes.Key.LEFT) {
          xVelocity = 0f;
      }
      if( nKey == POCodes.Key.W || nKey == POCodes.Key.UP ||
          nKey == POCodes.Key.S || nKey == POCodes.Key.DOWN) {

          yVelocity = 0f;
      }
    }
  }
}


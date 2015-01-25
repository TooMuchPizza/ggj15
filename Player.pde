class Player extends Entity {
  float speed;
  float xVelocity, yVelocity;
  float health;
  float _r;
  PShape _image;

  Player (float x, float y) {
    super (x, y, 16);
    _r = 16;

    health = 100f;
    speed = 200f;
    xVelocity = yVelocity = 0f;

    _image = loadShape("palla.svg");
  }
  
  public void subscribe () {
    po.subscribe(this, POCodes.Key.W);
    po.subscribe(this, POCodes.Key.A);
    po.subscribe(this, POCodes.Key.S);
    po.subscribe(this, POCodes.Key.D);
    po.subscribe(this, POCodes.Key.UP);
    po.subscribe(this, POCodes.Key.DOWN);
    po.subscribe(this, POCodes.Key.LEFT);
    po.subscribe(this, POCodes.Key.RIGHT);
  }  

  void update() {
    super.update();

    getVelocity().x = xVelocity;
    getVelocity().y = yVelocity;

    if (getPosition().x > 940 &&
         getPosition().y > 400 &&
         getPosition().y < 600) {
      println("FINISH"); 
    }
  }
  
  void messageFromClient(oscP5.OscMessage theOscMessage){
    //TODO
  }
  
  void messageFromServer(oscP5.OscMessage theOscMessage){
    if (theOscMessage.addrPattern().toString().equals("/joinack")){
        println("joinack");
    }
    else if (theOscMessage.addrPattern().toString().equals("/startgame")){
        println("Starting game.");
    }
    else {
      println(theOscMessage);
    }
  }

  void draw() {
    noStroke();
    noFill();
    //fill(255,255,255);
    _shape.draw();
    shapeMode(CENTER);
    shape(_image, 0, 0, _r*2, _r*2);
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

      float vel = sqrt(pow(yVelocity, 2) + 
                        pow(xVelocity, 2));
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

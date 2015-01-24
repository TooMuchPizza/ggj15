class Npc extends Entity {
  Npc(float x, float y) {
    super(x, y, 16);
  }

  void update() {
    getVelocity().x = 200*cos((float)millis()/1000);
    getVelocity().y = 250*sin((float)millis()/1000);
    super.update();
    // NETWORK stuff
  }
}

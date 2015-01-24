float npchealth = 100;
class Npc extends Entity {
  Npc(float x, float y) {
    super(x, y, 16);
  }

  void update() {

    getVelocity().x = 200f * cos((float)millis() / 1000f);
    getVelocity().y = 250f * sin((float)millis() / 1000f);

    super.update();
    // NETWORK stuff
  }
}

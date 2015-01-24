class Entity extends Being {
  
  float speed = 150;
 
  Entity(float x, float y, float r) {
    super(new HCircle(HermesMath.makeVector(x, y), r));
  }
  
  void draw() {
    noStroke();
    _shape.draw();
  }
  
  void update() {
  }
}

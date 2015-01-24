class Entity extends MassedBeing {
  
  float speed = 150;
 
  Entity(float x, float y, float r) {
    super(new HCircle(HermesMath.makeVector(x, y), r),
          new PVector(0,0,0),
          r, 0);
  }
  
  void draw() {
_mass = 100;
    noStroke();
    _shape.draw();
  }
  
  void update() {
  }
}

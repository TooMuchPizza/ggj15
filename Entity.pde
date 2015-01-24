class Entity extends MassedBeing {
  
  float speed = 200f;
  float radius = 50f;
 
  Entity(float x, float y, float r) {
    super(new HCircle(HermesMath.makeVector(x, y), r),
          new PVector(0, 0, 0),
          r, 0);
    radius = r;
  }
  
  public void draw() {
    _mass = 100;
    noStroke();
    fill(255, 255, 255);
    _shape.draw();
  }
  
  void update() {}
}

PShape shape;
class Rock extends Entity {
  float _r;
  Rock(float x, float y, float r) {
    super(x, y, r);
    _r = r;
    shape = loadShape("illustrator2.svg");
    
  }

  void draw() {
    noStroke();
     noFill();
    _shape.draw();
    shapeMode(CENTER);
    shape(shape, 0, 0, _r*2, _r*2);
  }
}

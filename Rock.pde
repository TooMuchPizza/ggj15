PShape shape;
float _r;
class Rock extends Entity {
  Rock(float x, float y, float r) {
    super(x, y, r);
    shape = loadShape("illustrator2.svg");
    
  }

  void draw() {

    noStroke();
    noFill();
    _shape.draw();
    shape(shape,0-_r/2,0-_r/2,_r*2,_r*2);
  }


}

PShape shape;
float _r;
class Rock extends Entity {
  Rock(float x, float y, float r) {
    super(x, y, r);
    shape = loadShape("illustrator2.svg");
    
  }

  public void draw() {
    
    shape(shape,0-_r/2,0-_r/2,_r*2,_r*2);
    
    noStroke();
    noFill();
    _shape.draw();
  }


}

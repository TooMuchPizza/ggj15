class Rock extends Entity {
  Rock(float x, float y, float r) {
    super(x, y, r);
  }

  public void draw() {
    noStroke();
    fill(100);
    _shape.draw();
  }


}

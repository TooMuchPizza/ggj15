class Rock extends Entity {
  Rock(float x, float y, float r) {
    super(x, y, r);
  }

  void draw() {
    println("Drawing a Rock");
    noStroke();
    fill(100);
    _shape.draw();
  }


}

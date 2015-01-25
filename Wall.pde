class Wall extends MassedBeing {

  Wall(float x,float y,float w,float h) {
    super(new HRectangle(x,y,w,h),new PVector(0,0,0),1000,0);
  }

  public void update() {
    //_c = pickColor();
    _position.x = 0;
    _position.y = 0;
  }

  void draw() {
    println("Drawing a Wall");
    fill(30);
    noStroke();
    _shape.draw();
  }
}

class Trap extends MassedBeing {

  Trap (float x) {
    super (new HRectangle (x, -10, 100, MAP_HEIGHT), new PVector (0, 0, 0), 0, 0);
  }

  public void draw() {
    fill (255, 255, 0);
    _shape.draw();
  }
}

class RockGroup extends Group<Rock> {
  
  RockGroup(World world) { 
    super(world);
  }

  void addRock(float x, float y, float r) {
    Rock rock = new Rock(x, y, r);
    world.register(rock, false);
    this.add(rock);
  }

  void generateRocks(/* paramters to do AMAZING lanes */) {
    addRock(100, 100, 24);
  }
}

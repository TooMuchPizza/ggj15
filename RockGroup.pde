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
    
addRock(40,400,20);
addRock(40,600,20);
addRock(960,400,20);
addRock(960,600,20);
    
    
    
  }
}

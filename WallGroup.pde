class WallGroup extends Group<Wall> {
  
  WallGroup(World world) { 
    super(world);
  }

  void addWall(float x, float y, float w,float h) {
    Wall wall = new Wall(x, y, w,h);
    world.register(wall, false);
    this.add(wall);
  }

  void generateWalls(/* paramters to do AMAZING lanes */) {
   
    
  addWall(-10,-10,10,1000);  
   addWall(0,-10,1000,10);  
    addWall(-10,990,1000,10);  
     addWall(990,0,10,1000);  
  
    
    
}
}




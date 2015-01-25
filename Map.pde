class Map {
  ArrayList<Rock> rocks;
  ArrayList<Wall> walls;
  //ArrayList<Trap> traps;
  //int[] ticks;

  Map() {
    rocks = new ArrayList<Rock>();
    walls = new ArrayList<Wall>();
    //traps = new ArrayList<Trap>();
   for(int i=0; i<1800; i=i+120){
    for(int c=0; i<800; i=i+100){
      float random = random(50,100);
      addRock(i+random, c+random, random);
 }
}

    addWall(-10,-10,10,MAP_HEIGHT);
    addWall(0,-10,MAP_WIDTH,10);
    addWall(-10,MAP_HEIGHT-10, MAP_WIDTH,10);
    addWall(MAP_WIDTH-10,0,10,MAP_HEIGHT);
    //addTrap(200);

    //ticks = new int[] {0, 10, 20, 30};
  }
  
  void addRock(float x, float y, float r) {
    Rock rock = new Rock(x, y, r);
    rocks.add(rock);
  }

  void addWall(float x, float y, float w, float h) {
    Wall wall = new Wall(x, y, w, h);
    walls.add(wall);
  }

  //void addTrap (float x) {
  //  Trap trap = new Trap (x);
  //  traps.add (trap);
  //}
}

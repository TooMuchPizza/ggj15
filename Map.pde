class Map {
  ArrayList<Rock> rocks;
  ArrayList<Wall> walls;
  ArrayList<Trap> traps;

  Map () {
    rocks = new ArrayList<Rock>();
    walls = new ArrayList<Wall>();
    traps = new ArrayList<Trap>();

    addRock (70, 70, 40);
    addWall(-10,-10,10,MAP_HEIGHT);
    addWall(0,-10,MAP_WIDTH,10);
    addWall(-10,MAP_HEIGHT-10, MAP_WIDTH,10);
    addWall(MAP_WIDTH-10,0,10,MAP_HEIGHT);
    addTrap(200);
  }
  
  void addRock (float x, float y, float r) {
    Rock rock = new Rock(x, y, r);
    rocks.add (rock);
  }

  void addWall (float x, float y, float w, float h) {
    Wall wall = new Wall(x, y, w, h);
    walls.add (wall);
  }

  void addTrap (float x) {
    Trap trap = new Trap (x);
    traps.add (trap);
  }
}

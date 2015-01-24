class GameWorld extends World {

  GameWorld() {
    super(po, cam);
  }

  void setup() {
    RockGroup rocks = new RockGroup(world);
    rocks.generateRocks();
    WallGroup walls = new WallGroup(world);
    walls.generateWalls();
    player = new Player(40, 500);
    world.register(player, true);

    po.subscribe(player, POCodes.Key.W);
    po.subscribe(player, POCodes.Key.A);
    po.subscribe(player, POCodes.Key.S);
    po.subscribe(player, POCodes.Key.D);
    po.subscribe(player, POCodes.Key.UP);
    po.subscribe(player, POCodes.Key.DOWN);
    po.subscribe(player, POCodes.Key.LEFT);
    po.subscribe(player, POCodes.Key.RIGHT);

    npcs = new NpcGroup(world);
    npcs.generateNpc();

    world.register(player, rocks, new GameCollider());
    world.register(player, npcs, new GameCollider());
    world.register(npcs, rocks, new GameCollider());
    world.register(player, walls, new WallCollider());
    world.register(npcs, walls, new WallCollider());
  }
  
  void draw() {
    background(0);
    super.draw();
  }
}

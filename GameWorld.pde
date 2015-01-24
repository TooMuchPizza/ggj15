class GameWorld extends World {

  GameWorld() {
    super(po);
  }

  void setup() {
    rocks = new RockGroup(world);
    rocks.generateRocks();

    player = new Player(300, 300);
    world.register(player, true);
    po.subscribe(player, POCodes.Key.W);
    po.subscribe(player, POCodes.Key.A);
    po.subscribe(player, POCodes.Key.S);
    po.subscribe(player, POCodes.Key.D);
    po.subscribe(player, POCodes.Key.UP);
    po.subscribe(player, POCodes.Key.DOWN);
    po.subscribe(player, POCodes.Key.LEFT);
    po.subscribe(player, POCodes.Key.RIGHT);

    world.register(player, rocks, new RockCollider());
  }
  
  void draw() {
    background(0);
    super.draw();
  }
}

class GameWorld extends World {

  GameWorld() {
    super(po);
  }

  void setup() {
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
  }
  
  void draw() {
    background(0);
    super.draw();
  }
}

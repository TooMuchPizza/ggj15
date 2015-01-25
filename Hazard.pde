class Hazard extends World {
  int[] attackTicks; //in ms, when the "enemy" will attack
  int attackNum;
  GameController gameController;
  Random r;

  Hazard(GameController gc) {
    super();
    gameController = gc;

    attackTicks = new int[]{0, 10, 20};
    attackNum = 0;
    r = new Random();
  }

  void update() {
    if (millis() > attackTicks[attackNum]) {
      attackNum++;
      Object target = chooseNextTarget();
      oscP5.send("attack ack", target);
    }
  }

  Object chooseNextTarget() {
    int victimNum = r.nextInt(gameController.playerConnections.size());
    println("Target: " + (victimNum + 1));
    Object[] values = gameController.playerConnections.values().toArray();
    println(values.length);
    return values[r.nextInt(values.length)];
  }
}

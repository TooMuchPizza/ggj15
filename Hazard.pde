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
    if (attackNum >= attackTicks.length) return;
    if (millis() > attackTicks[attackNum]) {
      attackNum++;
      Object target = chooseNextTarget();
      oscP5.OscMessage msg = new oscP5.OscMessage("atk ack");
      gameController.oscP5.send(msg, (TcpClient)target);
    }
  }

  Object chooseNextTarget() {
    int victimNum = r.nextInt(gameController.playerConnections.size());
    println("Target: " + (victimNum + 1));
    Object[] keys = gameController.playerConnections.keySet().toArray();
    println(keys.length);
    return keys[r.nextInt(keys.length)];
  }
}

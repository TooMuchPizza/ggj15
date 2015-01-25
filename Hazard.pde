class Hazard extends World {
  int[] attackTicks; //in ms, when the "enemy" will attack
  int attackNum;
  HashMap<TcpClient, Player> playerConnections;
  Random r;

  Hazard(HashMap<TcpClient, Player> _playerConnections) {
    super();
    playerConnections = _playerConnections;

    attackTicks = new int[]{0, 10, 20};
    attackNum = 0;
    r = new Random();
  }

  void update() {
    println("Updating hazard");
    if (millis() > attackTicks[attackNum]) {
      Object target = chooseNextTarget();
      //attackPlayer(target);
    }
  }

  Object chooseNextTarget() {
    int victimNum = r.nextInt(playerConnections.size());
    println("Player " + victimNum + " should be shitting his pants right now.");
    Object[] values = playerConnections.values().toArray();
    println(values.length);
    return values[r.nextInt(values.length)];
  }
}

class Hazard {
  int[] attackTicks; //in ms, when the "enemy" will attack
  int attackNum;
  HashMap<TcpClient, Player> playerConnections;
  Random r;

  int[] probabilityWeight;

  Hazard(HashMap<TcpClient, Player> _playerConnections) {
    playerConnections = playerConnections;

    attackTicks = new int[]{0, 10, 20};
    attackNum = 0;
    r = new Random();
    println("Hazard created");
  }

  void update() {
    println("updating");
    if (millis() > attackTicks[attackNum]) {
      Object target = chooseNextTarget();
      //attackPlayer(target);
    }
  }

  Object chooseNextTarget() {
    int victimNum = r.nextInt(playerConnections.size());
    println("Player " + victimNum + " should be shitting his pants right now.");
    Object[] values = playerConnections.values().toArray();
    return values[r.nextInt(values.length)];
  }
}

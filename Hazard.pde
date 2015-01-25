class Hazard {
  int[] attackTicks; //in ms, when the "enemy" will attack
  int attackNum;
  ArrayList<Player> players;

  int[] probabilityWeight;

  Hazard(ArrayList<Player> _players) {
    players = _players;

    attackTicks = new int[]{0, 10, 20};
    probabilityWeight = new int[_players.size()];
    attackNum = 0;
  }

  void update() {
    if (millis() > attackTicks[attackNum]) {
      //Player target = chooseNextTarget();
      //attackPlayer(target);
    }
  }

  void chooseNextTarget() {
    
  }
}

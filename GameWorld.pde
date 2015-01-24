class GameWorld extends World {
  ArrayList<Player> players;
  ArrayList<MassedBeing> massed;
  //PostOffice po;

  GameWorld (/*PostOffice _po, */HCamera cam) {
    super(po, cam);
    //po = _po;
    players = new ArrayList<Player>();
    massed = new ArrayList<MassedBeing>();
  }

  void setup() {
    //npcs = new NpcGroup(this);
    //npcs.generateNpc();
  }

  void loadMap (Map _map) {
    for(Rock r: _map.rocks) {
      register (r, false);
      massed.add (r);
    }
    for(Wall w: _map.walls) {
      register (w, false);
      massed.add (w);
    }
  }

  void addGameCollider (Entity entity) {
    for (Player p: players) {
      register (p, entity, new GameCollider ());
    }
  }

  void addPlayer (Player p) {
    players.add (p);
    register (p, true);

    for(MassedBeing m: massed) {
      register (p, m, new GameCollider ());
    }
  }
  
  void draw() {
    background(0);
    super.draw();
  }
}

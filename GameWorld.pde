class GameWorld extends World {
  ArrayList<Player> players;
  ArrayList<Rock> rocks;
  ArrayList<Wall> walls;
  ArrayList<Trap> traps;

  GameWorld (HCamera cam) {
    super(po, cam);
    players = new ArrayList<Player>();
    rocks = new ArrayList<Rock>();
    walls = new ArrayList<Wall>();
    traps = new ArrayList<Trap>();
  }

  void setup() {
    //npcs = new NpcGroup(this);
    //npcs.generateNpc();
  }

  void loadMap (Map _map) {
    for (Rock r: _map.rocks) {
      register (r, false);
      rocks.add (r);
    }
    for (Wall w: _map.walls) {
      register (w, false);
      walls.add (w);
    }
    for (Trap t: _map.traps) {
      register (t, false);
      traps.add (t);
    }
  }

  //void addGameCollider (MassedBeing mb) {
  //  for (Player p: players) {
  //    register (p, mb, new GameCollider ());
  //  }
  //}

  void addPlayer (Player p) {
    players.add (p);
    register (p, true);

    for (Rock r: rocks) {
      register (p, r, new GameCollider ());
    }
    for (Wall w: walls) {
      register (p, w, new WallCollider ());
    }
    for (Trap t: traps) {
      register (p, t, new TrapTrigger ());
    }
  }

  void draw () {
    background (0);
    super.draw ();
  }
}

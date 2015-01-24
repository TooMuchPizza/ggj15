class GameController {
  ArrayList<Player> players;
  GameWorld gameWorld;
  Hud hud;
  GameCamera gameCamera;

  GameController () {
    players = new ArrayList<Player>();
    Player p1 = new Player (150, 150);

    players.add (p1);

    hud = new Hud (p1);
    gameCamera = new GameCamera (p1, hud);

    po = new PostOffice ();

    gameWorld = new GameWorld (gameCamera);
    gameWorld.loadMap (new Map ()); 
    gameWorld.addPlayer(p1);

    for (Player p: players) {
      p.subscribe();
    }
  }
 
  void startGame () {
    gameWorld.start();
  }

  public void draw () {
    gameWorld.draw ();
    //hud.draw ();
  }
}

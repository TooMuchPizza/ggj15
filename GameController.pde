class GameController {
  ArrayList<Player> players;
  GameWorld gameWorld;
  Hud hud;
  GameCamera gameCamera;
  Hazard hazard;
  OscP5 oscP5;

  GameController() {
  }
 
  void loadGame() {
    po = new PostOffice();
    hazard = new Hazard();
  }

  public void update() {
    hazard.update();
  }

  void startGame() {
    if (isServer) {
      oscP5 = new OscP5(this,5001);
    } else {
        players = new ArrayList<Player>();
        Player p1 = new Player (150, 150);
    
        players.add(p1);
    
        hud = new Hud(p1);
        gameCamera = new GameCamera(p1, hud);
    
        gameWorld = new GameWorld(gameCamera);
        gameWorld.loadMap(new Map()); 
        gameWorld.addPlayer(p1);
    
        for (Player p: players) {
          p.subscribe();
        }
        gameWorld.start();
    }
  }
  
  void oscEvent(oscP5.OscMessage theOscMessage){
    
  } 

  public void draw() {
    gameWorld.draw();
  }
}

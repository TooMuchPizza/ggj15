class GameController {
  ArrayList<Player> players;
  HashMap<String, Player> playerConnections;
  GameWorld gameWorld;
  Hud hud;
  GameCamera gameCamera;
  Hazard hazard;
  OscP5 oscP5;
  Player p1;

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
    started = true;
    if (isServer) {
      oscP5 = new OscP5(this,5001);
      playerConnections = new HashMap<String, Player>();
    }

    players = new ArrayList<Player>();
    p1 = new Player (150, 150);
    
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
  
  void oscEvent(oscP5.OscMessage theOscMessage){
    if (isServer){
      String clientId = theOscMessage.netaddress().toString();
      if (theOscMessage.addrPattern().equals("join")){
        //check if number of player needed is reached or game is already started.
        if (!playerConnections.containsKey(clientId) && !started){
          playerConnections.put(clientId, new Player(0, 0)); //TODO
          oscP5.OscMessage myMessage = new oscP5.OscMessage("/joinack");
          oscP5.send(myMessage, theOscMessage.netaddress());
        }
      } else {
        if (started && playerConnections.containsKey(clientId)){
          Player playerToNotice = playerConnections.get(clientId);
          playerToNotice.messageFromClient(theOscMessage);
        }
      }
    }
    else{
      p1.messageFromServer(theOscMessage);
    }
  } 

  void draw() {
    gameWorld.draw();
  }
}

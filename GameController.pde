class GameController {
  ArrayList<Player> players;
  HashMap<TcpClient, Player> playerConnections;
  GameWorld gameWorld;
  Hud hud;
  GameCamera gameCamera;
  OscP5 oscP5;
  Player p1;

  Hazard hazard;

  GameController() {
    po = new PostOffice();
  }
 
  void startGame () {
    if (isServer) {
      oscP5 = new OscP5(this, 5002, OscP5.TCP);
      playerConnections = new HashMap<TcpClient, Player>();
      hazard = new Hazard(this);
    } else {
      players = new ArrayList<Player>();
      p1 = new Player (150, 150);
      players.add(p1);
      
      hud = new Hud(p1);
      gameCamera = new GameCamera(p1, hud);
      
      gameWorld = new GameWorld(gameCamera);
      gameWorld.loadMap(new Map()); 
      gameWorld.addPlayer(p1);
      
      for (Player p: players) p.subscribe();
      
      oscP5 = new OscP5(this, "127.0.0.1", 5002, OscP5.TCP); //TODO
      println("Client invia join al server");
      oscP5.OscMessage myMessage = new oscP5.OscMessage("/join");
      //myMessage.add(p1.getPosition().x);
      //myMessage.add(p1.getPosition().y);
      //oscP5.send(myMessage);
    }
  }
  
  void sendToPlayer(){
  }
  
  void sendToAllPlayers(oscP5.OscMessage myMessage){
    for (TcpClient p: playerConnections.keySet()) {
        oscP5.send(myMessage, p);
    }
  }

  void oscEvent(oscP5.OscMessage theOscMessage) {
    println("chiamata alla callback." + theOscMessage.addrPattern().toString());
    if (isServer) {
      if (theOscMessage.addrPattern().toString().equals("/join")) {
        //println(theOscMessage.get(0).stringValue());
        //check if number of player needed is reached or game is already started.
        if (!playerConnections.containsKey(theOscMessage.tcpConnection()) && !started){
          playerConnections.put(theOscMessage.tcpConnection(), new Player(0, 0)); //TODO
          println("Server ha aggiunto client alla lista players e invia joinack");
          oscP5.OscMessage myMessage = new oscP5.OscMessage("/joinack");
          oscP5.send(myMessage,theOscMessage.tcpConnection());
          if (playerConnections.keySet().size() == numberOfClients){
            started = true;
            hazard.start();
            myMessage = new oscP5.OscMessage("/startgame");
            myMessage.add(playerConnections.keySet().size());
            sendToAllPlayers(myMessage);
          }
        }
      } else {
        if (started && playerConnections.containsKey(theOscMessage.tcpConnection())) {
          Player playerToNotice = playerConnections.get(theOscMessage.tcpConnection());
          playerToNotice.messageFromClient(theOscMessage);
        }
      }
    }
    else {
      println("Client riceve messaggio dal server.");
      p1.messageFromServer(theOscMessage);
      if (theOscMessage.addrPattern().toString().equals("/startgame")) {
        started = true;
        gameWorld.start();
      }
      if (theOscMessage.addrPattern().toString().equals("/status")) {
        //println(theOscMessage.get(0).stringValue());
        //p.getPosition().x = theOscMessage.get(0).floatValue()
      }
    }
  } 

  public void draw () {
    if(isServer) {
      /*for (TcpClient pk: playerConnections.keySet()) {
        Player p = playerConnections.get(pk);
        oscP5.OscMessage myMessage = new oscP5.OscMessage("/status");
        myMessage.add(p.getPosition().x);
        myMessage.add(p.getPosition().y);
        myMessage.add(p.getVelocity().x);
        myMessage.add(p.getVelocity().y);
        oscP5.send(myMessage, pk);
      }*/
    } else {
      gameWorld.draw();
    }
  }
}

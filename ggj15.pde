import java.util.ArrayList;
import java.util.HashMap;
import hermes.*;
import hermes.hshape.*;
import hermes.animation.*;
import hermes.physics.*;
import hermes.postoffice.*;
import oscP5.*;
import netP5.*;

public final int HEALTH = 100;
static final int WINDOW_WIDTH = 1000;
static final int WINDOW_HEIGHT = 600;

static final int MAP_WIDTH = 2000;
static final int MAP_HEIGHT = 1000;
Boolean started = false;
Boolean isServer = false;
//int GAME_WIDTH = 600;
//int GAME_HEIGHT = 300;

PostOffice po; 
//NpcGroup npcs;
MainMenu mainMenu;
GameController gameController;

void setup() {
  size(WINDOW_WIDTH, WINDOW_HEIGHT);
  background(0); 
  Hermes.setPApplet(this);

  gameController = new GameController ();
  gameController.loadGame ();
  mainMenu = new MainMenu ();
}

void update () {
  gameController.update ();
}

void draw () {

  if(started){
     gameController.draw ();
  }else{
    mainMenu.draw();
  }

}

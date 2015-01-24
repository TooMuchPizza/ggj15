import hermes.*;
import hermes.hshape.*;
import hermes.animation.*;
import hermes.physics.*;
import hermes.postoffice.*;


static final int WINDOW_WIDTH = 800;
static final int WINDOW_HEIGHT = 600;

GameWorld world;
GameCamera cam;
PostOffice po; 

RockGroup rocks;
Player player;
NpcGroup npcs;


void setup() {
  size(WINDOW_WIDTH, WINDOW_HEIGHT);
  background(0); 
  Hermes.setPApplet(this);

  cam = new GameCamera();
  po = new PostOffice();
  world = new GameWorld();
  world.start();
}


void draw() {
  world.draw();
}

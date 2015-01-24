import hermes.*;
import hermes.hshape.*;
import hermes.animation.*;
import hermes.physics.*;
import hermes.postoffice.*;


<<<<<<< HEAD
static final int WINDOW_WIDTH = 800;
=======
static final int WINDOW_WIDTH = 1000;
>>>>>>> ef3b935e4bd74d5f87348582c5afddbed4db12cd
static final int WINDOW_HEIGHT = 600;

GameWorld world;
GameCamera cam;
PostOffice po; 


RockGroup rocks;
Player player;
Player player2;
NpcGroup npcs;
WallGroup walls;


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

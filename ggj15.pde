import hermes.*;
import hermes.hshape.*;
import hermes.animation.*;
import hermes.physics.*;
import hermes.postoffice.*;

static final int HEALTH = 100;
static final int WINDOW_WIDTH = 1000;
static final int WINDOW_HEIGHT = 600;

static final int MAP_WIDTH = 2000;
static final int MAP_HEIGHT = 600;


GameWorld world;
GameCamera cam;
PostOffice po; 


RockGroup rocks;
Player player;
Player player2;
NpcGroup npcs;
WallGroup walls;
Hud hud;

void setup() {
  size(WINDOW_WIDTH, WINDOW_HEIGHT);
  background(0); 
  Hermes.setPApplet(this);
  cam = new GameCamera();
  po = new PostOffice();
  world = new GameWorld();
  world.start();
  hud = new Hud();
}


void draw() {
  world.draw();
  hud.draw();
}

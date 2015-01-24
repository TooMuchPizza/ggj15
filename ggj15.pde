import hermes.*;
import hermes.hshape.*;
import hermes.animation.*;
import hermes.physics.*;
import hermes.postoffice.*;


static final int WINDOW_WIDTH = 600;
static final int WINDOW_HEIGHT = 600;

World world;
PostOffice po; 
Player player;


void setup() {
  size(WINDOW_WIDTH, WINDOW_HEIGHT);
  background(0); 
  Hermes.setPApplet(this);

  po = new PostOffice();
  world = new GameWorld();       

  world.start();
}


void draw() {
  world.draw();
}

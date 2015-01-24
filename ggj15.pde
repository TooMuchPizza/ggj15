import hermes.*;
import hermes.hshape.*;
import hermes.animation.*;
import hermes.physics.*;
import hermes.postoffice.*;


static final int WINDOW_WIDTH = 600;
static final int WINDOW_HEIGHT = 600;

World world;


void setup() {
  size(WINDOW_WIDTH, WINDOW_HEIGHT);
  background(0); 
  Hermes.setPApplet(this);

  world = new GameWorld();       

  world.start();
}


void draw() {
}

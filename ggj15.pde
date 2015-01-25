import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;
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

PostOffice po; 
MainMenu mainMenu;
GameController gameController;

int numberOfClients = 2;

void setup() {
  size(WINDOW_WIDTH, WINDOW_HEIGHT);
  background(0); 
  Hermes.setPApplet(this);

  mainMenu = new MainMenu();
  gameController = new GameController();
}

void draw() {
  if (started) {
    gameController.draw();
  } else mainMenu.draw();
}

void mousePressed() {
  mainMenu.mouseClick(mouseX, mouseY);
}

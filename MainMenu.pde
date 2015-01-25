PImage image;
class MainMenu {
  PFont font;
  boolean drawMenu;
  boolean drawGrayScreen;

  MainMenu() {
    font = loadFont("casa.vlw");
    drawMenu = true;
    drawGrayScreen = false;
image = loadImage("sfondo-DEFINITIVO.png");  
}
  

  void draw() {
    if(drawGrayScreen) {
      background(100);
    }
    else if (drawMenu) {
      //Draw the menu
      image(image,0,0,WINDOW_WIDTH,WINDOW_HEIGHT);
      textFont(font);
      textSize(90);
      fill(255);
      text("Create Server", width/2 - 117, 288);
      text("Join Server", width/2 - 94, 450);
    } else {
      background(100);
      textSize(90);
      text("Waiting Connections",200,500);
    }
  }

  void mouseClick(float x, float y) {
    if (!drawMenu) return;
      if (x > 366  && x < 633  && y > 253 && y < 318) {
        isServer = true;
        drawMenu = false;
        drawGrayScreen = true;
        gameController.startGame();
        //waitingStart = true;
      }
  
      if (x > 336  && x < 635  && y > 414  && y < 479 ) {
        isServer = false;
        drawMenu = false;
        drawGrayScreen = true;
        gameController.startGame();
        //waitingStart = true;
      }
  }
}

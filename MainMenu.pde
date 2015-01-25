class MainMenu {
  PFont font;
  boolean drawMenu;
  boolean drawGrayScreen;

  MainMenu() {
    font = loadFont("casa.vlw");
    drawMenu = true;
    drawGrayScreen = false;
  }

  void draw() {
    if(drawGrayScreen) {
      background(100);
    }
    else if (drawMenu) {
      //Draw the menu
      fill(0, 255, 255);
      
      smooth(8);
      textFont(font);      
      textSize(180);
      text("No One Left Behind", 125, 140);
      fill(255);

      fill(255);
      rect(width/2 - 165, 250, 300, 65);
      rect(width/2 - 165, 410, 300, 65);
      textSize(30);
      fill(0);
      text("Create Server", width/2 - 117, 288);
      text("Join Server", width/2 - 94, 450);
    }
  }

  void mouseClick(float x, float y) {
    if (started) return;
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

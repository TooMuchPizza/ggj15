
PFont font;
class MainMenu {

  void draw() {
    if(!waitingStart) {
      fill(0, 255, 255);
      
      font = loadFont("casa.vlw");
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
    } else {
      background(100);
    }
  }
}

void mousePressed() {
  if (!started) {
      if (mouseX >366  && mouseX < 633  && mouseY >253  && mouseY < 318) {
        isServer = true;
        gameController.startGame();
        waitingStart = true;
      }

      if (mouseX >336  && mouseX <635  && mouseY >414  && mouseY <479 ) {
        isServer = false;
        gameController.startGame();
        waitingStart = true;
      }
  } 
}


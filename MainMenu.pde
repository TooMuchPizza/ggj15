


class MainMenu {


  MainMenu()
  {
  } 
  void draw() {

    fill(0, 255, 255);
    textSize(80);
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
void mousePressed() {
  if (mouseX >366  && mouseX < 633  && mouseY >253  && mouseY < 318) {
isServer = true;
    gameController.draw();
    started = true;
    gameController.startGame();
  }

  if (mouseX >336  && mouseX <635  && mouseY >414  && mouseY <479 ) {
   isServer = false;
  }
  

  println(isServer);
  
  
  
  
  
}


class Hud{
  Hud() {   
  }
void draw(){
  textSize(20);
  String healthStr = str(playerhealth);
  fill(255,18,43);
  rect(((player.getPosition().x - WINDOW_WIDTH / 2) + 30),((player.getPosition().y - WINDOW_HEIGHT / 2) + 60),(playerhealth * 2),10);
  fill(255,255,255);
  text("Health",(player.getPosition().x - WINDOW_WIDTH / 2) + 30,(player.getPosition().y - WINDOW_HEIGHT / 2) + 50);
  
  if(playerhealth < 1){
   print("GAME OVER");
  }
  
}
}

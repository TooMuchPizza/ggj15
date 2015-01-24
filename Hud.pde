class Hud{
  Hud() {   
  }
void draw(){
  fill(0,255,0);
  textSize(32);
  text("Health",(player.getPosition().x - WINDOW_WIDTH / 2) + 30,(player.getPosition().y - WINDOW_HEIGHT / 2) + 100);
  }
}

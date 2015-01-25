
class JoinServer{
  TextField textFieldIp = new TextField("", 40);

color bg = color(33, 33, 33, 255);
  
 JoinServer(){
  
 } 
  void setup(){
    size(1000, 600);
  add(textFieldIp);
  background(bg);
    
  }
  
  void draw(){
    
  
  
   background(bg);
  textFieldIp.setLocation(400, 250);
  textFieldIp.setSize(400, 50);
  fill(255);
  textSize(35);

  text("IP Address: ", 170, 283);
  
  }

  
  
}

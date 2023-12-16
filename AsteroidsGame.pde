Star[] nightSky = new Star[200];
Spaceship spock = new Spaceship();
ArrayList<Asteroid> yurilowenthalgotrobbed = new ArrayList<Asteroid>();
ArrayList<Bullet> shots = new ArrayList<Bullet>();
public void setup(){
  size(500,500);
  spock.setX(250);
  spock.setY(250);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
  for(int i = 0; i < 25; i++){
    yurilowenthalgotrobbed.add(i, new Asteroid());
  }
}
public void draw(){
  background(0);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
  for(int i = 0; i < yurilowenthalgotrobbed.size(); i++){
    yurilowenthalgotrobbed.get(i).show();
    yurilowenthalgotrobbed.get(i).move();
  }
  for(int i = 0; i < yurilowenthalgotrobbed.size(); i++){
    if(dist(spock.getX(),spock.getY(),yurilowenthalgotrobbed.get(i).getX(),yurilowenthalgotrobbed.get(i).getY())<=25){
      yurilowenthalgotrobbed.remove(i);
    }
  }
  for(int i = 0; i < shots.size(); i++){
    shots.get(i).move();
    shots.get(i).show();
    if((shots.get(i).getCenterX() == 0 || shots.get(i).getCenterX() == 500)||(shots.get(i).getCenterY() == 0 || shots.get(i).getCenterY() == 500)){
      shots.remove(i);
    }
  }
   for(int n = 0; n < shots.size(); n++){
     for(int m = 0; m < yurilowenthalgotrobbed.size(); m++){
       if(dist((float)shots.get(n).getCenterX(),(float)shots.get(n).getCenterY(),yurilowenthalgotrobbed.get(m).getX(),yurilowenthalgotrobbed.get(m).getY())<=25){
      yurilowenthalgotrobbed.remove(m);
      shots.remove(n);
      break;
     }
    }
   }
  spock.move();
  spock.show();
}

public void keyPressed(){
  if(key == 'a' || key == 'A'){
    spock.turn(-10);
  }
  if(key == 'd' || key == 'D'){
    spock.turn(10);
  }
  if(key == 'w' || key == 'W'){
    spock.accelerate(1);
  }
  if(key == 's' || key == 'S'){
    spock.accelerate(-1);
  }
  //hyperspace
  if(key == 'h' || key == 'H'){
    spock.myXspeed = 0;
    spock.myYspeed = 0;
    spock.setX((int)(Math.random()*500));
    spock.setY((int)(Math.random()*500));
    spock.setPointDirection((int)(Math.random()*360));
  }
  //bullets
  if(key == 'f' || key == 'F'){
    shots.add(new Bullet(spock)); 
  }
}

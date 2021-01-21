int t;
Main m;
String msg;
PFont font;
void setup(){
  size(640, 480);
  frameRate(60);
  colorMode(RGB);
  t = 0;
  m = new Main();
  msg = "WAVE";
  font = loadFont("Arial-BoldMT-90.vlw");
}

void draw(){
  t++;
  m.setTime(t);
  m.Update();
  background(50);
  m.Draw();
  textAlign(CENTER, CENTER);
  textFont(font);
  fill(50);
  text(msg, width/2, height/2);
}
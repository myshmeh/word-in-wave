class Bar{
  float x, y;
  float len, thick;
  float angle;
  color c;
  
  public Bar(float x_, float y_, color c_){
    x = x_;
    y = y_;
    len = DEF.LEN;
    thick = DEF.THICK;
    angle = 0;
    c = c_;
  }
  
  public void Update(float a){
    angle = a;
    //len = sin(radians(angle)) * DEF.LEN;
  }
  
  public void Draw(){
    fill(c);
    //stroke(50);
    noStroke();
    rect(x, y, len, thick);
  }
  
  public void setLen(float val){
    len = val;
  }
  public float getAngleRadianed(){
    return radians(angle);
  }
}

static class DEF{
  static final int BAR_NUM = 40;
  static final float LEN = 680/2;
  static final float THICK = 480/BAR_NUM;
}
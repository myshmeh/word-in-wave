class Main{
  int t;
  Bar[] b = new Bar[DEF.BAR_NUM];
  Bar[] br = new Bar[DEF.BAR_NUM];
  public Main(){
    for(int i=0; i<b.length; i++)
      b[i] = new Bar(width/2, i*DEF.THICK, color(125, 220, 230));
      
    for(int i=0; i<b.length; i++)
      br[i] = new Bar(width/2, height-(i+1)*DEF.THICK, color(125, 220, 230));
  }
  
  public void Update(){
    float speed = t;
    for(int i=0; i<b.length; i++){
      b[i].Update(speed);
      b[i].setLen(pow(sin(b[i].getAngleRadianed()), (i+1)) * DEF.LEN);
    }
    
    for(int i=0; i<b.length; i++){
      br[i].Update(speed);
      br[i].setLen(pow(sin(br[i].getAngleRadianed()), (i+1)) * DEF.LEN * -1);
    }
  }
  
  public void Draw(){
    for(int i=0; i<b.length; i++)
      b[i].Draw();
      
    for(int i=0; i<b.length; i++)
      br[i].Draw();
  }
  
  public void setTime(int val){
    t = val;
  }
}
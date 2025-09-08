//week01_3_KeyPressed_keyCode_LEFT_RIGHT
void setup(){
  size(500,500);
}
int x = 200,y = 250;
void draw(){
  background(#FFFFAA);
  rect(x,y,100,50);
  if(keyPressed && keyCode==LEFT) x-=3;
  if(keyPressed && keyCode==RIGHT) x+=3;
}//使用方向鍵移動方塊

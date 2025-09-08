//week01_4_void_KeyPressed_void_keyReleased
void setup(){
  size(500,500);
}
int x = 200,y = 250,dx= 0,dy = 0;
void draw(){
  background(#FFFFAA);
  rect(x,y,100,50);
  //if(keyPressed && keyCode==LEFT) x-=3;
  //if(keyPressed && keyCode==RIGHT) x+=3;
  //if(keyPressed && keyCode==UP) y-=3;
  //if(keyPressed && keyCode==DOWN) y+=3;
  //無法斜著走(同時按兩個鍵) =>改進他
  x += dx;
  y += dy;
}//使用方向鍵移動方塊
void keyPressed(){//當按下按鍵,執行
  if(keyCode==LEFT) dx = -3;
  if(keyCode==RIGHT) dx = +3;
  if(keyCode==UP) dy = -3;
  if(keyCode==DOWN) dy = +3;
}
void keyReleased(){//當放開按鍵,執行歸零
  if(keyCode==LEFT) dx = 0;
  if(keyCode==RIGHT) dx = 0;
  if(keyCode==UP) dy = 0;
  if(keyCode==DOWN) dy = 0;
}

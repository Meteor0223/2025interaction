//week01_5_mosuePressed_mouseX_pmouseX_mouseY_pmouseY
//結合 mouse 和 keyboard
void setup(){
  size(500,500);
}
int x = 200,y = 250,dx= 0,dy = 0;
void draw(){
  background(#FFFFAA);
  rect(x,y,100,50);
  if(mousePressed){//不管有沒有按到rect四邊形,都能移動
    x += mouseX - pmouseX;
    y += mouseY - pmouseY;
  }
}//按著滑鼠移動方塊

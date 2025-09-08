//week01_6_if_mousePressed_mouseX_mouseY
//結合 mouse 和 keyboard
void setup(){
  size(500,500);
}
int x = 200,y = 250,dx= 0,dy = 0;
void draw(){
  background(#FFFFAA);
  rect(x,y,100,50);
  if(mousePressed && x < mouseX && mouseX < x + 100 && y < mouseY && mouseY < y+50){
    x += mouseX - pmouseX;
    y += mouseY - pmouseY;
  }
}//按著滑鼠移動方塊

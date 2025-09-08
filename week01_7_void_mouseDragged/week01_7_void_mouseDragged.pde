//week01_7_void_mouseDragged
//一直偵測
void setup(){
  size(500,500);
}
int x = 200,y = 250,dx= 0,dy = 0;
void draw(){
  background(#FFFFAA);
  rect(x,y,100,50);
}//按著滑鼠移動方塊
void mouseDragged(){
  if(mousePressed && x < mouseX && mouseX < x + 100 && y < mouseY && mouseY < y+50){
    x += mouseX - pmouseX;
    y += mouseY - pmouseY;
  }
}

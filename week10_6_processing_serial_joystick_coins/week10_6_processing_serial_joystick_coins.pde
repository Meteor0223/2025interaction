//week10_6_processing_serial_joystick_coins
import processing.serial.*;
Serial myPort;
void setup(){
  size(500,500);
  rectMode(CENTER);//四邊形的正中心,當成座標
  myPort = new Serial(this,"COM5",9600);
}
int x =250,y=400,now;
float dx=0;
void draw(){
  background(#FFFFA0);
  rect(x,y,100,20);//顯示位置
  if(myPort.available()>0){
    now = myPort.read();//0~255
    dx =(now-127)/10.0;//-128~+127
    if(abs(dx)<0.21)dx=0;//因有殘值 太小就設0
    println(dx);
  }
  x+=dx;
}

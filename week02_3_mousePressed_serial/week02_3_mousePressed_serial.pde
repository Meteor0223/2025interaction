//week02_3_mousePressed_serial
import processing.serial.*;//第一行,使用USB的serial
Serial myPort; //第二行,宣告USB 的 Serial 變數 myPort
void mousePressed(){
  myPort.write(' ');//第四行,mouse按下去時就送' '出去
}
void setup(){
 size(400,400);
 myPort = new Serial(this,"COM4",9600);//第三行,準備好USB
}
void draw(){
  if(mousePressed) background(#FF0000);
  else background(#00FF00);
}

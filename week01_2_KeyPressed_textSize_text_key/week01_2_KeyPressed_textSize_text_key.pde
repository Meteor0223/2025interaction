//File-New(Ctrl-N)
//week01_2_KeyPressed_textSize_text_key
void setup(){
  size(500,500);
}
void draw(){
  if(keyPressed){//記得切英文輸入法
    background(#FF0000);//紅色背景
    textSize(80);//很大的字型
    text(""+key,100,100);
  }
}

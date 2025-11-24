import processing.serial.*;
Serial myPort;
void setup(){
  size(600,600);
  myPort = new Serial(this,"COM5",9600);
  for(int i=0;i<N;i++){
    p[i]=new PVector(200,350-L*i);
  }
}
int N=20,L=300/N;//本來6點距離50
int x,y,px=300,py=300,dicx=0,dicy=0;
PVector [] p= new PVector[N];//有5個頂點
void draw(){
  
  background(255);
  if(myPort.available()>0){
    x=myPort.read();
    y=myPort.read();
    if(x>240||x<20){
      if(py+dicy*10>0 && py+dicy*10<=590)py+=dicy*10;
    }
    else dicy=0;
    if(y>240||y<20){
      if(px+dicx*10>0 && px+dicx*10<=590)px+=dicx*10;
    }
    else dicx=0;
    if(x>240)dicy=-1;
    if(x<20)dicy=1;
    if(y>240)dicx=1;
    if(y<20)dicx=-1;
    
   // if(px+dicx*10<=15 && px+dicx*10>=590) px=500;//不超過最外面的牆
   // if(py+dicx*10<=15 && py+dicx*10>=590) py=500;
    println(x+" "+y+" "+px+" "+py);
  }
  while(px+dicx*10<=15 && px+dicx*10>=590)px=500;
  while(py+dicx*10<=15 && py+dicx*10>=590)py=500;
  for(int i=0;i<N;i++){//用迴圈畫點畫線
    fill(0,150,0);//紅色圈
    ellipse(p[i].x,p[i].y,20,20);
    fill(0);//黑色字
  }
  p[N-1].x=px;
  p[N-1].y=py;
  for(int i=N-2;i>=0;i--){
    PVector v =PVector.sub(p[i+1],p[i]).normalize().mult(L);//短向量
    //因為長度限制為L,所以長向量先長度變成1在乘上L
    p[i].x=p[i+1].x-v.x;//新位置是中心在減L
    p[i].y=p[i+1].y-v.y;
  }
  for(int i=1;i<N;i++){
    PVector v =PVector.sub(p[i],p[i-1]).normalize().mult(L);//短向量
    p[i].x=p[i-1].x+v.x;//新位置是中心在加L
    p[i].y=p[i-1].y+v.y;
  }
  ellipse(px+dicx*3,py+dicy*3,6,6);//滑鼠也有個小點要控制座標移動
}

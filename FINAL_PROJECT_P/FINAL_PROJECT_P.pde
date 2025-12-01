import processing.serial.*;
Serial myPort;
PVector[] points = new PVector[20];
void setup() {
  size(600, 600);
  myPort = new Serial(this, "COM5", 9600);
  for (int i = 0; i < points.length; i++) {
    float x = random(30, width-30);
    float y = random(30, height-30);
    points[i] = new PVector(x, y);
  }

  p = new PVector[0];  // 一開始是 0，之後會動態增加

  
}
boolean [] point_eaten = new boolean[20];
int N = 2;        // 目前節數（會變）
int L = 15;        // 你原本是 300/20 = 15，建議直接寫死 15，比較好控制
PVector[] p;       // 不再寫死大小

int x, y;
int px = 300, py = 300;
int dicx = 0, dicy = 0;
boolean wasAddingSegment = false;  // 避免重複增加
boolean nowAdding=false ; 
void draw() {
  background(255);
// 建立初始的鏈條（全部疊在中心）
  for (int i = 0; i < N; i++) {
    p = (PVector[]) append(p, new PVector(300+15*i, 300));
  }
  if (myPort.available() >= 2) {
    x = myPort.read();
    y = myPort.read();
   
    dicx = 0; 
    dicy = 0;
    if (x > 240)dicy = -1;
    if (x < 20)dicy =  1;
    if (y > 240)dicx =  1;
    if (y < 20)dicx = -1;
    if (px + dicx*10 > 10 && px + dicx*10 < 590) px += dicx*10;//不超過最外面的牆
    if (py + dicy*10 > 10 && py + dicy*10 < 590) py += dicy*10;

    if (nowAdding && !wasAddingSegment) {
      p = (PVector[]) append(p, new PVector(p[N-1].x, p[N-1].y));
      N++;                
      println("增加一節！現在總長度 = " + N);
    }
    wasAddingSegment = nowAdding;  // 記住這一幀有沒有在加（避免連續加很多節）
    nowAdding=false ;
  }


  p[N-1].x = px;
  p[N-1].y = py;

  
  for (int i = N-2; i >= 0; i--) {
    PVector v = PVector.sub(p[i+1], p[i]).setMag(L);
    p[i] = PVector.sub(p[i+1], v);
  }

  for (int i = 0; i < N; i++) {
    fill(0, 150, 0);
    ellipse(p[i].x, p[i].y, 20, 20);
  }
  fill(0);
  ellipse(px+dicx*3,py+dicy*3,6,6);
  
  //dist(px,py,b.x,b.y)<15
  for (int i=0;i<20;i++) {
    if (dist(px,py,points[i].x,points[i].y)<15) {
        point_eaten[i] =true;
        nowAdding=true;
    }
  }
  for (int i=0;i<20;i++) {
    if (point_eaten[i] ==false) {
        fill(0, 100, 255);
        ellipse(points[i].x,points[i].y, 16, 16);
    }
  }
}

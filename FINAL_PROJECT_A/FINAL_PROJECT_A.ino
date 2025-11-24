void setup() {
  Serial.begin(9600);//開USB傳輸
  pinMode(2,INPUT_PULLUP);
  pinMode(8,OUTPUT);
}
int count =0,totalX=0,totalY = 0;//計算平均值
int x0=512,y0=512;
void loop() {
  delay(100);//慢點讓Processing有時間處理
  int x = analogRead(A2);//把搖桿的X接到A2
  int y = analogRead(A3);//把搖桿的Y接到A3
  
  Serial.write(x/4);
  Serial.write(y/4);
  
}
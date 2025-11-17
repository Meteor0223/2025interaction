//week11_1_arduino_serial_joystick_x_y_to_porcessing_better
//修改自week10_7_arduino_serial_joystick_x_y_to_porcessing
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
  if(count<20){//收集20筆資料計算平均值
    totalX += x;
    totalY += y;
    count++;
    x0 =totalX/count;
    y0 =totalY/count;
  }
  //Serial.write(x/4);
  //Serial.write(y/4);
  if(abs(x-x0)<25) x=128;
  else x=(x-x0)/4.4 +128;
  if(abs(y-y0)<25) y=128;
  else y=(y-y0)/4.4 +128;
  Serial.write(x);
  Serial.write(y);
}
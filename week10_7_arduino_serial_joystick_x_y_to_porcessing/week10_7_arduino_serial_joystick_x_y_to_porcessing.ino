//week10_7_arduino_serial_joystick_x_y_to_porcessing
//修改自week10_5_arduino_serial_joystick_control_board
//但不使用Serial.println()改用serial.write() 0-1023 vs. 0-255 差四倍
void setup() {
  Serial.begin(9600);//開USB傳輸
  pinMode(2,INPUT_PULLUP);
  pinMode(8,OUTPUT);
}

void loop() {
  delay(100);//慢點讓Processing有時間處理
  int x = analogRead(A2);//把搖桿的X接到A2
  int y = analogRead(A3);//把搖桿的Y接到A3
  Serial.write(x/4);
  Serial.write(y/4);
  if(x>900)tone(8,784,100);
  if(x<100)tone(8,523,100);
  if(y>900)tone(8,659,100);
  if(y<100)tone(8,500,100);
  
}

//week10_5_arduino_serial_joystick_control_board
//修改自week10_4_arduino_serial_joystick_control_board
//但不使用Serial.println()改用serial.write() 0-1023 vs. 0-255 差四倍
void setup() {
  Serial.begin(9600);//開USB傳輸
  pinMode(2,INPUT_PULLUP);
  pinMode(8,OUTPUT);
}

void loop() {
  delay(100);//慢點讓Processing有時間處理
  int now = analogRead(A3)/4;//小心,要除以4,才能用serial.write()
  Serial.write(now);//把0-255的數值送出去
  if(now>200)tone(8,784,100);
  else if(now<20)tone(8,523,100);
}

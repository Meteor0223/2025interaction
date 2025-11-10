//week10_4_arduino_serial_joystick_control_board
//修改自week10_3_arduino_analogRead_A3
void setup() {
  Serial.begin(9600);//開USB傳輸
  pinMode(2,INPUT_PULLUP);
  pinMode(8,OUTPUT);
}

void loop() {
  delay(100);//慢點讓Processing有時間處理
  int now = analogRead(A3);
  Serial.println(now);
  if(now>800){
    tone(8,523,100);
    delay(100);
    tone(8,784,100);
    delay(200);
  }else if(now<200){
    tone(8,784,100);
    delay(100);
    tone(8,523,100);
    delay(200);
  }
}

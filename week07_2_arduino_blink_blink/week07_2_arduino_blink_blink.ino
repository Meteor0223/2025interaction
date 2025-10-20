//week07_2_arduino_blink_blink
void setup() {
  pinMode(13,OUTPUT);//把第13支腳,能送出資料 OUTPUT
  pinMode(12,OUTPUT);//把第13支腳,能送出資料 OUTPUT
}

void loop() {
  digitalWrite(12,LOW);//暗
  digitalWrite(13,HIGH);//亮
  delay(500);
  digitalWrite(13,LOW);//暗
  digitalWrite(12,HIGH);//亮
  delay(500);
}

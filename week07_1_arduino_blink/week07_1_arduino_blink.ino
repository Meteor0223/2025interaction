//week07_1_arduino_blink
void setup() {
  pinMode(13,OUTPUT);//把第13支腳,能送出資料 OUTPUT
}

void loop() {
  digitalWrite(13,HIGH);//亮
  delay(500);
  digitalWrite(13,LOW);//暗
  delay(500);

}

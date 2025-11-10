//week10_2_arduino_pin2_switch_tone_8_523_784_delay100
void setup() {
  pinMode(2,INPUT_PULLUP);
//pin2 變按鈕,可以HIGH(沒按)LOW沒按
}

void loop() {
  if(digitalRead(2)==LOW){
    tone(8,523,100);
    delay(100);
    tone(8,784,100);
    delay(100);
  }
}

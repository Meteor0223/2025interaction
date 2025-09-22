//week03_3_void_loop_tonr_delay
void setup() {
  pinMode(8,OUTPUT);//負責發聲音
  tone(8,800,200);
  delay(1000);
  
}

void loop() {
  tone(8,800,200);
  delay(1000);
}

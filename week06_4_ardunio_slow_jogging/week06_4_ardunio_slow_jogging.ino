//week06_4_ardunio_slow_jogging
void setup() {
  pinMode(8,OUTPUT);

}

void loop() {
  tone(8,780,60);
  delay(300);
  tone(8,320,60);
  delay(300);
}

//week07_4_arduino_analogWrite
void setup() {
  pinMode(11,OUTPUT);
}
int a = 0;
void loop() {
  analogWrite(11,a);
  a = (a+1)%256;
  delay(10);
}

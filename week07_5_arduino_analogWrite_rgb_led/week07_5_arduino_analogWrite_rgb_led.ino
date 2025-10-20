//week07_5_arduino_analogWrite_rgb_led
void setup() {
  //RGB LED 最長的接GND
  pinMode(3,OUTPUT);//接最左邊紅色
  pinMode(6,OUTPUT);//藍色(GND旁)
  pinMode(5,OUTPUT);//綠色
  pinMode(11,OUTPUT);
}
int a = 0;
void loop() {
  analogWrite(6,0);//藍色關掉
  analogWrite(3,255);//最亮的紅色
  delay(500);
  analogWrite(3,0);//紅色關掉
  analogWrite(5,255);//最亮的綠色
  delay(500);
  analogWrite(5,0);//綠色關掉
  analogWrite(6,255);//最亮的藍色
  delay(500);
}

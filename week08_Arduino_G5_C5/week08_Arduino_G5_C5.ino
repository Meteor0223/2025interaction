//week08_Arduino_G5_C5
void setup() {
  Serial.begin(9600);//設定USB傳輸速度
  pinMode(8,OUTPUT);
  tone(8,784,100);//So
  delay(100);
  tone(8,523,100);//Do
  delay(100);
}
void serialEvent(){
  while(Serial.available()){
    char now = Serial.read();
    if(now=='R'){
      tone(8,784,100);//So
      delay(100);
      tone(8,523,100);//Do
      delay(100);
    }
    else{
      tone(8,523,100);//Do
      delay(100);
      tone(8,784,100);//So
      delay(100);
    }
  }
}
void loop() {
  
}
 
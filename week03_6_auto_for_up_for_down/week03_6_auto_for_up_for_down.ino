//week03_6_auto_for_up_for_down
void setup() {
  for(int i=3;i<=13;i++){//把pin 4~13都設成OUTPUT
    pinMode(i,OUTPUT);//都是可以亮的
  }
}

void loop() {
  for(int i=3; i<=13;i++){
    for(int k=3; k<=13;k++)digitalWrite(k,LOW);
    digitalWrite(i,HIGH);//輪到pin會亮
    delay(200);
  }
  for(int i=13; i>=3;i--){
    for(int k=3; k<=13;k++)digitalWrite(k,LOW);
    digitalWrite(i,HIGH);
    delay(200);
  }
}
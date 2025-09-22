//week03_5_pin2_BUTTON_digitalRead_digitalWright
//手動按按鈕,看燈的改變
void setup() {
  pinMode(2,INPUT_PULLUP);//按鈕Button 是 2 號,沒接下去,就會拉高
  for(int i=3;i<=13;i++){//把pin 4~13都設成OUTPUT
    pinMode(i,OUTPUT);//都是可以亮的
  }
}
int now =3;//現在pin 3發亮
void loop() {
  if(digitalRead(2)==LOW){//按下去
    now = now + 1;
    if(now>13) now =3;
    for(int i=3; i<=13;i++){
      digitalWrite(i,LOW);//全部清空
    }
    digitalWrite(now,HIGH);//now 亮
    delay(500);//休息一下
  }
}
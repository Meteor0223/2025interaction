//week03_8_arduina_beep_beep_Serial_reed
void setup() {
  Serial.begin(9600);//設定USB傳輸速度
  pinMode(8,OUTPUT);//8 要會發聲
}
int beep = 1;//一開始會叫
void serialEvent(){//等USB事件
  while(Serial.available()){//若有資料
    char now = Serial.read();
    if(now==' ')beep=0;//空白字母,不叫
    if(now=='b')beep=1;//字母'b',叫
  }
}

void loop() {
  if(beep==1){//一開始會倒數計時
    tone(8,800,200);
    delay(1000);
  }
}
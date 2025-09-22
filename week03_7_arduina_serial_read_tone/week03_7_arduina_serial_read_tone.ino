//week03_7_arduina_serial_read_tone
void setup() {
  Serial.begin(9600);//設定USB傳輸速度
  pinMode(8,OUTPUT);//8 要會發聲
}

void serialEvent(){//等USB事件
  while(Serial.available()){//若有資料
    Serial.read();
    tone(8,800,200);
  }

}
void loop() {
  
}
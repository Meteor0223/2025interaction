//week06_2_Example_Analyze_AudioWaveform
//使用 Waveform的物件變數分析音樂
import processing.sound.*;
SoundFile sample;
Waveform waveform;
int samples = 100;//一次讀入多少sample:100個sample

public void setup() {
  size(640, 360);

  sample = new SoundFile(this, "beat.aiff");
  sample.loop();//循環播放

  waveform = new Waveform(this, samples);//想用100格,來分析音樂
  waveform.input(sample);//用剛剛的音樂檔
}

public void draw() {
  // Set background color, noFill and stroke style
  background(0);
  stroke(255);
  strokeWeight(2);
  noFill();

  waveform.analyze();//進行波型分析
  
  beginShape();
  for(int i = 0; i < samples; i++){//把100格座標算出來
    // Draw current data of the waveform
    // Each sample in the data array is between -1 and +1 
    vertex(
      map(i, 0, samples, 0, width),//x座標對應0,1,2......,100的值,拉長至視窗長度 640
      map(waveform.data[i], -1, 1, 0, height)//y座標,就是waveform.data[i]的值
    );
  }
  endShape();
}

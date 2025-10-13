//week06_1_sound_library_SoundFile_play
//Sketch=Library-ManageLivraries,找Sound 安裝
//File-Examples-Libraries核心函式庫-Sound-soundfile-SimplePlayback
import processing.sound.*;//使用聲音外掛模組
SoundFile sound;//宣告 SoundFile 物件變數
void setup(){
  size(500,400);
  sound = new SoundFile(this,"music.mp3");
  sound.play();
}
void draw(){

}

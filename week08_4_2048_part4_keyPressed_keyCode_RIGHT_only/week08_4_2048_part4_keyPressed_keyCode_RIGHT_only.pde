//week08_4_2048_part4_keyPressed_keyCode_RIGHT_only
//(1)按方向鍵,板子移動
color [] c ={#CEC2B9,#EFE5DA,#EDE1CA,#EFB37E,#EF7F63,#EF7F63,#F76543};//色彩
color [] c2 ={#776E66,#776E66,#776E66,#FDF8F5,#FDF8F5,#FDF8F5,#FDF8F5};//字色
int [] N ={0,2,4,8,16,32,64};//對應數字
int [][] B = {{0,0,0,0},{1,2,3,4},{5,0,0,0},{0,0,0,0}};//板子
void keyPressed(){
  if(keyCode==RIGHT){
    for(int i=0;i<4;i++){
      int now = 3;
      for(int j=3;j>0;j--){
        if(B[i][j]>0){
          B[i][now]=B[i][j];
          now--;
        }
      }
      for(int j=now;j>=0;j--){
        B[i][j]=0;
      }
    }
  }
  genTwo();
}
void genTwo(){//找出0 挑一個變成空白
  int zero = 0;//找有幾個0
  for(int i=0;i<4;i++){  
    for(int j=0;j<4;j++){
      if(B[i][j]==0)zero++;//找到0的板子
    }
  }
  int ans = int(random(zero));//ex.有10格,找到0...9格
  for(int i=0;i<4;i++){  
    for(int j=0;j<4;j++){
      if(B[i][j]==0){
        if(ans==0){
          B[i][j]=1;//2的1次方,是2
          return;//結束
        }else ans --;//倒數用掉1個,慢慢找到是哪格
      }
    }
  }
}
void setup(){
  size(410,410);
}
void draw(){
  background(188,174,162);
  for(int i=0;i<4;i++){  
    for(int j=0;j<4;j++){
      int id = B[i][j];//對應代碼
      fill(c[id]);//fill(206,194,185);
      noStroke();
      rect(j*100+10,i*100+10,90,90,5);
      fill(c2[id]);
      textAlign(CENTER,CENTER);
      textSize(60);
      text(N[id],j*100+55,i*100+55);
    }
  }
}

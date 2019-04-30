class Bass
{
  float xPos;
  float yPos;
  PImage bass;
  PImage showbassw;
  
  Bass()
  {
    xPos = 280;
    yPos = 530;
  }
  
  void BassSounds()
  {
  // load bass hit sounds

  // load left kick sounds
  lkicks [0] = lkick.loadSample("kick_OH_F_1.mp3");
  lkicks [1] = lkick.loadSample("kick_OH_F_2.mp3");
  lkicks [2] = lkick.loadSample("kick_OH_F_3.mp3");
  lkicks [3] = lkick.loadSample("kick_OH_F_4.mp3");
  lkicks [4] = lkick.loadSample("kick_OH_F_5.mp3");
  lkicks [5] = lkick.loadSample("kick_OH_F_6.mp3");
  lkicks [6] = lkick.loadSample("kick_OH_F_7.mp3");
  lkicks [7] = lkick.loadSample("kick_OH_F_8.mp3");
  lkicks [8] = lkick.loadSample("kick_OH_F_9.mp3");
  lkicks [9] = lkick.loadSample("kick_OH_F_10.mp3");
  lkicks [10] = lkick.loadSample("kick_OH_F_11.mp3");
  // load right kick sounds
  rkicks [0] = rkick.loadSample("kick2_OH_F_1.mp3");
  rkicks [1] = rkick.loadSample("kick2_OH_F_2.mp3");
  rkicks [2] = rkick.loadSample("kick2_OH_F_3.mp3");
  rkicks [3] = rkick.loadSample("kick2_OH_F_4.mp3");
  rkicks [4] = rkick.loadSample("kick2_OH_F_5.mp3");
  rkicks [5] = rkick.loadSample("kick2_OH_F_6.mp3");
  rkicks [6] = rkick.loadSample("kick2_OH_F_7.mp3");
  rkicks [7] = rkick.loadSample("kick2_OH_F_8.mp3");
  rkicks [8] = rkick.loadSample("kick2_OH_F_9.mp3");
  rkicks [9] = rkick.loadSample("kick2_OH_F_10.mp3");
  rkicks [10] = rkick.loadSample("kick2_OH_F_11.mp3");
  }
  
  void drawBass()
  {
    // draw the bass drum
    bass = loadImage("bass.png");
    image(bass, xPos, yPos);
  }
  
  void drawBassWhite()
  {
    // draw bass drum white
    showbassw = loadImage("bass_white.png");
    image(showbassw, 280, 530);
  }
}
  
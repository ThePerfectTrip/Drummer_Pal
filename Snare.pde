class Snare
{
  float xPos;
  float yPos;
  PImage snare;
  PImage showsnarew;
  
  Snare()
  {
    xPos = 260;
    yPos = 530;
  }
  
  void SnareSounds()
  {
  // load snare hit sounds
  snarehits [0] = snarehitting.loadSample("snare_OH_F_1.mp3");
  snarehits [1] = snarehitting.loadSample("snare_OH_F_2.mp3");
  snarehits [2] = snarehitting.loadSample("snare_OH_F_3.mp3");
  snarehits [3] = snarehitting.loadSample("snare_OH_F_4.mp3");
  snarehits [4] = snarehitting.loadSample("snare_OH_F_5.mp3");
  snarehits [5] = snarehitting.loadSample("snare_OH_F_6.mp3");
  snarehits [6] = snarehitting.loadSample("snare_OH_F_7.mp3");
  snarehits [7] = snarehitting.loadSample("snare_OH_F_8.mp3");
  snarehits [8] = snarehitting.loadSample("snare_OH_F_9.mp3");
  snarehits [9] = snarehitting.loadSample("snare_OH_F_10.mp3");
  snarehits [10] = snarehitting.loadSample("snare_OH_F_11.mp3");
  snarehits [11] = snarehitting.loadSample("snare_OH_F_12.mp3");
  }
  
  void drawSnare()
  {
    // draw the snare
    snare = loadImage("snare.png");
    image(snare, xPos, yPos);
  }
  
  void drawSnareWhite()
  {
    // draw snare white
    showsnarew = loadImage("snare_white.png");
    image(showsnarew, 260, 530);
  }
}
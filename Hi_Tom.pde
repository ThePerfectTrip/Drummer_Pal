class Hi_Tom
{
  float xPos;
  float yPos;
  PImage hi_tom;
  PImage showhitomw;
  
  Hi_Tom()
  {
    xPos = 290;
    yPos = 465;
  }
  
  void Hi_Tom_Sounds()
  {
  // load hi tom hit sounds
  hi_tom_hits [0] = hitomhit.loadSample("High_Tom.mp3");
  hi_tom_hits [1] = hitomhit.loadSample("High2_Tom.mp3");
  }
  
  void drawHi_Tom()
  {
    // draw the hi tom
    hi_tom = loadImage("hi_tom.png");
    image(hi_tom, xPos, yPos);
  }
  
  void drawHi_Tom_White()
  {
    // draw hi tom white
    showhitomw = loadImage("hi_tom_white.png");
    image(showhitomw, 290, 465);
  }
}
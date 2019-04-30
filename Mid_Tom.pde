class Mid_Tom
{
  float xPos;
  float yPos;
  PImage mid_tom;
  PImage showmidtomw;
  
  Mid_Tom()
  {
    xPos = 378;
    yPos = 462;
  }
  
  void Mid_Tom_Sounds()
  {
  // load mid tom hit sounds
  mid_tom_hits [0] = midtomhit.loadSample("Mid_Tom.mp3");
  mid_tom_hits [1] = midtomhit.loadSample("Mid2_Tom.mp3");
  }
  
  void drawMid_Tom()
  {
    // draw the mid tom
    mid_tom = loadImage("mid_tom.png");
    image(mid_tom, xPos, yPos);
  }
  
  void drawMid_Tom_White()
  {
    // draw the white mid tom
    showmidtomw = loadImage("mid_tom_white.png");
    image(showmidtomw, 378, 462);
  }
}
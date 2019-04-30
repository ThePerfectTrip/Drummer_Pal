class Floor_Tom
{
  float xPos;
  float yPos;
  PImage floor_tom;
  PImage showfloortomw;
  
  Floor_Tom()
  {
    xPos = 415;
    yPos = 535;
  }
  
  void Floor_Tom_Sounds()
  {
  // load floor tom hit sounds
  floor_tom_hits [0] = floortomhit.loadSample("Floor_Tom.mp3");
  floor_tom_hits [1] = floortomhit.loadSample("Floor2_Tom.mp3");
  }
  
  void drawFloor_Tom()
  {
    // draw the floor tom
    floor_tom = loadImage("floor_tom.png");
    image(floor_tom, xPos, yPos);
  }
  
  void drawFloor_Tom_White()
  {
    // draw floor tom white
    showfloortomw = loadImage("floor_tom_white.png");
    image(showfloortomw, 415, 535);
  }
}
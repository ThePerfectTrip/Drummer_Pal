class Crash
{
  float xPos;
  float yPos;
  PImage crash;
  PImage crashhit;
  PImage crash_hidden;
  
  Crash()
  {
    xPos = 190;
    yPos = 395;
  }
  
  void CrashSounds()
  {
  // load crash hit sounds
  crash_hits [0] = crash_hit.loadSample("crash1_OH_FF_1.mp3");
  crash_hits [1] = crash_hit.loadSample("crash1_OH_FF_2.mp3");
  crash_hits [2] = crash_hit.loadSample("crash1_OH_FF_3.mp3");
  crash_hits [3] = crash_hit.loadSample("crash1_OH_FF_4.mp3");
  crash_hits [4] = crash_hit.loadSample("crash1_OH_FF_5.mp3");
  crash_hits [5] = crash_hit.loadSample("crash1_OH_FF_6.mp3");
  }
  
  void drawCrash()
  {
    // draw the crash cymbal
    crash = loadImage("crash.png");
    image(crash, xPos, yPos);
  }
  
  void drawCrashHit()
  {
    // draw the crash hit
    crashhit = loadImage("crash_hit.png");
    image(crashhit, 190, 395);
  }
  
  void hiddenCrash()
  {
    // hide the crash cymbal to display the hit
    crash_hidden = loadImage("crash_hidden.png");
    image(crash_hidden, 0, 0);
  }
}
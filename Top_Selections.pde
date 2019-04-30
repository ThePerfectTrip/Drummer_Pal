class Top_Selections
{
  float bxPos;
  float byPos;
  float bxPos2;
  float byPos2;
  float bxPos3;
  float byPos3;
  float cxPos;
  float cyPos;
  float mxPos;
  float myPos;
  float mxPos2;
  float myPos2;
  float font_color;
  boolean drawwhite = false;
  boolean metronome_on_white = false;
  boolean metronome_off_white = false;
  
  Top_Selections()
  {
    bxPos = 10;
    byPos = 30;
    bxPos2 = 261;
    byPos2 = 30;
    bxPos3 = 291;
    byPos3 = 30;
    cxPos = 15;
    cyPos = 60;
    mxPos = 260;
    myPos = 60;
    mxPos2 = 290;
    myPos2 = 60;
  }
  
  void drawControls()
  {
    if(drawwhite == false)
    {
    // display Controls text
    smooth();
    fill(0);
    rect(bxPos,byPos,112,35);
    font2 = loadFont("AgencyFB-Bold-36.vlw");
    fill(239,42,75);
    textFont(font2);
    text("Controls", cxPos=15, cyPos);
    }
    else
    {
    // display Controls text white
    smooth();
    font2 = loadFont("AgencyFB-Bold-36.vlw");
    fill(255);
    textFont(font2);
    text("Controls", cxPos, cyPos);
    }
  }
  
  void drawMetronomeOn()
  {
    if(metronome_on_white == false)
    {
    // display On text
    smooth();
    fill(0);
    rect(bxPos2,byPos2,30,30);
    font2 = loadFont("AgencyFB-Bold-36.vlw");
    fill(239,42,75);
    textFont(font2);
    text("On", mxPos, myPos);
    }
    else
    {
    // display On text white
    smooth();
    font2 = loadFont("AgencyFB-Bold-36.vlw");
    fill(255);
    textFont(font2);
    text("On", mxPos, myPos);
    fill(239,42,75);
    }
    if(showmetronomeactive == true)
    {
    // hide display On Text
    smooth();
    fill(0);
    rect(bxPos2,byPos2,30,30);
    fill(239,42,75);
    }
  }
}
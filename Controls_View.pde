class Controls_View
{
 float bxPos;
 float byPos;
 float cxPos;
 float cyPos;
 boolean drawwhite = false;
  
  Controls_View()
  {
    bxPos = 435;
    byPos = 200;
    cxPos = 435;
    cyPos = 230;
  }
  
  void drawControlsView()
  {
    if(showcontrolsview == false)
    {
    smooth();
    fill(0);
    rect(10,10,500,230);
    }
    else
    {
    smooth();
    // display what keys are used
    fill(255, 255, 255, 70);
    rect(10,10,500,230);
    fill(0);
    rect(15,15,490,220);
    font3 = loadFont("YuGothicUI-Bold-18.vlw");
    fill(239,42,75);
    textFont(font3);
    text("Left Bass Kick: 'b'", 16, 32);
    text("Right Bass Kick: 'n'", 16, 52);
    text("Snare: 'c' and 'v'", 16, 72);
    text("Hi-Hat Closed: 'm'", 16, 92);
    text("Hi-Hat Open: ','", 16, 112);
    text("Auto Hi-Hat Closed On: 'k' (120 bpm)", 16, 132);
    text("Auto Hi-Hat Closed Off: 'l'", 16, 152);
    text("Crash: '.'", 16, 172);
    text("Ride: '/'", 16, 192);
    text("Ride Bell: ';'", 16, 212);
    text("Hi Tom: 'a' and 'z'", 16, 232);
    text("Mid Tom: 'x' and 's'", 332, 32);
    text("Floor Tom: 'd' and 'f'", 332, 52);
    text("Increase Metronome bpm: '='", 252, 72);
    text("Decrease Metronome bpm: '-'", 252, 92);
    }
    
    if(drawwhite == false)
    {
    // display Close text
    smooth();  
    font2 = loadFont("AgencyFB-Bold-36.vlw");
    fill(239,42,75);
    textFont(font2);
    text("Close", cxPos, cyPos);
    }
    else
    {
    // display Close text white
    smooth(); 
    fill(0);
    rect(bxPos,byPos,68,35);
    font2 = loadFont("AgencyFB-Bold-36.vlw");
    fill(255);
    textFont(font2);
    text("Close", cxPos, cyPos);
    fill(239,42,75);
    }
  }
}
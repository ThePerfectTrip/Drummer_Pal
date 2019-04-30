import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

/*
  Project: Drummer Pal
  Description: Play the drums and have a good time!
  Author: Brendan Lee
  Date: 12-11-2016
*/

PImage auto;
PImage bg;
PImage copywright;
PImage hovermat;
PImage logo;
PImage show_tom_holder;
int flash = millis();
int lbasskick;
int rbasskick;
int hihatclosed;
int hihatopen;
int hi_tom;
int crashhit;
int ridehit;
int ridebellhit;
int mid_tom;
int floor_tom;
int snarehit;
boolean showtitle = true;
boolean showauto = false;
boolean showhitomwhite = false;
boolean showmidtomwhite = false;
boolean showfloortomwhite = false;
boolean showbass = false;
boolean showbasswhite = false;
boolean showhi_hat_closed = false;
boolean showhi_hat_closed_white = false;
boolean closedhi_hat_hidden = false;
boolean showhi_hat_open = false;
boolean showcrash = false;
boolean showcrashhidden = false;
boolean showcrash_hit = false;
boolean showride = false;
boolean showridehit = false;
boolean showridehidden = false;
boolean showsnare = false;
boolean showsnarewhite = false;
boolean showtomholder = false;
boolean showhitom = false;
boolean showmidtom = false;
boolean showfloortom = false;
boolean showmat = false;
boolean showtopselections = false;
boolean showcontrolsview = false;
boolean showmetronomeon = false;
boolean showmetronome = false;
boolean showmetronomeactive = false;
boolean metronome_reset = false;
PFont font;
PFont font2;
PFont font3;

Bass bass = new Bass();
Hi_Hat hi_hat = new Hi_Hat();
Crash crash_cymbal = new Crash();
Ride ride_cymbal = new Ride();
Hi_Tom hitom = new Hi_Tom();
Mid_Tom midtom = new Mid_Tom();
Floor_Tom floortom = new Floor_Tom();
Snare snare = new Snare();
Top_Selections top_selections = new Top_Selections();
Controls_View controls_view = new Controls_View();
Metronome metronome = new Metronome();

Minim drummer_pal_intro;
Minim auto_hihat_closed_120_bpm;
Minim lkick;
Minim rkick;
Minim hi_hat_closed_hit;
Minim hi_hat_open_hit;
Minim crash_hit;
Minim ride_hit;
Minim ride_bell_hit;
Minim hitomhit;
Minim midtomhit;
Minim floortomhit;
Minim snarehitting;
Minim click;

AudioSample clicker;
AudioPlayer auto_hi_hat_closed_120_bpm;
AudioPlayer drummer_pal;
AudioSample [] lkicks = new AudioSample[11];
AudioSample [] rkicks = new AudioSample[11];
AudioSample [] hi_hat_closed_hits = new AudioSample[20];
AudioSample [] hi_hat_open_hits = new AudioSample[5];
AudioSample [] ride_hits = new AudioSample[4];
AudioSample [] ride_bell_hits = new AudioSample[6];
AudioSample [] crash_hits = new AudioSample[6];
AudioSample [] hi_tom_hits = new AudioSample[2];
AudioSample [] mid_tom_hits = new AudioSample[2];
AudioSample [] floor_tom_hits = new AudioSample[2];
AudioSample [] snarehits = new AudioSample[12];

void setup()
{
  // set the window size
  size(800,800);
  // load the background image
  bg = loadImage("background.png");
  frameRate(300);
  drummer_pal_intro = new Minim(this);
  lkick = new Minim(this);
  rkick = new Minim(this);
  snarehitting = new Minim(this);
  hitomhit = new Minim(this);
  midtomhit = new Minim(this);
  floortomhit = new Minim(this);
  hi_hat_closed_hit = new Minim(this);
  hi_hat_open_hit = new Minim(this);
  ride_hit = new Minim(this);
  ride_bell_hit = new Minim(this);
  crash_hit = new Minim(this);
  click = new Minim(this);
  // load auto hi-hat closed hits at 120 bpm
  auto_hihat_closed_120_bpm = new Minim(this);
  // load the drum set sounds
  bass.BassSounds();
  snare.SnareSounds();
  hitom.Hi_Tom_Sounds();
  midtom.Mid_Tom_Sounds();
  floortom.Floor_Tom_Sounds();
  hi_hat.Hi_Hat_Sounds();
  ride_cymbal.RideSounds();
  crash_cymbal.CrashSounds();
  // play intro song
  drummer_pal = drummer_pal_intro.loadFile("Drummer_Pal_Intro.mp3");
  drummer_pal.play();
}

void draw()
{
  // draw the background
  background(bg);
  // draw the title, drums, etc.
  if(showtitle)
  {
     showtitle();
  }
  if(showtopselections)
  {
     top_selections.drawControls();
     top_selections.drawMetronomeOn();
  }
  if(showmat)
  {
     showmat();
  }
  if(showcrash)
  {
     crash_cymbal.drawCrash();
  }
  if(showcrashhidden)
  {
     crash_cymbal.hiddenCrash();
  }
  if(showcrash_hit)
  {
     crash_cymbal.drawCrashHit();
  }
  if(showhitom)
  {
     hitom.drawHi_Tom();
  }
  if(showhitomwhite)
  {
     hitom.drawHi_Tom_White();
  }
  if(showhi_hat_closed)
  {
     hi_hat.drawHi_Hat_Closed();
  }
  if(closedhi_hat_hidden)
  {
     hi_hat.hiddenHi_Hat_Closed();
  }
  if(showhi_hat_closed_white)
  {
     hi_hat.drawHi_Hat_White();
  }
  if(showhi_hat_open)
  {
     hi_hat.drawHi_Hat_Open();
  }
  if(showride)
  {
     ride_cymbal.drawRide();
  }
  if(showridehidden)
  {
     ride_cymbal.hiddenRide();
  }
  if(showridehit)
  {
     ride_cymbal.drawRideHit();
  }
  if(showmidtom)
  {
     midtom.drawMid_Tom();
  }
  if(showmidtomwhite)
  {
     midtom.drawMid_Tom_White();
  }
  if(showauto)
  {
     showauto();
  }
  if(showtomholder)
  {
     showtomholder();
  }
  if(showbass)
  {
     bass.drawBass();
  }
  if(showbasswhite)
  {
     bass.drawBassWhite();
  }
  if(showfloortom)
  {
     floortom.drawFloor_Tom();
  }
  if(showfloortomwhite)
  {
     floortom.drawFloor_Tom_White();
  }
  if(showsnare)
  {
     snare.drawSnare();
  } 
  if(showsnarewhite)
  {
     snare.drawSnareWhite();
  } 
  if(showmetronome)
  {
     metronome.drawMetronome();
  }
  if(showmetronomeactive)
  {
     metronome.drawActiveMetronome();
  }
  if(showcontrolsview)
  {
     controls_view.drawControlsView();
  }
  if(showmetronomeon)
  {
    top_selections.drawMetronomeOn();
  }
}

void showtitle()
{
     // show the title screen
     logo = loadImage("logo.png");
     image(logo, 150, 50);
     // display Press Any Key or Click Start text
     smooth();
     font = loadFont("AgencyFB-Bold-40.vlw");
     fill(255);
     textFont(font);
     text("Press Any Key or Click to Start", 182, 330);
     copywright = loadImage("copywright.png");
     image(copywright, 265, 745);
     // make the Press Any Key or Click Start text flashing
     int passedMillis = millis() - flash; // calculates flash time passed milliseconds
     if(passedMillis >= 500)
  {
     flash = millis();
     fill(0);
     rect(182,290,425,50);
  }
}

void showauto()
{    
     // display indicator of the auto hi-hat being active
     auto = loadImage("auto.png");
     image(auto, 205, 500);
}

void showtomholder()
{
     // display the tom holder
     show_tom_holder = loadImage("tom_holder.png");
     image(show_tom_holder, 345, 500);
}

void showmat()
{
     // display the HoverMat 
     hovermat = loadImage("hovermat.png");
     image(hovermat, -15, 20);
}
  
void keyPressed()
{
    // disable the title screen elements and display the drum set
    drummer_pal_intro.stop();
    showtitle = false;
    showmat = true;
    showhi_hat_closed = true;
    showcrash = true;
    showride = true;
    showbass = true;
    showsnare = true;
    showtomholder = true;
    showhitom = true;
    showmidtom = true;
    showfloortom = true;
    showtopselections = true;
    showmetronome = true;
    if(key == 'c') // hit the snare
    {
      showsnarewhite= true;
      snarehit = int(random(snarehits.length));
      snarehits[snarehit].trigger();
    }
    if(key == 'v') // an extra snare hitting key
    {
      showsnarewhite= true;
      snarehit = int(random(snarehits.length));
      snarehits[snarehit].trigger();
    }
    if(key == 'b') // left bass kick
    {
      showbasswhite = true;
      lbasskick = int(random(lkicks.length));
      lkicks[lbasskick].trigger();
    }
    if(key == 'n') // right bass kick
    {
      showbasswhite = true;
      rbasskick = int(random(rkicks.length));
      rkicks[rbasskick].trigger();
    }
    if(key == 'm') // hi-hat closed 
    {
      showhi_hat_closed_white = true;
      hihatclosed = int(random(hi_hat_closed_hits.length));
      hi_hat_closed_hits[hihatclosed].trigger();
    }
    if(key == ',') // hi-hat open
    {
      closedhi_hat_hidden = true;
      showhi_hat_open = true;
      hihatopen = int(random(hi_hat_open_hits.length));
      hi_hat_open_hits[hihatopen].trigger();
    }
    if(key == 'k') // auto hi-hat closed
    {
      auto_hi_hat_closed_120_bpm = auto_hihat_closed_120_bpm.loadFile("auto_hi_hat_closed_120_bpm.mp3");
      auto_hi_hat_closed_120_bpm.loop();
      showauto = true;
    }
    if(key == 'l') // auto hit-hat closed stop
    {
      auto_hihat_closed_120_bpm.stop();
      showauto = false;
    }
    if(key == '/') // ride hit
    {
      showridehit = true;
      showridehidden = true;
      ridehit = int(random(ride_hits.length));
      ride_hits[ridehit].trigger();
    }
    if(key == ';') // ride bell hit
    {
      ride_cymbal.drawRideBellHit();
      ridebellhit = int(random(ride_bell_hits.length));
      ride_bell_hits[ridebellhit].trigger();
    }
    if(key == 'z') // hi tom hit
    {
      showhitomwhite = true;
      hi_tom = int(random(hi_tom_hits.length));
      hi_tom_hits[hi_tom].trigger();
    }
    if(key == 'a') // an exta hi tom hitting key
    {
      showhitomwhite = true;
      hi_tom = int(random(hi_tom_hits.length));
      hi_tom_hits[hi_tom].trigger();
    }
    if(key == 'x') // mid tom hit
    {
      showmidtomwhite = true;
      mid_tom = int(random(mid_tom_hits.length));
      mid_tom_hits[mid_tom].trigger();
    }
    if(key == 's') // an extra mid tom hitting key
    {
      showmidtomwhite = true;
      mid_tom = int(random(mid_tom_hits.length));
      mid_tom_hits[mid_tom].trigger();
    }
    if(key == 'd') // floor tom hit
    {
      showfloortomwhite = true;
      floor_tom = int(random(floor_tom_hits.length));
      floor_tom_hits[mid_tom].trigger();
    }
    if(key == 'f') // an extra floor tom hitting key
    {
      showfloortomwhite = true;
      floor_tom = int(random(floor_tom_hits.length));
      floor_tom_hits[mid_tom].trigger();
    }  
    if(key == '.') // crash hit
    {
      showcrashhidden = true;
      showcrash_hit = true;
      crashhit = int(random(crash_hits.length));
      crash_hits[crashhit].trigger();
    }  
}

void keyReleased()
{
    if(key == 'c') // snare flash goes away
    {
      showsnarewhite= false;
    }
    if(key == 'v') // snare flash goes away
    {
      showsnarewhite= false;
    }
    if(key == 'b') // bass flash goes away
    {
      showbasswhite = false;
    }
    if(key == 'n') // bass flash goes away
    {
      showbasswhite = false;
    }
    if(key == 'm') // hi-hat closed flash goes away
    {
      showhi_hat_closed_white = false;
    }
    if(key == ',') // hi-hat open goes away and closes comes back
    {
      closedhi_hat_hidden = false;
      showhi_hat_open = false;
    }
    if(key == '/') // ride hit
    {
      showridehit = false;
      showridehidden = false;
    }
    if(key == ';') // ride bell hit
    {
      ride_cymbal.drawRideBellHit();
    }
    if(key == 'z') // hi tom hit flash goes away
    {
      showhitomwhite = false;
    }
    if(key == 'a') // hi tom flash goes away
    {
      showhitomwhite = false;
    }
    if(key == 'x') // mid tom hit flash goes away
    {
      showmidtomwhite = false;
    }
    if(key == 's') // mid tom hit flash goes away
      showmidtomwhite = false;
    {
    if(key == 'd') // floor tom hit flash goes away
    {
      showfloortomwhite = false;
    }
    if(key == 'f') // floor tom hit flash goes away
      showfloortomwhite = false;
    }
    if(key == '.') // crash hitting goes away and idle image comes back
    { showcrashhidden = false;
      showcrash_hit = false;
    } 
    if(key == '=') // increase metronome bpm
    {
      metronome.bpm = metronome.bpm + 1;
      metronome.interval = metronome.minute / metronome.bpm;
    }
    if(key == '-') // decrease metronome bpm
    {
      metronome.bpm = metronome.bpm - 1;
      metronome.interval = metronome.minute / metronome.bpm;
    
    if(metronome.bpm <= 0) // prevent the metronome from going negative
    {
      metronome.bpm = metronome.bpm = 0;
      metronome.interval = metronome.minute / metronome.bpm;
    }
  }
}

void mousePressed()
{
      // disable the title screen elements and display the drum set
      drummer_pal_intro.stop();
      showtitle = false;
      showmat = true;
      showhi_hat_closed = true;
      showcrash = true;
      showride = true;
      showbass = true;
      showsnare = true;
      showtomholder = true;
      showhitom = true;
      showmidtom = true;
      showfloortom = true;
      showtopselections = true;
      showmetronome = true;
      if( mouseX > top_selections.bxPos &&         // check for mouse to the right of the left side
      mouseX < (top_selections.bxPos + 107) &&     // check for the mouse for the left of the right side
      mouseY > top_selections.byPos &&             // check for the mouse below the top
      mouseY < (top_selections.byPos + 35) )       // check for the mouse above the bottom 
      {
        showtopselections = false;
        showcontrolsview = true;
      }
      if( mouseX > controls_view.bxPos &&          // check for mouse to the right of the left side
      mouseX < (controls_view.bxPos + 68) &&       // check for the mouse for the left of the right side
      mouseY > controls_view.byPos &&              // check for the mouse below the top
      mouseY < (controls_view.byPos + 35) )        // check for the mouse above the bottom 
      {
        showcontrolsview = false;
        showtopselections = true;
      }
      if( mouseX > top_selections.bxPos2 &&        // check for mouse to the right of the left side
      mouseX < (top_selections.bxPos2 + 30) &&     // check for the mouse for the left of the right side
      mouseY > top_selections.byPos2 &&            // check for the mouse below the top
      mouseY < (top_selections.byPos2 + 30 ) )     // check for the mouse above the bottom 
      {
        showmetronome= false;
        showmetronomeactive = true;
      }
      if( mouseX > metronome.xPos &&               // check for mouse to the right of the left side
      mouseX < (metronome.xPos + 65) &&            // check for the mouse for the left of the right side
      mouseY > metronome.yPos &&                   // check for the mouse below the top
      mouseY < (metronome.yPos + 77 ) )            // check for the mouse above the bottom 
      {
        showmetronome= true;
        showmetronomeactive = false;
      }
}

void mouseMoved()
{
      if( mouseX > top_selections.bxPos &&         // check for mouse to the right of the left side
      mouseX < (top_selections.bxPos + 112) &&     // check for the mouse for the left of the right side
      mouseY > top_selections.byPos &&             // check for the mouse below the top
      mouseY < (top_selections.byPos + 35) )       // check for the mouse above the bottom 
      {
        top_selections.drawwhite = true;           // change the controls text color to white
      }
      else
      {
        top_selections.drawwhite = false;          // change the controls text color back to red
      }
      if( mouseX > top_selections.bxPos2 &&        // check for mouse to the right of the left side
      mouseX < (top_selections.bxPos2 + 30) &&     // check for the mouse for the left of the right side
      mouseY > top_selections.byPos2 &&            // check for the mouse below the top
      mouseY < (top_selections.byPos2 + 30) )      // check for the mouse above the bottom 
      {
        top_selections.metronome_on_white = true;  // change the on text color to white
      }
      else
      {
        top_selections.metronome_on_white = false; // change the on text color back to red
      }
      if( mouseX > controls_view.bxPos &&          // check for mouse to the right of the left side
      mouseX < (controls_view.bxPos + 68) &&       // check for the mouse for the left of the right side
      mouseY > controls_view.byPos &&              // check for the mouse below the top
      mouseY < (controls_view.byPos + 35) )        // check for the mouse above the bottom 
      {
        controls_view.drawwhite = true;            // change the close text color to white
      }
      else
      {
        controls_view.drawwhite = false;           // change the close text color back to red
      }
}
  
void stop()
{
  // stop the sounds from playing
  click.stop();
  drummer_pal_intro.stop();
  lkick.stop();
  rkick.stop();
  hi_hat_closed_hit.stop();
  hi_hat_open_hit.stop();
  ride_hit.stop();
  ride_bell_hit.stop();
  auto_hihat_closed_120_bpm.stop();
  hitomhit.stop();
  midtomhit.stop();
  floortomhit.stop();
  snarehitting.stop();
  crash_hit.stop();
  super.stop();
}
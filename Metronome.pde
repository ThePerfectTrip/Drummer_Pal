class Metronome
{
  float xPos;
  float yPos;
  int bpm = 120;
  float minute = 60000;
  float interval = minute / bpm;
  int time;
  int beats = 0;
  PImage metronome;
  
  Metronome()
  {
    xPos = 195;
    yPos = 12;
    time = millis();
  }
  
  void drawMetronome()
  {
    // draw the metronome
    smooth();
    metronome = loadImage("metronome.png");
    tint(255, 126);
    image(metronome, xPos, yPos);
    tint(255);
  }
  
  void drawActiveMetronome()
  {
    // when metronome is activated.
    smooth();
    metronome = loadImage("metronome.png");
    image(metronome, xPos, yPos);
    
  // make the metronome functional with a click  
  if (millis() - time > interval ) 
  {
    clicker = click.loadSample("click.wav");
    clicker.trigger();
    beats ++;
    time = millis();
  }
  
  // display the bpm with white text
  fill(255);
  text(bpm, 260, 60);
  fill(239,42,75);
  }
}
class Ride
{
  float xPos;
  float yPos;
  PImage ride;
  PImage ridehit;
  PImage ridebellhit;
  PImage ride_hidden;
  
  Ride()
  {
    xPos = 420;
    yPos = 355;
  }
  
  void RideSounds()
  {
  // ride hits
  ride_hits [0] = ride_hit.loadSample("ride1_OH_FF_1.mp3");
  ride_hits [1] = ride_hit.loadSample("ride1_OH_FF_2.mp3");
  ride_hits [2] = ride_hit.loadSample("ride1_OH_FF_3.mp3");
  ride_hits [3] = ride_hit.loadSample("ride1_OH_FF_4.mp3");
  // ride bell hits
  ride_bell_hits [0] = ride_bell_hit.loadSample("ride1Bell_OH_F_1.mp3");
  ride_bell_hits [1] = ride_bell_hit.loadSample("ride1Bell_OH_F_2.mp3");
  ride_bell_hits [2] = ride_bell_hit.loadSample("ride1Bell_OH_F_3.mp3");
  ride_bell_hits [3] = ride_bell_hit.loadSample("ride1Bell_OH_F_4.mp3");
  ride_bell_hits [4] = ride_bell_hit.loadSample("ride1Bell_OH_F_5.mp3");
  ride_bell_hits [5] = ride_bell_hit.loadSample("ride1Bell_OH_F_6.mp3");
  }
  
  void drawRide()
  {
    // draw the ride cymbal
    ride = loadImage("ride.png");
    image(ride, xPos, yPos);
  }
  
  void drawRideHit()
  {
    // draw the ride hit
    ridehit = loadImage("ride_hit.png");
    image(ridehit, xPos, yPos);
  }
  
  void drawRideBellHit()
  {
    // draw the bell hit
    ridebellhit = loadImage("ride_bell_hit.png");
    image(ridebellhit, xPos, yPos);
  }
    
  void hiddenRide()
  {
    // hide the ride cymbal to display hit
    ride_hidden = loadImage("ride_hidden.png");
    image(ride_hidden, 0, 0);
  }
}
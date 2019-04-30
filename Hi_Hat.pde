class Hi_Hat
{
  float xPos;
  float yPos;
  PImage hi_hat_closed;
  PImage hi_hat_open;
  PImage closed_hi_hat_hidden;
  PImage showhihatclosedw;
  
  Hi_Hat()
  {
    xPos = 170;
    yPos = 475;
  }
  
  void Hi_Hat_Sounds()
  {
  // load hi-hat closed hit sounds
  hi_hat_closed_hits [0] = hi_hat_closed_hit.loadSample("hihatClosed_OH_F_1.mp3");
  hi_hat_closed_hits [1] = hi_hat_closed_hit.loadSample("hihatClosed_OH_F_2.mp3");
  hi_hat_closed_hits [2] = hi_hat_closed_hit.loadSample("hihatClosed_OH_F_3.mp3");
  hi_hat_closed_hits [3] = hi_hat_closed_hit.loadSample("hihatClosed_OH_F_4.mp3");
  hi_hat_closed_hits [4] = hi_hat_closed_hit.loadSample("hihatClosed_OH_F_5.mp3");
  hi_hat_closed_hits [5] = hi_hat_closed_hit.loadSample("hihatClosed_OH_F_6.mp3");
  hi_hat_closed_hits [6] = hi_hat_closed_hit.loadSample("hihatClosed_OH_F_7.mp3");
  hi_hat_closed_hits [7] = hi_hat_closed_hit.loadSample("hihatClosed_OH_F_8.mp3");
  hi_hat_closed_hits [8] = hi_hat_closed_hit.loadSample("hihatClosed_OH_F_9.mp3");
  hi_hat_closed_hits [9] = hi_hat_closed_hit.loadSample("hihatClosed_OH_F_10.mp3");
  hi_hat_closed_hits [10] = hi_hat_closed_hit.loadSample("hihatClosed_OH_F_11.mp3");
  hi_hat_closed_hits [11] = hi_hat_closed_hit.loadSample("hihatClosed_OH_F_12.mp3");
  hi_hat_closed_hits [12] = hi_hat_closed_hit.loadSample("hihatClosed_OH_F_13.mp3");
  hi_hat_closed_hits [13] = hi_hat_closed_hit.loadSample("hihatClosed_OH_F_14.mp3");
  hi_hat_closed_hits [14] = hi_hat_closed_hit.loadSample("hihatClosed_OH_F_15.mp3");
  hi_hat_closed_hits [15] = hi_hat_closed_hit.loadSample("hihatClosed_OH_F_16.mp3");
  hi_hat_closed_hits [16] = hi_hat_closed_hit.loadSample("hihatClosed_OH_F_17.mp3");
  hi_hat_closed_hits [17] = hi_hat_closed_hit.loadSample("hihatClosed_OH_F_18.mp3");
  hi_hat_closed_hits [18] = hi_hat_closed_hit.loadSample("hihatClosed_OH_F_19.mp3");
  hi_hat_closed_hits [19] = hi_hat_closed_hit.loadSample("hihatClosed_OH_F_20.mp3");
  // hi-hat open hits
  hi_hat_open_hits [0] = hi_hat_open_hit.loadSample("hihatOpen_OH_F_1.mp3");
  hi_hat_open_hits [1] = hi_hat_open_hit.loadSample("hihatOpen_OH_F_2.mp3");
  hi_hat_open_hits [2] = hi_hat_open_hit.loadSample("hihatOpen_OH_F_3.mp3");
  hi_hat_open_hits [3] = hi_hat_open_hit.loadSample("hihatOpen_OH_F_4.mp3");
  hi_hat_open_hits [4] = hi_hat_open_hit.loadSample("hihatOpen_OH_F_5.mp3");
  }
  
  void drawHi_Hat_Closed()
  {
    // draw hi-hat closed
    hi_hat_closed = loadImage("hi_hat_closed.png");
    image(hi_hat_closed, xPos, yPos);
  }
  
  void drawHi_Hat_Open()
  {
    // draw hi-hat open
    hi_hat_open = loadImage("hi_hat_open.png");
    image(hi_hat_open, xPos, yPos);
  }
  
  void drawHi_Hat_White()
  {
    // draw hi-hat white
    showhihatclosedw = loadImage("hi_hat_closed_white.png");
    image(showhihatclosedw, 170, 475);
  }
  
  void hiddenHi_Hat_Closed()
  {
    // hide the closed hi-hat
    closed_hi_hat_hidden = loadImage("closed_hi_hat_hidden.png");
    image(closed_hi_hat_hidden, 0, 0);
  }   
}
Cloud mike;
PFont f ;


void setup() {
  //Font setup
  f = loadFont("Serif-24.vlw");
  textFont(f, 14);
  textAlign(CENTER, CENTER);



  //Display setup
  pixelDensity(2);
  size(600, 600);

  //cloud initialization
  mike = new Cloud(400);
  mike.Pinit();
  mike.Sinit();
}


void draw() {
  //println(frameRate); //for testing 
  background(155);
  translate(width/2, height/2);
  mike.showCloud();
  //noLoop();
}

class Particle {
  float xPos, yPos;
  float cRadius, hRadius; 
  float xSpeed, ySpeed ; //temp to test movement
  color lineColor;
  char letter; //chaning letter from char to int for testing 
  StringList allWords ;
  StringList neighWords;
  int pos; //used to check for self reference when checking neighbors



  Particle(float _xPos, float _yPos, char _letter, int _pos) {
    xPos = _xPos ;
    yPos = _yPos ;
    lineColor = color (random(255), random (255), random (255)); //random is always a good place to tweak
    cRadius = 15 ; //might want to play around with variable size radii later on
    hRadius = 50 ; //refers to hitbox radius 
    xSpeed = random(-0.21, 0.21) ;
    ySpeed = random(-0.21, 0.21) ; 
    letter = _letter ;
    pos = _pos ;
    allWords = new StringList();
    neighWords = new StringList();
  }


  void display(boolean isTrouble) {
    strokeWeight(1);
    stroke(0);
    fill(0);
    fill(255);
    //text(letter, xPos, yPos-2); //2 pixel movement is for better alignment 
    text(letter, xPos, yPos);
    if (isTrouble) {
      fill(155, 50);
      ellipse (xPos, yPos, hRadius, hRadius);
    }
  }


  void move() { //this function could be made a lot better
    xPos += xSpeed ;
    yPos += ySpeed ;
    if ( xPos >= width/2) {
      xSpeed *= -1 ;
    }
    if ( xPos < -width/2) {
      xSpeed *= -1 ;
    }
    if ( yPos >= height/2) {
      ySpeed *= -1 ;
    }
    if ( yPos < -height/2) {
      ySpeed *= -1 ;
    }
  }


  void nearNeighbors(Particle [] parts) { //passes word to check function
    String tempWord ;
    for (int j = 0; j < allWords.size(); j ++) {
      tempWord = new String (allWords.get(j));
      wordCheck(parts, tempWord, tempWord.length(), 1, lineColor);
    }
  }


  void addToList(String word) {
    allWords.append(word);
  }


  void wordCheck(Particle [] neighbors, String word, int size, int index, color c) { //index should start at 2
  //char(word.charAt(index)) - 48
    for ( int i = 0; i < neighbors.length; i++) {
      if (pow( (neighbors[i].xPos - xPos), 2 ) + pow( (neighbors[i].yPos - yPos), 2 ) < pow(hRadius, 2)) { //circle hitbox
        if (index >= size || ((neighbors[i].letter != word.charAt(index)) && i != neighbors[i].pos)) {  //problem is here because self checks first //will also have to change int(word.chartAt(index) when using actual letters
          //println("index: " + index);
          //println("pos: " + pos);
          //println("i: " + i);
          //println("char at: " + char(word.charAt(index)-48));
          //println("letter: " + neighbors[i].letter);
          //println("");
          return;
        } else if (neighbors[i].letter == (word.charAt(index))) {
          strokeWeight(3);
          stroke (c, 85);
          //stroke(c); //for testing 
          line(xPos, yPos, neighbors[i].xPos, neighbors[i].yPos);
          neighbors[i].wordCheck (neighbors, word, size, index+1, c);
        }
      }
    }
  }
}
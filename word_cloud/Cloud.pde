class Cloud {
  Particle [] particles;
  JSONArray dict;//Will do convention of dict + letter
  JSONObject dictA, dictB, dictC, dictD, dictE, dictF, dictG, dictH, dictI, dictJ, dictK, dictL, dictM, dictN, dictO, dictP, dictQ, dictR;
  JSONObject dictS, dictT, dictU, dictV, dictW, dictX, dictY, dictZ;

  Cloud(int arraySize) {
    particles = new Particle [arraySize] ;
    dict = loadJSONArray("data.json");
    dictA = dict.getJSONObject(0); //this is for number 1
    dictB = dict.getJSONObject(1); //this is for number 2
    dictC = dict.getJSONObject(2); //number 3
    dictD = dict.getJSONObject(3); //number 4
    dictE = dict.getJSONObject(4); //number 5
    dictF = dict.getJSONObject(5); //number 6
    dictG = dict.getJSONObject(6); //number 7
    dictH = dict.getJSONObject(7); //number 8
    dictI = dict.getJSONObject(8); //number 9
    dictJ = dict.getJSONObject(9); //number 10
    dictK = dict.getJSONObject(10); //number 11
    dictL = dict.getJSONObject(11); //number 12
    dictM = dict.getJSONObject(12); //number 13
    dictN = dict.getJSONObject(13); //number 14
    dictO = dict.getJSONObject(14); //number 15
    dictP = dict.getJSONObject(15); //number 16
    dictQ = dict.getJSONObject(16); //number 17
    dictR = dict.getJSONObject(17); //number 18
    dictS = dict.getJSONObject(18); //number 19
    dictT = dict.getJSONObject(19); //number 20
    dictU = dict.getJSONObject(20); //number 21
    dictV = dict.getJSONObject(21); //number 22
    dictW = dict.getJSONObject(22); //number 23
    dictX = dict.getJSONObject(23); //number 24
    dictY = dict.getJSONObject(24); //number 25
    dictZ = dict.getJSONObject(25); //number 26
    //println(dictB);
  }


  void Pinit() { //Initialize the particles
    //println(dict1.getString("0"));
    for (int i = 0; i < particles.length; i++) {
      if (i % 26 == 0) { //whole modulo idea for testing but may be useful later to assign letters
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 'a', i); //i added to troubleshoot
      } else if (i % 26 == 1) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 'b', i); //should be  1
      } else if (i % 26 == 2) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 'c', i);
      } else if (i % 26 == 3) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 'd', i); //should be 3
      } else if (i % 26 == 4) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 'e', i); //should be  1
      } else if (i % 26 == 5) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 'f', i);
      } else if (i % 26 == 6) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 'g', i); //should be 3
      } else if (i % 26 == 7) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 'h', i); //should be  1
      } else if (i % 26 == 8) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 'i', i);
      } else if (i % 26 == 9) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 'j', i); //should be 3
      } else if (i % 26 == 10) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 'k', i); //should be  1
      } else if (i % 26 == 11) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 'l', i);
      } else if (i % 26 == 12) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 'm', i); //should be 3
      } else if (i % 26 == 13) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 'n', i); //should be  1
      } else if (i % 26 == 14) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 'o', i);
      } else if (i % 26 == 15) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 'p', i); //should be 3
      } else if (i % 26 == 16) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 'q', i); //should be  1
      } else if (i % 26 == 17) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 'r', i);
      } else if (i % 26 == 18) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 's', i); //should be 3
      } else if (i % 26 == 19) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 't', i); //should be  1
      } else if (i % 26 == 20) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 'u', i);
      } else if (i % 26 == 21) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 'v', i); //should be 3
      } else if (i % 26 == 22) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 'w', i); //should be  1
      } else if (i % 26 == 23) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 'x', i);
      } else if (i % 26 == 24) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 'y', i); //should be 3
      } else if (i % 26 == 25) {
        particles[i] = new Particle(random(-width/2, width/2), random(-height/2, height/2), 'z', i); //should be  1
      }
    }
  }

  void PinitTest() { //Initialize the particles
    //println(dict1.getString("0"));
    //particles[0] = new Particle(100, 100, '1', 0);
    //particles[1] = new Particle(105, 100, '2', 1);
    //particles[2] = new Particle(125, 100, '3', 2);
  }

  void Sinit() { //giving them a local dictionary 
    for (int i = 0; i < particles.length; i++) { //will have to scale up when using letters
      if (particles[i].letter == 'a') { //only giving one local dictionary
        for (int j = 0; j < dictA.getInt("wordNum"); j++) {
          //println(("w" + char(j+48)));
          particles[i].addToList(dictA.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 'b') { //only giving one local dictionary
        for (int j = 0; j < dictB.getInt("wordNum"); j++) {
          particles[i].addToList(dictB.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 'c') { //only giving one local dictionary
        for (int j = 0; j < dictC.getInt("wordNum"); j++) {
          particles[i].addToList(dictC.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 'd') { //only giving one local dictionary
        for (int j = 0; j < dictD.getInt("wordNum"); j++) {
          //println(("w" + char(j+48)));
          particles[i].addToList(dictD.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 'e') { //only giving one local dictionary
        for (int j = 0; j < dictE.getInt("wordNum"); j++) {
          particles[i].addToList(dictE.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 'f') { //only giving one local dictionary
        for (int j = 0; j < dictF.getInt("wordNum"); j++) {
          particles[i].addToList(dictF.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 'g') { //only giving one local dictionary
        for (int j = 0; j < dictG.getInt("wordNum"); j++) {
          //println(("w" + char(j+48)));
          particles[i].addToList(dictG.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 'H') { //only giving one local dictionary
        for (int j = 0; j < dictH.getInt("wordNum"); j++) {
          particles[i].addToList(dictH.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 'i') { //only giving one local dictionary
        for (int j = 0; j < dictI.getInt("wordNum"); j++) {
          particles[i].addToList(dictI.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 'j') { //only giving one local dictionary
        for (int j = 0; j < dictJ.getInt("wordNum"); j++) {
          particles[i].addToList(dictJ.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 'k') { //only giving one local dictionary
        for (int j = 0; j < dictK.getInt("wordNum"); j++) {
          particles[i].addToList(dictK.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 'l') { //only giving one local dictionary
        for (int j = 0; j < dictL.getInt("wordNum"); j++) {
          particles[i].addToList(dictL.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 'm') { //only giving one local dictionary
        for (int j = 0; j < dictM.getInt("wordNum"); j++) {;
          particles[i].addToList(dictM.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 'n') { //only giving one local dictionary
        for (int j = 0; j < dictN.getInt("wordNum"); j++) {
          particles[i].addToList(dictN.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 'o') { //only giving one local dictionary
        for (int j = 0; j < dictO.getInt("wordNum"); j++) {
          particles[i].addToList(dictO.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 'p') { //only giving one local dictionary
        for (int j = 0; j < dictP.getInt("wordNum"); j++) {
          particles[i].addToList(dictP.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 'q') { //only giving one local dictionary
        for (int j = 0; j < dictQ.getInt("wordNum"); j++) {
          particles[i].addToList(dictQ.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 'r') { //only giving one local dictionary
        for (int j = 0; j < dictR.getInt("wordNum"); j++) {
          particles[i].addToList(dictR.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 's') { //only giving one local dictionary
        for (int j = 0; j < dictS.getInt("wordNum"); j++) {
          particles[i].addToList(dictS.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 't') { //only giving one local dictionary
        for (int j = 0; j < dictT.getInt("wordNum"); j++) {
          particles[i].addToList(dictT.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 'u') { //only giving one local dictionary
        for (int j = 0; j < dictU.getInt("wordNum"); j++) {
          particles[i].addToList(dictU.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 'v') { //only giving one local dictionary
        for (int j = 0; j < dictV.getInt("wordNum"); j++) {
          particles[i].addToList(dictV.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 'w') { //only giving one local dictionary
        for (int j = 0; j < dictW.getInt("wordNum"); j++) {
          particles[i].addToList(dictW.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 'x') { //only giving one local dictionary
        for (int j = 0; j < dictX.getInt("wordNum"); j++) {
          particles[i].addToList(dictX.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 'y') { //only giving one local dictionary
        for (int j = 0; j < dictY.getInt("wordNum"); j++) {
          particles[i].addToList(dictY.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
      if (particles[i].letter == 'z') { //only giving one local dictionary
        for (int j = 0; j < dictZ.getInt("wordNum"); j++) {
          particles[i].addToList(dictZ.getString("w" + char(j+48))); //add 48 to offset ASCII
        }
      }
    }
  }
  void showCloud() {
    for (int i = 0; i < particles.length; i++) {
      particles[i].display(false); //true shows hit box
      particles[i].nearNeighbors(particles);
      particles[i].move(); //turning movement off for dictionary testing
    }
  }
}
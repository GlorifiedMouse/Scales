void setup () {

  size(800, 500);
  int shift = 10;
  boolean move = false;

  for (int y=15; y < (height-15); y+=25) { //sets rows spacing and start/end points
    for (int x=shift; x < (width-10); x+=20) { //sets column spacing and start/end points
      scale(x, y);
    }
    if (move == true) {
      shift = 20;
      move = false;
    } else {
      shift = 10;
      move = true;
      //changes move from true to false to create offset
    }
  }
}

void scale (int x, int y) {
  float r = random(125, 255);
  float g = random(0, 100);
  float b = random(75, 200);
  fill(r, g, b); //creates random pink/purple fill color

  beginShape();
  curveVertex(x, y);
  curveVertex(x, y);
  curveVertex(x+8, y-2);
  curveVertex(x+16, y);
  curveVertex(x+16, y);
  endShape(CLOSE); //makes curve at top of scale

  beginShape();
  bezier (x, y, x-5, y+5, x+11, y+15, x+8, y+20);
  bezier (x+16, y, x+21, y+5, x+5, y+15, x+8, y+20);
  endShape(CLOSE); //makes two beziers on sides of scale

  beginShape();
  vertex(x, y);
  vertex(x, y);
  vertex(x+16, y);
  vertex(x+8, y+20);
  vertex(x, y);
  vertex(x, y);
  endShape(CLOSE); //makes filled triangle in middle of scale to provide color

  
}

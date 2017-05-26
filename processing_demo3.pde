void setup() {
  background(0, 51, 102);
  fullScreen();
  noStroke();
  blendMode(BLEND);
}

int degree = 0;
int umbrellaDegree = 0;

void drawUmbrella (int x, int y, int deg) {
  fill(255, 102, 204, 255);
  
  pushMatrix ();
  
  translate(x, y);
  rotate(radians(deg));

  beginShape(TRIANGLE_FAN);
  vertex(0, 0);
  for (int i = 0 ; i <= 360; i += 360 / 12) {
    vertex(50 * cos(radians(i)),50 * sin(radians(i))); 
  } 
  endShape();
  

  popMatrix ();
}

void draw() {
  background(0, 51, 102);

  drawUmbrella (500, 420, umbrellaDegree);
  drawUmbrella (30, 150, umbrellaDegree);
  drawUmbrella (432, 356, umbrellaDegree);
  drawUmbrella (380, 550, umbrellaDegree);
  drawUmbrella (250, 50, umbrellaDegree);
  drawUmbrella (650, 48, umbrellaDegree);
  drawUmbrella (50, 550, umbrellaDegree);
  drawUmbrella (250, 240, umbrellaDegree);
  drawUmbrella (650, 300, umbrellaDegree);
  drawUmbrella (640, 182, umbrellaDegree);
  drawUmbrella (880, 550, umbrellaDegree);
  drawUmbrella (550, 80, umbrellaDegree);
  drawUmbrella (650, 48, umbrellaDegree);
  drawUmbrella (950, 432, umbrellaDegree);
  drawUmbrella (850, 240, umbrellaDegree);
  drawUmbrella (650, 748, umbrellaDegree);
  drawUmbrella (950, 632, umbrellaDegree);
  drawUmbrella (850, 780, umbrellaDegree);
  drawUmbrella (50, 276, umbrellaDegree);
  drawUmbrella (123, 742, umbrellaDegree);
  drawUmbrella (325, 602, umbrellaDegree);
  drawUmbrella (1050, 76, umbrellaDegree);
  drawUmbrella (923, 102, umbrellaDegree);
  drawUmbrella (865, 222, umbrellaDegree);

  umbrellaDegree += 2;
 
  // 1 1 2 3 5 8 13 21 44 65 109
  for (int i = 0; i < 4; i++ ) {
    float sinValue = sin(radians(degree + i * 5));
    degree += 1;

    float offset = 44.0f * sinValue;
    fill(0, 102, 204, 44 + 21 * i * sinValue);
    rect(0, height - 109 * (i + 1) + offset, width, height - 109 * i + offset);
  }
}
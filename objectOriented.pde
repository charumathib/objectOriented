import g4p_controls.*;
GButton button;
int circlesCount ; 
ArrayList<Circle> circles ;
boolean drawNormal = true ; 

public void setup() {

  size(800, 800);
  noStroke();
  button = new GButton(this, width/2-50, height-100, 100, 50, "Press Me");
  createCircles();
}
public void draw() {
  if ( drawNormal) { 
    background(0);
    surface.setTitle("Circle Count : " + circles.size());
  }

  for (int i = 0; i < circles.size(); i++) { 
    circles.get(i).draw();
  }
}

public void handleButtonEvents(GButton pressMe, GEvent event) {
  drawNormal = true ;
  createCircles();
  for (int i = 0; i < circles.size(); i++) { 
    circles.get(i).changeSizeRandomly();
  }
}

public void keyPressed() { 
  drawNormal = !drawNormal ;
}

public void createCircles() {
  circles = new ArrayList<Circle>();
  circlesCount = int(random(2, 400));

  for ( int i = 0; i < circlesCount; i++) { 
    circles.add(new Circle());
  }
}
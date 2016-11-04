public class Circle {
  private color SQ;
  float x, y, h, w, xSpeed, ySpeed;



  public Circle(color temp, int xTemp, int yTemp, int hTemp, int wTemp, int xSpeedh, int ySpeedh) {
    SQ = temp;
    x = xTemp;
    y = yTemp;
    h = hTemp;
    w = wTemp;
    xSpeed = xSpeedh;
    ySpeed = ySpeedh;
    x = random(500);
    y = random(500);
    xSpeed = random(10);
    ySpeed = random(10);
  }


  public void draw() {
    fill(SQ);
    ellipse(x, y, w, h);
    x+=xSpeed;
    y+=ySpeed;
    bounce();
  }


  public void bounce() {
    if (x>= width || x<=0 ) {

      xSpeed = -xSpeed;
      ellipse(x, y, w, h);
    }
    if (y>=height || y<=0) {
      ySpeed = -ySpeed;
      ellipse(x, y, w, h);
    }
  }


  public void setStuff() {
    float temp = random(5, 150);
    this.w = temp;
    this.h = temp;
  }
}
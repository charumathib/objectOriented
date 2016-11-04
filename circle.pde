public class Circle {
  private color SQ = color(random(255), random(255), random(255), random(255));
  float x = random(width);
  float y = random(height);
  float h = random(5, 50) ;
  float w = h ;
  float xSpeed = random(10);
  float ySpeed = random(10);


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
      SQ = color(random(255), random(255), random(255), random(255));
    }
    if (y>=height || y<=0) { 
      ySpeed = -ySpeed;
      SQ = color(random(255), random(255), random(255), random(255));
    }
  }


  public void changeSizeRandomly() {
    this.w = random(5, 150);
    this.h = this.w;      
    xSpeed = -xSpeed;
    ySpeed = -ySpeed;
  }
}
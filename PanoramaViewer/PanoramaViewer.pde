PanoramaSphere psphere;
PImage img;

void setup() {
  size(600, 350, P3D);  
  psphere = new PanoramaSphere(100);
  img = loadImage("sample.jpg");
}

void draw() {
  background(0);

  camera( width/2, height/2, 0, 
          width/2, mouseY, -100, 
          0, 1, 0);

  translate(width/2, height/2, 0);
  rotateY( radians(frameCount*0.3) );
  psphere.draw(1000, img);
}

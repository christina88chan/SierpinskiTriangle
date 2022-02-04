int n = 495;
public void setup()
{
  size(500,500);
  strokeWeight(2);
}
public void draw()
{
 background(0);
 noFill();
 sierpinski(5,495,495);
}

int myColor;
public void sierpinski(int x, int y, int len) 
{
 if(len <= n){
   if(mousePressed == true){
     myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
     stroke(myColor);
   } else {
     stroke(255);
   }
   triangle(x, y, x+len, y, x+(len/2), y-len);
 }
 else{
   sierpinski(x,y,len/2);
   sierpinski(x+(len/2), y, len/2);
   sierpinski(x+(len/4), y-(len/2), len/2);
 }
}

public void keyPressed(){
 if(keyCode == UP && n > 8){
   n/=3;
 }
 if(keyCode == DOWN && n < 495){
   n*=3;
 }
}


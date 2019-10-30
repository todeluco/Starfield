Particle[] stars;
void setup()
{
	size(500,500);
	stars = new Particle[3000];
	for(int i = 0; i < stars.length; i++){
		stars[i] = new Particle();
	}
	stars[0] = new OddballParticle();
}
void draw()
{
	background(0);
	for(int i = 0; i < stars.length; i++){
 	   	stars[i].move();
 	   	stars[i].show();
 	   }
}
class Particle
{
	double myX, myY, myAngle, mySpeed, mySize;
	int myColor;
	Particle(){
		myX = 250;
		myY = 250;
		mySpeed = Math.random()*8;
		myAngle = Math.random()*2*Math.PI;
		myColor = color(255);
		mySize = (int)(Math.random()*7);
	}
	void move(){
		myX = myX + Math.cos(myAngle)*mySpeed;
		myY = myY + Math.sin(myAngle)*mySpeed;
	}
	void show(){
		fill(myColor);
		stroke(255);
		ellipse((int)myX, (int)myY, (int)mySize, (int)mySize);
	}
}

class OddballParticle extends Particle
{
	OddballParticle(){
		myColor = color(0,0,255);
	}
	void show(){
		fill(myColor);
		ellipse((int)myX,(int)myY,50,50);
		fill(0,255,0);
		stroke(0,255,0);
		ellipse((int)myX,(int)myY,25,20);
		ellipse((int)myX+5,(int)myY+8,15,10);
		ellipse((int)myX-10,(int)myY-4,15,10);
		ellipse((int)myX,(int)myY-13,20,10);
		ellipse((int)myX+10,(int)myY+15,15,7);
	}
	void move(){
		myX = myX + (int)(Math.random()*4)-2;
		myY = myY + (int)(Math.random()*4)-2;
	}
}



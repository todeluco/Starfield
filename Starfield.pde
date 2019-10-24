Particle[] stars;
void setup()
{
	size(500,500);
	stars = new Particle[200];
	for(int i = 0; i < stars.length; i++){
		stars[i] = new Particle();
	}
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
	double myX, myY, myAngle, mySpeed;
	int myColor;
	Particle(){
		myX = 250;
		myY = 250;
		mySpeed = Math.random()*2;
		myAngle = Math.random()*2*Math.PI;
		myColor = color((int)(Math.random()*255));
	}
	void move(){
		myX = myX + Math.cos(myAngle)*mySpeed;
		myY = myY + Math.sin(myAngle)*mySpeed;
	}
	void show(){
		fill(myColor);
		ellipse((int)myX, (int)myY, (int)(Math.random()*20), (int)(Math.random()*20));
	}
}

class OddballParticle //inherits from Particle
{
	//your code here
}



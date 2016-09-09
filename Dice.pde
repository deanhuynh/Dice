

void setup()
{
	size(400, 400);
	background(119, 181, 254);
	noLoop();
	noStroke();

}
void draw()
{
	for(int x = 60; x < 350; x += 50)
	{
		for(int y = 60; y < 350; y += 50)
		{
			Die bob = new Die(x, y);
			bob.show();
		}
	}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int diceRoll, myX, myY;

	Die(int x, int y)
	{
		//variable initializations here
		myX = x;
		myY = y;
		roll();
	}
	void roll()
	{
		diceRoll = (int)(Math.random() * 6) + 1;
	}
	void show()
	{
		fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
		rect(myX, myY, 30, 30, 10);
		fill(255);
		if(diceRoll == 1)
		{
			ellipse(myX + 15, myY + 15, 5, 5);
		}
		else if(diceRoll == 2)
		{
			ellipse(myX + 9, myY + 21, 5, 5);
			ellipse(myX + 21, myY + 9, 5, 5);
		}
		else if(diceRoll == 3)
		{
			ellipse(myX + 15, myY + 15, 5, 5);
			ellipse(myX + 9, myY + 21, 5, 5);
			ellipse(myX + 21, myY + 9, 5, 5);
		}
		else if(diceRoll == 4)
		{
			ellipse(myX + 9, myY + 21, 5, 5);
			ellipse(myX + 21, myY + 9, 5, 5);
			ellipse(myX + 9, myY + 9, 5, 5);
			ellipse(myX + 21, myY + 21, 5, 5);
		}
		else if(diceRoll == 5)
		{
			ellipse(myX + 15, myY + 15, 5, 5);
			ellipse(myX + 9, myY + 21, 5, 5);
			ellipse(myX + 21, myY + 9, 5, 5);
			ellipse(myX + 9, myY + 9, 5, 5);
			ellipse(myX + 21, myY + 21, 5, 5);
		}
		else
		{
			ellipse(myX + 9, myY + 21, 5, 5);
			ellipse(myX + 21, myY + 9, 5, 5);
			ellipse(myX + 9, myY + 9, 5, 5);
			ellipse(myX + 21, myY + 21, 5, 5);
			ellipse(myX + 9, myY + 15, 5, 5);
			ellipse(myX + 21, myY + 15, 5, 5);
		}
	}
}


int rollTotal = 0;

void setup()
{
	size(400, 400);
	background(119, 181, 254);
	noLoop();
	noStroke();
	textAlign(CENTER,CENTER);
	textSize(20);

}
void draw()
{
	for(int x = 60; x < 350; x += 50)
	{
		for(int y = 60; y < 350; y += 50)
		{
			Die bob = new Die(x, y);
			bob.show();
			rollTotal += bob.roll();
		}
	}
	System.out.println(rollTotal);
	fill(119, 181, 254);
	rect(180, 360, 40, 40);
	fill(255);
	text("current roll:", 200, 360);
	text(rollTotal, 200, 380);
	rollTotal = 0;
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
	int roll()
	{
		diceRoll = (int)(Math.random() * 6) + 1;
		return diceRoll;
	}
	void show()
	{
		int i, j, k;
		i = (int)(Math.random() * 255);
		j = (int)(Math.random() * 255);
		k = (int)(Math.random() * 255);
		fill(i, j, k);
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

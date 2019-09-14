
void setup()
{
  size(500, 500);
}

void draw()
{

  background(0);
  int amountLines = 5;
  strokeWeight(3);
  stroke(255, 255, 255);


  for (int i = 0; i < amountLines; i++)
  {

    line(10 + (10 * i), 80, 50 + (10 * i), 40);
  }
}

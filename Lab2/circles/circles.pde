

float[] randomCounts;
color[] colorarray;

void setup()
{  
 size(displayWidth,displayHeight); 
 
 frameRate(1);
 
 randomCounts = new float[20];
 colorarray = new color[20];
 
 for (int x = 0; x < randomCounts.length; x++) {
    int r = int(random(255));
    int g = int(random(255));
    int b = int(random(255));
    colorarray[x] = color(r,g,b);
  }
}


void draw()
{
  background(255); 
  
  int index = int(random(randomCounts.length));
  randomCounts[index]++;  
  
  
  for (int x = 0; x < randomCounts.length; x++) {

    circle(random(displayWidth),random(displayHeight),random(400));
    fill(colorarray[x]);
  } 
  
}

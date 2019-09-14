float[] heights = new float[40];
float[] r = new float[40];
float[] g = new float[40];
float[] b = new float[40];



void setup() {
 size(820, 1000);
 
 frameRate(1200);
 
 for(int i = 0; i < 40; i++)
 {
   heights[i] = 0;
   r[i] = random(255);
   g[i] = random(255);
   b[i] = random(255);
 }
}

void draw() 
{  
 background(255,255,255);
 
 float num1 = random(40);
 float num2 = random(40);
 
 if(num2 < num1)
 {
  num2 = random(40); 
 }
 if(num2 < num1)
 {
   num2 = random(40);
 }
 
 
 //float sd = 5;
 float mean = 20;
 int x = (int)(num2);
 if (x > 39)
 {
   x = 39;
 }
 if (x < 0)
 {
   x = 0;
 }
 
 heights[x]++;
  
 for(int i = 0; i < 40; i++)
 {
   strokeWeight(2);
   fill(r[i], g[i], b[i]);
   rect(20*i, height - heights[i], 20, heights[i]);
 }
}

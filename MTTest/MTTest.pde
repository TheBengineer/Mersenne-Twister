/**
 * Loop. 
 * 
 * The loop() function causes draw() to execute
 * continuously. If noLoop is called in setup()
 * the draw() is only executed once. In this example
 * click the mouse to execute loop(), which will
 * cause the draw() the execute continuously.

 * Modified to show Mersenne twister by Wild_Doogy


 */

//Make an array for points
int[] pointsList = new int[10];

MersenneTwisterFast MT = new MersenneTwisterFast();
//Make a copy of MersenneTwisterFast called MT



void setup() {
  size(500, 400);  //Normal Setup
  stroke(255);     
}

void draw() { 
  background(0);   // Set the background to black
  
  int seed = int((float(mouseX)/width)*10); // Make the seed change with the mouse X position. 
  MT.setSeed(seed);//set the starting state of the Mersenne Twister algorithm
  
  text("Seed: "+str(seed),10,20); // Print seed
  
  for (int n = 0; n < 10; n++) { 
    pointsList[n] = int(MT.nextFloat()*height);//Populate the list with random positions from 0 to the height of the window.
  }
  
  for (int n = 0; n < (10-1); n++) { 
    line((width/10)*n,pointsList[n],(width/10)*(n+1),pointsList[n+1]);//Populate the list with random positions from 0 to the height of the window.
  }
} 


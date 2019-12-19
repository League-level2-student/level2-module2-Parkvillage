//*
// ***** SEGMENT CLASS *****
// This class will be used to represent each part of the moving snake.
//*

class Segment {

//Add x and y member variables. They will hold the corner location of each segment of the snake.
  int x;
  int y;

// Add a constructor with parameters to initialize each variable.
 Segment(int x,int y){
  
   this.x=x;
   this.y=y;
 }


}


//*
// ***** GAME VARIABLES *****
// All the game variables that will be shared by the game methods are here
//*
Segment head;

int FoodX;
int FoodY;





//*
// ***** SETUP METHODS *****
// These methods are called at the start of the game.
//*
public void settings() {
  size(2000, 2000);
}

void setup() {

head= new Segment(250,250);
frameRate(20);
dropFood();
}

void dropFood() {
  //Set the food in a new random location
    FoodX = ((int)random(50)*10);
}



//*
// ***** DRAW METHODS *****
// These methods are used to draw the snake and its food 
//*
int counter=0;
void draw() {
  int r=0;
  int g=0;
  int b=0;
counter++;
if(counter==60){
  r+=30;
  g+=30;
  b+=30;
}
  

  background(r,g, b);
   
  
  
  
  drawFood();
  drawSnake();
}

void drawFood() {
  //Draw the food
  FoodX= 250;
  FoodY=270;
  fill(145,130,239);

  rect( FoodX, FoodY, 10, 10);
}

void drawSnake() {
  //Draw the head of the snake followed by its tail
  fill(#00FFCE);
  rect(12, 34, 10, 10);
}


//*
// ***** TAIL MANAGEMENT METHODS *****
// These methods make sure the tail is the correct length.
//*

void drawTail() {
  //Draw each segment of the tail 

}

void manageTail() {
  //After drawing the tail, add a new segment at the "start" of the tail and remove the one at the "end" 
  //This produces the illusion of the snake tail moving.
  
}

void checkTailCollision() {
  //If the snake crosses its own tail, shrink the tail back to one segment
  
}



//*
// ***** CONTROL METHODS *****
// These methods are used to change what is happening to the snake
//*

void keyPressed() {
  //Set the direction of the snake according to the arrow keys pressed
  
}

void move() {
  //Change the location of the Snake head based on the direction it is moving.
  
    /*
  switch(direction) {
  case UP:
    // move head up here 
    break;
  case DOWN:
    // move head down here 
    break;
  case LEFT:
   // figure it out 
    break;
  case RIGHT:
    // mystery code goes here 
    break;
  }
  */
}

void checkBoundaries() {
 //If the snake leaves the frame, make it reappear on the other side
 
}



void eat() {
  //When the snake eats the food, its tail should grow and more food appear

}

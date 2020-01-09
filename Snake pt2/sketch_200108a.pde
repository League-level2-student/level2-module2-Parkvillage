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
int direction=UP;
int foodEaten=0;
int r;
int g;
int b;
int score;




//*
// ***** SETUP METHODS *****
// These methods are called at the start of the game.
//*

public void settings() {
  size(500, 500);
}

void setup() {

head= new Segment(250,250);
frameRate(20);
dropFood();
}

void dropFood() {
  //Set the food in a new random location
    FoodX = ((int)random(50)*10);
    FoodY = ((int)random(50)*10);
}



//*
// ***** DRAW METHODS *****
// These methods are used to draw the snake and its food 
//*

void draw() {


  background(r,g,b);
   
  
  
  
  drawFood();
  move();
  drawSnake();
  eat();
}

void drawFood() {
  //Draw the food
  fill(145,130,239);

  rect( FoodX, FoodY, 10, 10);
}

void drawSnake() {
  //Draw the head of the snake followed by its tail
  fill(#00FFCE);
  rect(head.x, head.y, 10, 10);
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
  if(keyCode==UP&&direction!=DOWN){
    direction=UP;
  }
   if(keyCode==DOWN&&direction!=UP){
    direction=DOWN;
  }
   if(keyCode==RIGHT&&direction!=LEFT){
    direction=RIGHT;
  }
   if(keyCode==LEFT&&direction!=RIGHT){
    direction=LEFT;
  }
  
}

void move() {
  //Change the location of the Snake head based on the direction it is moving.
  
    
  switch(direction) {
  case UP:
    // move head up here
    head.y-=10;
    break;
  case DOWN:
    // move head down here 
    head.y+=10;
    break;
  case LEFT:
   // figure it out 
   head.x-=10;
    break;
  case RIGHT:
    // mystery code goes here 
    head.x+=10;
    break;
  }
  checkBoundaries();
  
}

void checkBoundaries() {
 //If the snake leaves the frame, make it reappear on the other side
 if(head.x>500){
    head.x=0;
  }
  if(head.y>500){
    head.y=0;
  }
  if(head.x<0){
    head.x=500;
  }
  if(head.y<0){
    head.y=500;
  }
}



void eat() {
  //When the snake eats the food, its tail should grow and more food appear
  if(head.x==FoodX&&head.y==FoodY){
 foodEaten++;
 dropFood();
 r=(int)random(0,255);
 b=(int)random(0,255);
 g=(int)random(0,255);
 score++;
 println(score);
 
  }
 
}

 void setup()
  {
    size(510, 600);
    textAlign(CENTER,CENTER);
    noLoop();
  }
  Die dice;
  int total = 0;
  void draw()
  {
      background(255,255,255);
      //your code here
      for(int i = 0; i < 500; i+= 51){
        for(int o = 0; o < 500; o+=51){
           dice = new Die(i,o);
           if(dice.value == 1){
             total++;
           }
           if(dice.value == 2){
             total+=2;
           }
           if(dice.value == 3){
             total+=3;
           }
           if(dice.value == 4){
             total+=4;
           }
           if(dice.value == 5){
             total+=5;
           }
           if(dice.value == 6){
             total+=6;
           }
           
           dice.show();
        }
      }
      textSize(25);
      
      text("Dice Total:" + total,250,550);
  }
  void mousePressed()
  {
      redraw();
      total = 0;
  }
  class Die //models one single dice cube
  {
      int myX, myY, value;
      
      Die(int x, int y) //constructor
      {
          //variable initializations here
          myX = x;
          myY = y;
          roll();
      }
      void roll()
      {
          //your code here
         value = (int)((Math.random() * 6) + 1);
         
          
      }
      void show()
      {
          //your code here
          fill(255);
          rect(myX, myY, 50, 50, 7);
          fill(0);
          if(value == 1){
            ellipse(myX + 25 , myY + 25,5,5);
            
          }
          if(value == 2){
            ellipse(myX + 10, myY + 10,5,5);
            ellipse(myX + 40, myY + 40,5,5);
            
          }
          if(value == 3){
            ellipse(myX + 10, myY + 10,5,5);
            ellipse(myX + 25 ,myY + 25,5,5);
            ellipse(myX + 40, myY + 40,5,5);
            
          }
          if(value == 4){
            ellipse(myX + 10, myY + 10,5,5);
            ellipse(myX + 10 ,myY + 40,5,5);
            ellipse(myX + 40 ,myY + 10,5,5);
            ellipse(myX + 40, myY + 40,5,5);
            
          }
          
          if(value == 5){
            ellipse(myX + 10, myY + 10,5,5);
            ellipse(myX + 10 ,myY + 40,5,5);
            ellipse(myX + 25 ,myY + 25,5,5);
            ellipse(myX + 40 ,myY + 10,5,5);
            ellipse(myX + 40, myY + 40,5,5);
            
          }
          if(value == 6){
            ellipse(myX + 10, myY + 10,5,5);
            ellipse(myX + 10 ,myY + 25,5,5);
            ellipse(myX + 10 ,myY + 40,5,5);
            ellipse(myX + 40 ,myY + 10,5,5);
            ellipse(myX + 40 ,myY + 25,5,5);
            ellipse(myX + 40, myY + 40,5,5);
            
          }
          
          
      }
  }

 Bacteria [] bob;
 void setup()   
 {     
   size(500,500);
   background(128,128,128);
   bob = new Bacteria[300];
   for (int i = 0; i < bob.length; i++)
   {
     bob[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   for (int j = 0; j < bob.length; j++)
   {
     bob[j].move();
     bob[j].show();
   }
 }
 void mousePressed()
 {
   redraw();
   background(128,128,128);
 }
 class Bacteria    
 {     
   int myX, myY, bactColor;
   Bacteria() 
   {
     myX = 250;   
     myY = 250;
     bactColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
   }
   void move()
   {
     myX = myX + (int)(Math.random()*5) - 2;
     myY = myY + (int)(Math.random()*5) - 2;
   }
   void show()
   {
     fill(bactColor);
     ellipse(myX,myY,10,10);
   }
 } 

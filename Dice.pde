Die hi, hello;
int t = 0;
void setup()
{
  background(0);
  size(610,600);
  noLoop();
}
void draw()
{

   for(int y = 10; y < 460; y = y+60)
     {
         for(int x = 10; x< 600; x = x+60)
         {
             hi = new Die(x,y);
              hi.show();
              hi.roll();
              hi.total();}}
  
}
void mousePressed()
{
  redraw(); 
  t=0;
}

class Die
{
  int hiX, hiY, hiZ;
   Die(int x, int y)
   {
     hiX = x;
     hiY = y;

     
     

   }
   void roll()
   {
     hiZ = (int)(Math.random()*6+1);
     fill(255,0,0);
     stroke(255,0,0);
     if(hiZ == 1)
     {
        ellipse(hiX+25,hiY+25,5,5);
      t=t+1;
    }
         
      else if(hiZ == 2)
     {
           ellipse(hiX+13,hiY+13,5,5);
           ellipse(hiX+37,hiY+37,5,5);
           t = t+2;
         }
      else if(hiZ == 3)
      {
         ellipse(hiX+25,hiY+25,5,5);
         ellipse(hiX+13,hiY+13,5,5);
         ellipse(hiX+37,hiY+37,5,5);
         t=t+3;
       }
      else if(hiZ == 4)
      {
        ellipse(hiX+13,hiY+13,5,5);
        ellipse(hiX+37,hiY+13,5,5);
        ellipse(hiX+37,hiY+37,5,5);
        ellipse(hiX+13,hiY+37,5,5);
        t=t+4;
    }
       else if(hiZ ==5)
       {
        ellipse(hiX+13,hiY+13,5,5);
        ellipse(hiX+37,hiY+13,5,5);
        ellipse(hiX+37,hiY+37,5,5);
        ellipse(hiX+13,hiY+37,5,5);
        ellipse(hiX+25,hiY+25,5,5);
        t=t+5;
    }
      
      else{
        ellipse(hiX+13,hiY+13,5,5);
        ellipse(hiX+37,hiY+13,5,5);
        ellipse(hiX+37,hiY+37,5,5);
        ellipse(hiX+13,hiY+37,5,5);
        ellipse(hiX+13,hiY+25,5,5);
        ellipse(hiX+37,hiY+25,5,5);
        t=t+6;
    }}
  
   void show()
   {
     stroke(0);
     fill(0,0,255,100);
     rect(hiX,hiY,50,50,15);
   }
   void total()
   {
     stroke(255,255,255);
     fill(255,255,255);
     rect(150,500,300,80);
     fill(0);
     stroke(0);
     textSize(50);
     text("Total:" + t,180,560);
 }}
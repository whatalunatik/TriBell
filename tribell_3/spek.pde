class Spek 
{
  //Declarations
  PVector loc, vel, acl;
  float connValue;
  float despFactor;
  
   
    Spek (float x, float y, float vx, float vy)
      {
       //Instantiations
       
        loc        = new PVector(x, y);
        vel        = new PVector(vx, vy);
        acl        = new PVector(0, 0);
        connValue  = random(100);                // Who the spek likes bond with.
        despFactor = 10;                         // How willing the spek is to settle for just any old friend.
        

      }
      
  //Functions
  
  void update()
    {
      vel.add(acl);      
      
      vel.limit(2);
      
      loc.add(vel);
      
      
      checkEdge();
      display();
      
    }
  
  void display() 
    {
      //point(loc.x, loc.y);
      fill(0);
      ellipseMode(RADIUS);
      ellipse(loc.x, loc.y, 2, 2);
    }
  
  void checkEdge()
    {
      if(loc.x < 0)
        {
          loc.x = loc.x + width;
        }
      else if(loc.x > width)
        {
          loc.x = loc.x - width;
        }
      else if(loc.y < 0)
        {
          loc.y = loc.y + height;
        }
      else if(loc.y > height)
        {
          loc.y = loc.y - height;
        }
      
      
    }
  
  void accel()
    {
      
      
      
    }
  
}

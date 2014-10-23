//Declarations

ArrayList<Spek> allSpekList;

int numOfSpeks = 30;


void setup()
  {
    size(700, 700);
    allSpekList = new ArrayList<Spek>();
    for(int i = numOfSpeks; i > 0; i--)
    {
      
      allSpekList.add(new Spek(width/2, height/2, random(2) - 1, random(2) - 1));
    
    }  
  }
  
void draw()
  {
    background(255);
    
    for(int i = allSpekList.size() - 1; i >= 0; i--)
      {
       
          Spek tempSpek = allSpekList.get(i);     
          tempSpek.update();
      }
      
      
    
    

    
    
  }
  
void mouseClicked()
  {
   
    
    println(" " + allSpekList.size());
    
    
  }



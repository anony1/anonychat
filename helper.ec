import "ecere"  
import "mainpanel"
import "htmlParser"
import "HTMLView"
import "lines"
import "tables"

class Surfer : Window
{
   caption = "Surfer";
   background = black;
   opacity = 0;
   clientSize = { 800, 600 };
   position = { 150, 150 };
   moveable = true;
   hasClose = true;

   HTMLView htmlview { picture1, this, opacity = 1, visible = true, drawBehind = false, borderStyle = contour, size = { 800, 600 }, position = { 5, 10 }  };
   Picture picture1 
   {
      this, caption = "mainframe", position = {  }, image = { ":help.gif" };

      bool NotifyActivate(Window window, bool active, Window previous)
      {

         return true;
      }

      bool OnLeftButtonDown(int x, int y, Modifiers mods)
      {
         if(x > 0 && x < 400 && y > 0 && y < 360) { surfer.MenuWindowMove(null, mods); }      
   

         return true; 

      };

      bool OnLeftButtonUp(int x, int y, Modifiers mods)
      {
            if(x > 132 && x < 146 && y > 380 && y < 396) {  surfer.Destroy(0);  }   
                            
         return true;
      }

      bool OnMouseMove(int x, int y, Modifiers mods)
      {
         mainpanel.picture30.visible = false;

         return true;
      }
      
   }

   bool OnCreate(void)
   {
      File f = FileOpen(":help.html", read); surfer.htmlview.OpenFile(f, null);
      return true;
   }
};
Surfer surfer { autoCreate = false };

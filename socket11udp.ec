import "ecere"
import "mainpanel"


define samplePort11 = (atoi(portssetup.editBox15.contents));

struct SamplePacket11
{
   int stringLen;
   char string[1];   
};

class MySocket11 : Socket
{


<<<<<<< HEAD
=======
      if(count >= sizeof(SamplePacket11))
      {
         SamplePacket11 * packet = (SamplePacket11 *) buffer;
         uint size = sizeof(SamplePacket11) + packet->stringLen;

         if(count >= size)
         {

            portssetup.recvString.contents = packet->string; //recvString in portssetup 
   
            return size;
         }
         
      }

      return 0;
   }
/*      bool ()
      {
         String string = portssetup.sentString.contents;  //sentString  in portssetup 
         int len = strlen(string);
         int size = sizeof(SamplePacket11) + len;
         SamplePacket11 * packet = (SamplePacket11 *)new byte[size];
         packet->stringLen = len;
         memcpy(packet->string, string, len+1);
         (socket11).Send(packet, size);

         delete packet;
         return true;
      }  */
>>>>>>> 749a344b817a69a214c7e9806ccc6ed60d826046
}

MySocket11 socket11 {};
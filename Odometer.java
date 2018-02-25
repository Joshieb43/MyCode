public class Odometer
{
   //max mileage set to 999999
   private int MAX_MILEAGE=999999;
   private int mileage;
   
   //constructor set mileage to 0
   public Odometer()
   {
      mileage=0;
   }
   
   //get mileage returns mileage
   public int getMileage()
   {
      return mileage;
   
   }
   // increment adds 1 mile if mileage is less than 999999
   public void increment()
   {
      if (mileage < MAX_MILEAGE)
      {
         mileage++;
      }
   
   }
   // decrement minuses 1 mile if mileage is greater than 0
   public void decrement()
   {
      if (mileage > 0)
      {
         mileage--;
      }
   
   }





}
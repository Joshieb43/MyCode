public class FuelGauge
{
   //set max tank to 15 gallons
   private int MAX_GALLONS=15;
   private int fuel;
   
   //constructor sets fuel equal to f
   public FuelGauge(int f)
   {
      fuel=f;
   
   }  
   
   //get gallons returns the amount of fuel
   public int getGallons()
   {
   
      return fuel;
   }
    //increment adds fuel if fuel is less than or equal to 15
      public void increment()
   {
      if (fuel <= MAX_GALLONS)
      {
         fuel++;
      }
   
   }
   //decrement minuses fuel if fuel is greater than 0
   public void decrement()
   {
      if (fuel > 0)
      {
         fuel--;
      }
   
   }



}
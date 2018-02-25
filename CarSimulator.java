public class CarSimulator{

   public static void main(String args[])
   {
      //whatever gallons you want to start with
      int FUEL=10;
      
      
      //fuel gauge and odometer objects 
      FuelGauge fuel = new FuelGauge(FUEL);
      
      Odometer odometer = new Odometer();
      
      //the car has run out of gas set to false
      boolean runOut = false;
      
      //prints how much fuel you have
      System.out.println("fuel to start: " + FUEL);
      
      //while the car isnt out of fuel
      while (!runOut)
      
      {
      
         //add miles
         odometer.increment();
         
         //if the car has gone its mpg decrement the fuel by a gallon
         if (odometer.getMileage()%24==0)
         {
         
            fuel.decrement();
         
         }
         
         //if gallons = 0 then set run out to true and exit loop
         if (fuel.getGallons()==0)
         {
            runOut=true;
            System.out.println("your car has run out/miles travelled: "+odometer.getMileage());
            System.out.println("fuel left: "+fuel.getGallons());
         }
         //else keep going
         else
         { 
            System.out.println("miles travelled: "+odometer.getMileage());
            System.out.println("fuel left: "+fuel.getGallons());
         }
         
      
      
      
      }
      //print overall miles travelled with that tank
       System.out.println("miles travelled overall: "+odometer.getMileage());
        
   
   
   }




}
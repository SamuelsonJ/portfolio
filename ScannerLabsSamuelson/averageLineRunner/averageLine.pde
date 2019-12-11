import java.util.Scanner;
import static java.lang.System.*;
import java.text.*;

public class Average
{
   private String line;
   private Scanner scam;
   private DecimalFormat df = new DecimalFormat("#.###");

   public Average(){
     line = ("");
     scam = new Scanner("");
   }

   public Average(String s){
     line = (s);
     scam = new Scanner(s);
   }

  public void setLine(String s){
     line = (s);
     scam = new Scanner(s);
  }

  public double getCount(){
    double count=0;
    while(scam.hasNextInt()){
      scam.nextInt();
      count++;
    }
    scam = new Scanner(line);
    return count;
  }


  public double getSum(){
    double sum=0;
    while(scam.hasNextInt()){
      sum+=scam.nextInt();
    }
    scam = new Scanner(line);
    return sum;
  }

  public double getAverage(){
    double average=getSum()/getCount();
    return average;
  }

  public String getLine(){
    return line+"\n"+getAverage();
  }

  public String toString(){
    return line+"\n"+df.format(getAverage());
  }
}

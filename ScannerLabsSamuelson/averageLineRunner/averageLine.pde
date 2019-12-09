import java.util.Scanner;
import static java.lang.System.*;

public class Average
{
   private String line;
   private Scanner scam;

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

  public int getCount(){
    int count=0;
    while(scam.hasNextInt()){
      scam.nextInt();
      count++;
    }
    return count;
  }


  public int getSum(){
    int sum=0;
    while(scam.hasNextInt()){
      sum+=
    }
    return sum;
  }

  public double getAverage(){
    double average=0.0;


    return average;
  }

  public String getLine(){
    return "";
  }

  public String toString(){
    return "";
  }
}

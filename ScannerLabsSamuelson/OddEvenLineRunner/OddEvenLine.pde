import java.util.Scanner;
import static java.lang.System.*;

public class OddEvenCounter
{
  private String line;
  private Scanner scam;

   public OddEvenCounter(){
     scam = new Scanner(line);
   }

   public OddEvenCounter(String s){
     line=s;
     scam=new Scanner(s);
   }

  public void setLine(String s){
    line=s;
    scam=new Scanner(s);
  }

  public int getEvenCount(){
    int count=0;
    while(scam.hasNextInt()){
      if(scam.nextInt()%2==0)
        count++;
    }
    return count;
  }

  public int getOddCount(){
    int count=0;
    while(scam.hasNext()){
      if(scam.nextInt()%2==1)
        count++;
    }
    scam=new Scanner(line);
    return count;
  }

  public String toString(){
    return line+"\nOdds: "+getOddCount()+" Evens: "+getEvenCount();
  }
}

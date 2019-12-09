import java.util.Scanner;
import static java.lang.System.*;

public class LineCounter
{
   private String line;
   private Scanner scam;

   public LineCounter(){
    setLine("");
    scam = new Scanner("");
   }

   public LineCounter(String s){
     line=s;
     scam = new Scanner(s);
   }

  public void setLine(String s){
    line=s;
    scam = new Scanner(s);
  }

  public int getCount(){
    int count=0;  
    while(scam.hasNext()){
      scam.nextInt();
      count++;
    }
      return count;
  }

  public String getLine(){
    return line;
  }

  public String toString(){
    return getLine()+"\n"+getCount();
  }
}

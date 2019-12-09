import static java.lang.System.*;
import java.util.Scanner;

public class LineTotaller
{
   private String line;
   private Scanner scam;

  public LineTotaller(){
    setLine("");
    scam = new Scanner("");
  }

  public LineTotaller(String s){ 
    line = s;
    scam = new Scanner(s);
  }

  public void setLine(String s){
    line = s;
    scam = new Scanner(s);
  }

  public int getSum(){
    int total = 0;
    while(scam.hasNext()){
      total+=scam.nextInt();
    }
    return total;
  }

  public String getLine(){
    return line;
  }

  public String toString(){
    return getLine()+"\n"+getSum();
  }
}

import java.util.Scanner;
import static java.lang.System.*;

public class LineBreaker
{
   private String line;
   private int breaker;
   private Scanner scam;

   public LineBreaker(){
     this("",0);
     scam=new Scanner("");
   }

   public LineBreaker(String s, int b){
     line=s;
     breaker=b;
     scam = new Scanner(s);
   }

  public void setLineBreaker(String s, int b){
     line=s;
     breaker=b;
     scam = new Scanner(s);
  }

  public String getLine(){
    return "";
  }

  public String getLineBreaker(){
    String box ="";
    while(scam.hasNext()){
      for(int i=breaker; i>0; i--){
        if(scam.hasNext())
          box+=scam.next();
      }
     box+="\n";
    }
    return box;
  }

  public String toString(){
    return line+"\n"+getLineBreaker();
  }
}

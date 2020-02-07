import java.util.*;
class MovieList{
  private ArrayList<Movie> movieList = new ArrayList<Movie>();
  private int count;
  
  MovieList(ArrayList<Movie> m){
    movieList=m;
  }
  
  public int loadMovies(){
    return count;
  }
  
  public int getCount(){
    return count;
  }
  
  public double getAverageScore(){
    double average = 0;
    for(int i=0;i<movieList.size();i++){
      average+=movieList.get(i).getRating();
    }
    return (double)(average/movieList.size());
  }
  
  public String overallComment(){
    if(getAverageScore()==4)
      return "Pure Kino";
    else if(getAverageScore()>3)
      return "Coolio";
    else if(getAverageScore()>2.5)
      return "Woooooooooooah, half way there! Wooooooooahwoah! Pickle Rick is there!";
    else if(getAverageScore()>1)
      return "No thank you, next.";
    else
      return "Absolute dog";
  }
  
  public void sortByMovies(){
    Collections.sort(movieList);
  }
  
  public String toString(){
    String done="";
    Iterator bruh = movieList.iterator();
    while(bruh.hasNext())
      done+=bruh.next();
    return done;
  }
}

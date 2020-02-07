import java.util.*;
void setup(){
  String[] reviews = loadStrings("movieReviews.txt");
  ArrayList<Movie> movies = new ArrayList<Movie>();
  for(String i : reviews){
    Scanner scan=new Scanner(i);
    movies.add(new Movie(scan.nextInt(), scan.nextLine()));
  }
  
  MovieList mov = new MovieList(movies);
  mov.sortByMovies();
  println(mov.overallComment());
  println(mov);
  println(mov.getAverageScore());
}

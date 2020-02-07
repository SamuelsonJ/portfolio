class Movie implements Comparable<Movie>{
  private int rating;
  private String review;
  
  Movie(int r, String sr){
    rating = r;
    review = sr;
  }
  
  public int getRating(){
    return rating;
  }
  
  public String getReview(){
    return review;
  }
  
  public int compareTo(Movie other){
    if(rating>other.getRating())
      return 1;
    else if(rating<other.getRating())
      return -1;
    else
      return 0;
  }
  
  public String toString(){
    return "Rating: "+rating+" Review: "+review;
  }
}

import java.util.Arrays;
//String text="Hello, I am nine syllables long. And it is great!";
String text="The FitnessGram Pacer Test is a multistage aerobic capacity test that progressively gets more difficult as it continues.\nThe 20 meter pacer test will begin in 30 seconds. Line up at the start.\n The running speed starts slowly but gets faster each minute after you hear this signal bodeboop.\n A sing lap should be completed every time you hear this sound. ding Remember to run in a straight line and run as long as possible.\n The second time you fail to complete a lap before the sound, your test is over. The test will begin on the word start.\n On your mark. Get ready!… Start.";
//String text= loadStrings("rAndJActOne.txt");
String line = text.toLowerCase();
String[] words = line.split("[\\W]+");

void setup() {
  //calculation setup
  System.out.println("Letters: "+countLetters(line)+"; Consonants: "+countConsonants(line)+"; Vowels: "+countVowels(line)+"; Syllables: "+countSyllables(line)+"; Words: "+countWords(words)+"; Sentences: "+countSentences(line)+"; Flesch Score: "+getFleschScore(line, words)+"; Grade Level: "+getGradeLevel(line, words));
  
  //UI setup
  size(800, 800);
}

void draw(){
  background(0);
  text("Letters: "+countLetters(line), 20, 640);
  text("Consonants: "+countConsonants(line), 20, 660);
  text("Vowels: "+countVowels(line), 20, 680);
  text("Syllables: "+countSyllables(line), 20, 700);
  text("Words: "+countWords(words), 20, 720);
  text("Sentences: "+countSentences(line), 20, 740);
  text("Flesch Score: "+getFleschScore(line, words), 20, 760);
  text("Grade Level: "+getGradeLevel(line, words), 20, 780);
  text("Base Text: "+text, 10, 300);
}

  public int countLetters(String t){
    String letters = t.replaceAll("[a-zA-Z]", "");
    return t.length()-letters.length();
  }
  public int countConsonants(String t) {
    String vowels = t.replaceAll("[bcdfghjklmnpqrstvwxz]", "");
    return t.length()-vowels.length();
  }
  public int countVowels(String t) {
    String consonants = t.replaceAll("[aeiouy]", "");
    return t.length()-consonants.length();
  }
  public int countSyllables(String t) {
    String syllables = t.replaceAll("[aeiouy][aeiouy]", "a").replaceAll("e ", " ").replaceAll("[bcdfghjklmnpqrstvwxz\\p{Punct}\\s]", "");
    return syllables.length();
  }
  public int countWords(String[] w) {
    return w.length;
  }
  public int countSentences(String t) {
    String punctuation = t.replaceAll("[^?!.]", "");
    return punctuation.length();
  }  
  public double getFleschScore(String t, String[] w) {
    double wordCount = countWords(w);
    double syllables = countSyllables(t);
    double sentences = countSentences(t);
    return 206.835-1.015*(wordCount/sentences)-84.6*(syllables/wordCount);
  }  
  public double getGradeLevel(String t, String[] w) {
    double wordCount = countWords(w);
    double syllables = countSyllables(t);
    double sentences = countSentences(t);
    return  0.39*(wordCount/sentences)+11.8*(syllables/wordCount)-15.59;
  }  

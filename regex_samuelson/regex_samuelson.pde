import java.util.Arrays;

void setup() {
  String text="Hello, I am nine syllables long. And it is great!";
  String line = t.toLowerCase();
  String[] words = line.split("[\\W]+");
  System.out.println("Letters: "+countLetters(text)+"; Consonants: "+countConsonants(text)+"; Vowels: "+countVowels(text)+"; Syllables: "+countSyllables(text)+"; Words: "+countWords(words)+"; Sentences: "+countSentences(text)+"; Flesch Score: "+getFleschScore(text)+"; Grade Level: "+getGradeLevel(text));
}

  public int countLetters(String t){
    String line = t.toLowerCase();
    String[] letters = line.split("[^a-z]");
    for(int i=0; i<letters.length;i++){
       System.out.println(letters[i]);
    }
    return letters.length;
  }
  public int countConsonants(String t) {
    return 0;
  }
  public int countVowels(String t) {
    return 0;
  }
  public int countSyllables(String t) {
    return 0;
  }
  public int countWords(String[] w) {
    return w.length;
  }
  public int countSentences(String t) {
    return 0;
  }  
  public int getFleschScore(String t) {
    return 0;
  }  
  public int getGradeLevel(String t) {
    return 0;
  }  

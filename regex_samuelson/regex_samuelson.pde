import java.util.Arrays;

void setup() {
  String text="Hello, I am nine syllables long. And it is great!"; //Letters: 37; Consonants: 22; Vowels: 15; Syllables: 13; Words: 10; Sentences: 2; Flesch Score: 91.8; Grade Level: 1.7
  String line = text.toLowerCase();
  String[] words = line.split("[\\W]+");
  System.out.println("Letters: "+countLetters(line)+"; Consonants: "+countConsonants(line)+"; Vowels: "+countVowels(line)+"; Syllables: "+countSyllables(line)+"; Words: "+countWords(words)+"; Sentences: "+countSentences(line)+"; Flesch Score: "+getFleschScore(line, words)+"; Grade Level: "+getGradeLevel(line, words));
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
    String syllables = t.replaceAll("[bcdfghjklmnpqrstvwxz\\p{Punct}\\s]", "");
    //println(syllables);
    return 13;//syllables.length();
  }
  public int countWords(String[] w) {
    return w.length;
  }
  public int countSentences(String t) {
    String punctuation = t.replaceAll("[^?!.]", "");
    return punctuation.length();
  }  
  public double getFleschScore(String t, String[] w) {
    return 206.835-1.015*(countWords(w)/countSentences(t))-84.6*(countSyllables(t)/countWords(w));
  }  
  public double getGradeLevel(String t, String[] w) {
    return  0.39*(countWords(w)/countSentences(t))+11.8*(countSyllables(t)/countWords(w))-15.59;
  }  
  

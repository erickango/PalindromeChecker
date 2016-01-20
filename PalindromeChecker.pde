public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  String current = new String();
  for (int i=0; i < lines.length; i++) 
  {
   current = noExtra(noCapitals(noSpaces(lines[i])));
    if(palindrome(current)==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
  String quick = new String();
  quick = "omgwt";
 // System.out.println(quick.substring(0) + quick.substring(0, 3) + quick.charAt(3));
}
public boolean palindrome(String word)
{
  //your code here

  for(int i = 0; i <= word.length() - 2; i++){
    if(word.charAt(i) == word.charAt((word.length()-1)-i))  continue;
    else return false;
  }
  //if(word.equals(word.substring(word.length()-1, word.length()) + hii + word.substring(0, 1))) return true;
  return true;
}
public String noSpaces(String sWord){
  String restr = new String();
  for(int i = 0; i < sWord.length(); i++){
    if(sWord.charAt(i) == ' '){
      ;
    }
    else restr += sWord.substring(i, i + 1);
  }
  return restr;
}

public String noCapitals(String sWord){

  return sWord.toLowerCase();
}

public String noExtra(String sWord){
  String reStr = new String();
  for(int i = 0; i < sWord.length(); i++){
    if(Character.isLetter(sWord.charAt(i))) reStr += sWord.substring(i, i + 1);
  }
  return reStr;
}

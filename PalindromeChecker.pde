public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
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
  String hii = new String();
  for(int i = word.length() - 2; i <= 1; i++){
    hii += word.substring(i, i + 1);
  }
  if(word.equals(word.substring(word.length()-1, word.length()) + hii + word.substring(0, 1))) return true;
  return false;
}


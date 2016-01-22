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
}
public boolean palindrome(String word)
{
  String x = new String();
  /*for(int i=word.length()-1; i>=0; i--)
   if(word.charAt(i) != ' ')
      x = x + word.substring(i,i+1);
  String y = new String();
  for(int i = 0; i< word.length(); i++)
   if(word.charAt(i) != ' ')
    y = y+word.substring(i,i+1);*/
  for(int i=word.length()-1; i>=0; i--)
    if(Character.isLetter(word.charAt(i))==true)
      x = x + word.substring(i,i+1);
  String y = new String();
  for(int i = 0; i< word.length(); i++)
    if(Character.isLetter(word.charAt(i))==true)
      y = y + word.substring(i,i+1);
  if(y.equalsIgnoreCase(x))
    return true;
  return false;
}


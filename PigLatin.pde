public void setup()
{
    String[] lines = loadStrings("words.txt");
    System.out.println("there are " + lines.length + " lines");
    for (int i = 0 ; i < lines.length; i++)
    {
      System.out.println(pigLatin(lines[i]));
    }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{  
    for(int i = 0; i < sWord.length(); i++){
        if(isVowel(sWord.charAt(i)) == true ){
            return i;
        }
    }
    return -1;
}
 
public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
    if(findFirstVowel(sWord) == -1)
    {
        return sWord + "ay";
    }
    else if(isVowel(sWord.charAt(0)) == false)
    {
       return sWord + "ay";
    }
    else if(isVowel(sWord.charAt(0)) == true)
    {
    	return sWord 
    }
    else
    {
    	return "ERROR";
    }
}
 
public boolean isVowel(char letter){
 /*   if(letter == "a"){return true;}
    else if(letter == "e"){return true;}
    else if(letter == "i"){return true;}
    else if(letter == "o"){return true;}
    else if(letter == "u"){return true;}
    else {return false;}
 */
    char [] vowels = {'a','e','i','o','u'};
    for(int i = 0; i < 5; i++){if(letter == vowels[i]){return true;}}
    return false;
}
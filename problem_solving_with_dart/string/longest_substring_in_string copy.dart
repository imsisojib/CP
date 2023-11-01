void main(){
  print(LongestSubStringInString().findLongestSubstringForNonRepeatingChar("abcdakldbcac"));
}

class LongestSubStringInString{

  //LeetCode Problem: 3
  //may be similar: 159,340
  String findLongestSubstringForNonRepeatingChar(String s) {
    if (s.isEmpty) {
      return s;
    }
    if (s.length == 1) {
      return s;
    }

    int currentIndex = 0;
    List longest = [];

    while(currentIndex<=s.length-1){

      //if longest is already greater than remaining chars, then just break the loop! Longest is found already...
      if(longest.length > s.length-(currentIndex+1)) break;

      List nonRepeatedChars = [];
      for(int i = currentIndex; i<s.length; i++){
        
        if(nonRepeatedChars.contains(s[i])){
          //means non-repeated chars rule broke
          //no need to check remainings, break the inner loop
          break;
        }else{
          nonRepeatedChars.add(s[i]);
        }
      }
      //end of inner loop [reached to last char or found repeated chars]
      //now nonRepeatedChars could be the longest substring, so compare and save the longest
      if(longest.length<nonRepeatedChars.length){
        longest = nonRepeatedChars;
      }

      //let's check from next substring:-> currentIndex++ to s.length
      currentIndex++;
      

    }

    StringBuffer stringBuffer = StringBuffer();
    for(var element in longest){
      stringBuffer.write(element);
    }

    return stringBuffer.toString();
  }


}
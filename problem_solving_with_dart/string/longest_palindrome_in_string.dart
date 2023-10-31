void main(){
  print(LongestPalindromeInString().findLongestPalindrome("abcdadbcac"));
}

class LongestPalindromeInString{

  ///From Yifan’s comment below.
  ///Time O(n2ˆ), Space O(1)
  String findLongestPalindrome(String s) {
    if (s.isEmpty) {
      return s;
    }
    if (s.length == 1) {
      return s;
    }

    String longest = s.substring(0, 1);
    for (int i = 0; i < s.length; i++) {
      // get longest palindrome with center of i
      String tmp = helper(s, i, i);
      if (tmp.length > longest.length) {
        longest = tmp;
      }
      // get longest palindrome with center of i, i+1
      tmp = helper(s, i, i + 1);
      if (tmp.length > longest.length) {
        longest = tmp;
      }
    }
    return longest;
  }

  // Given a center, either one letter or two letter,
  // Find longest palindrome
  String helper(String s, int begin, int end) {
    while (begin >= 0 && end <= s.length - 1 && s[begin] == s[end]) {
      begin--;
      end++; 
    }
    return s.substring(begin + 1, end);
  }

}
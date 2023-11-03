
void main(){
  
  print(longestCommonSubstring(["reflower","flow","flight"]));

}

//while finding only common prefix(matching from first)
//sort the list in ascending,
//match last two to gest the largest matching prefix -> cause the list is already sorted by charactes a, ab, abc...
String longestCommonPrefix(List<String> strs) {
    strs.sort();
     int point = 0;
     String first = strs.first;
     String last = strs.last;
     int min = first.length < last.length ? first.length : last.length;
     while(point < min && first[point] == last[point]){
       point++;
     }
     return first.substring(0,point);
  
  }


String longestCommonSubstring(List<String> strs){

  String min = smallestString(strs);
  if(min.isEmpty) return "";

  //let $min is the possible largest prefix
  List<String> allPossibleSubs = findAllSubstrings(min);
  print(allPossibleSubs);
  String longestPrefix = "";
  for(var prefix in allPossibleSubs){
    //if already found prefix is logestPrefix, then just break the main loop!! 
    if(longestPrefix.isNotEmpty && longestPrefix.length>prefix.length) break;

    int passed = 0;
    for(var parent in strs){
      if(!parent.contains(prefix)) break;
      passed++;
    }
    print("____passed: $passed, ___total: ${strs.length}");
    if(passed==strs.length && prefix.length>longestPrefix.length){
      longestPrefix = prefix;
    }
  }



  return longestPrefix;
}

List<String> findAllPrefixSubstrings(String str){
      List<String> subs = [];
    // First loop for starting index
    while(subs.isNotEmpty){
      subs.add(str);
    }
    for (int i = 0; i < str.length; i++) {
        StringBuffer subStr = StringBuffer();
        // Second loop is generating sub-string
        for (int j = i; j < str.length; j++) {
          subStr.write(str[j]);
          subs.add(subStr.toString());
        }
      }

    subs.sort(compare);
    return subs;
  }

List<String> findAllSubstrings(String str){
      List<String> subs = [];
    // First loop for starting index
    for (int i = 0; i < str.length; i++) {
        StringBuffer subStr = StringBuffer();
        // Second loop is generating sub-string
        for (int j = i; j < str.length; j++) {
          subStr.write(str[j]);
          subs.add(subStr.toString());
        }
      }

    subs.sort(compare);
    return subs;
  }

int compare(String s1, String s2){
  if(s1.length==s2.length){
    //for equal length no need to change position in the list
    return 0;
  }
  return s1.length > s2.length? 0: 1; //deascending order
}

String smallestString(List<String> strs){
  if(strs.isEmpty) return "";

  String min = strs[0];
  for(int i=1; i<strs.length; i++){
    if(min.length > strs[i].length){
      min = strs[i];
    }
  }
  return min;

}
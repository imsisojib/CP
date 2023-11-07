
//import '../stack/stack.dart';

void main(List<String> args) {

  print(isValid("({[]})"));

}

//LeetCode: 20
//Approach: Stack
bool isValidBest(String s) {
    List<String> stack = [];

    for (int i = 0; i < s.length; i++) {

      if (s[i] == '(' || s[i] == '[' || s[i] == '{') {
        stack.add(s[i]);
      } else if (s[i] == ')' && stack.isNotEmpty && stack.last == '(') {
        stack.removeLast();
      } else if (s[i] == ']' && stack.isNotEmpty && stack.last == '[') {
        stack.removeLast();
      } else if (s[i] == '}' && stack.isNotEmpty && stack.last == '{') {
        stack.removeLast();
      } else {
        return false;
      }
    }

    return stack.isEmpty;
}

//my solution
bool isValid(String s) {
  //best case
  if(s.length<=1) return false;

  //Stack<String> stack = Stack();
  List<String> strs = [];

  //check until 
  for(int i=0; i<s.length; i++){
    // if(stack.isEmpty){
    //   stack.push(s[i]);
    //   continue;
    // }

    if(strs.isEmpty){
      strs.add(s[i]);
      continue;
    }

    //var last = stack.pop();
    // print("-----index: $i, last: $last, indexValue: ${s[i]}");
    // if(startingOf(s[i])==last) continue;
    // else {
    //   stack.push(last);
    //   stack.push(s[i]);
    // } 
    
    print("-----index: $i, last: ${strs[strs.length-1]}, indexValue: ${s[i]}");
    if(startingOf(s[i])==strs[strs.length-1]) {
      //remove the last position, don't neet to add ith value
      strs.removeLast();
    }
    else {
      strs.add(s[i]);
    } 

  }

  //print(stack.toString());

  //return stack.isEmpty;
  return strs.isEmpty;
}

//data table
String startingOf(String paren){
  switch(paren){
    case ")": return "(";
    case "}": return "{";
    case "]" : return "[";

    default: return "";

  }
}
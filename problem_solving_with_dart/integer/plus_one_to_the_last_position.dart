void main(List<String> args) {
  print(plusOne([9,9,9]));
}

//LeetCode: 66
List<int> plusOneBest(List<int> digits) {
   for(int i = digits.length-1 ; i>=0 ; i--) {
     if(digits[i] < 9){
       digits[i] ++;
       return digits;
     }
       digits[i] = 0;
    }
    digits.insert(0, 1);
    return digits;
  }

//my solution
List<int> plusOne(List<int> digits) {
  
  int lastIndex = digits.length-1;
  while(lastIndex > -1){

    if((digits[lastIndex]+1)==10){
      //means overflow = 1, so add overflow to previous index
      digits[lastIndex] = 0;
      lastIndex--;

    }else{
      //means just add +1 and return the list
      digits[lastIndex] = digits[lastIndex]+1;
      break;
    }
  }

  if(lastIndex == -1 ){
      //means traverse back to first position to add overflow, means extra digits, so put it on first and return the digits
      digits.insert(0, 1);
  }

  return digits;  
}


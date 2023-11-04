void main() {
  print(romanToInt("MCDLXXVI"));  //1476
}

//LeetCode: 13
//best for runtime
int romanToIntBest(String s) {
      int total = 0;
      Map<String, int> nums = {
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
        };
      for (int i = 0; i < s.length; i++) {
          if (i < s.length - 1 && nums[s[i]]! < nums[s[i + 1]]!) {
              total -= nums[s[i]]!;
          } else {
              total += nums[s[i]]!;
          }
      }
      return total;
}

///MY SOLUTION
int romanToInt(String s) {
    int index = 0;
    int intValue = 0;
    //calculating less then 2 digits roman first
    if(s.length<=2) return conversionChart(s);

    //make sure to pass 2digit roman in the conversionChart
    while(index < s.length){
      if(index+1 <s.length){
        //means has next value
        if(conversionChart(s[index])< conversionChart(s[index+1])){
          //means IV, XL, XC etc...so
          intValue += conversionChart(s[index]+s[index+1]);
          index = index+2;
        }else{
          //means single digit: I, V, X, L ....
          intValue += conversionChart(s[index]);
          index++;
        }
      }else{
        //means last index
        intValue += conversionChart(s[index]);
        index++;
      }
    }
  return intValue;
}

int conversionChart(String roman){
  print("------conversion: $roman");
  switch(roman){
    case "I": return 1;
    case "V": return 5;
    case "X": return 10;
    case "L": return 50;
    case "C": return 100;
    case "D": return 500;
    case "M": return 1000;
    case "IV": return 4;
    case "XL": return 40;
    case "IX": return 90;
    case "XC": return 90;
    case "CD": return 400;
    case "CM": return 900;
    default: {
      return conversionChart(roman[0])+conversionChart(roman[1]);
    } 
  }
}
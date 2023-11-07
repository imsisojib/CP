void main(List<String> args) {
  print(addBinaryBest("11", "1"));

  //print(int.parse("11", radix: 2));
  //print(4.toRadixString(2));

}

//LeetCode: 67
//Best Solution
String addBinaryBest(String a, String b) {
  int carry = 0;
  String result = '';
  int i = a.length - 1;
  int j = b.length - 1;

  //loop until a or is not empty or carry is not equal to 0
  while (i >= 0 || j >= 0 || carry > 0) {
    int sum = carry;
    if (i >= 0) sum += int.parse(a[i]);
    if (j >= 0) sum += int.parse(b[j]);

    //applied basic rules: num/2
    result = (sum % 2).toString() + result;
    carry = sum ~/ 2;

    i--;
    j--;
  }

  return result;
}

//my solution :P
String addBinary(String a, String b) {
  return (BigInt.parse(a, radix: 2)+BigInt.parse(a, radix: 2)).toRadixString(2);
}
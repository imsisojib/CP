//PROBLEM STATEMENT
/*
LeetCode: 136
Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
You must implement a solution with a linear runtime complexity and use only constant extra space.
*/

//SOLUTION: using XOR
/**
 * Need to remove similar number
 * So, here we can use Exclusive OR (XOR) to dismiss similar value
 
 * XOR rules:
 * A - B = A ^ B
 * 1 - 1 = 0
 * 1 - 0 = 1
 * 0 - 0 = 0

 * so if we do 8 ^ 8, it will be 0
 
 */


void main(List<String> args) {
  print(singleNumber([-336,513,-560,-481,-174,101,-997,40,-527,-784,-283,-336,513,-560,-481,-174,101,-997,40,-527,-784,-283,354]));
}


int singleNumber(List<int> nums) {
  int uniqueNum = 0;

  for(int i = 0; i<nums.length; i++){
    uniqueNum ^= nums[i];
    print("----ith value: ${nums[i]},  uniqueNum = $uniqueNum");
  }

  return uniqueNum;
}
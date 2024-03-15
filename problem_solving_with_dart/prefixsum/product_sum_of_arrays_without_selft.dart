void main(List<String> args) {
  print(productExceptSelf([1,2,3,4]));
}

///LeetCode:238
///sum of elements except selft

// Intuition:
// Instead of using two separate arrays to store left and right products, we can optimize the solution to use constant space by calculating the left and right products simultaneously and directly updating the result array.

// Approach:
// Single Pass: Iterate through the array twice.
// Calculate Left Products and Update Result: During the first pass, calculate the product of all elements to the left of each element and update the result array accordingly.
// Calculate Right Products and Update Result: During the second pass, calculate the product of all elements to the right of each element and update the result array with the final result.

List<int> productExceptSelf(List<int> nums) {
        int n = nums.length;
        List<int> result = List.filled(n, 0);
        
        result[0] = 1;
        for (int i = 1; i < n; i++) {
            result[i] = result[i - 1] * nums[i - 1];
        }
        
        int rightProduct = 1;
        for (int i = n - 1; i >= 0; i--) {
            result[i] *= rightProduct;
            rightProduct *= nums[i];
        }
        
        return result;
  }

// Intuition:
// The approach involves calculating the product of all elements to the left and right of each element in the array separately and then combining them to get the final result.
// Approach:
// Calculate Left Products: Iterate through the array from left to right, storing the product of all elements to the left of each element in a separate array.
// Calculate Right Products: Iterate through the array from right to left, storing the product of all elements to the right of each element in another separate array.
// Combine Results: Multiply corresponding elements from the left and right product arrays to get the product of all elements except the current one, which forms the final result.

  // List<int> productExceptSelf(List<int> nums) {
  //     int n = nums.length;
  //     List prefixProduct = List.filled(n, 1);
  //     List suffixProduct = List.filled(n, 1);
      
  //     int prefix = 1;
  //     for(int i = 0; i < n; i++) {
  //         prefixProduct[i] = prefix;
  //         prefix *= nums[i];
  //     }

  //     int suffix = 1;
  //     for(int i = n - 1; i >= 0; i--){
  //         suffixProduct[i] = suffix;
  //         suffix *= nums[i];
  //     }

  //     List<int> result = List.filled(n, 0);
  //     for(int i = 0; i < n; i++) {
  //         result[i] = prefixProduct[i] * suffixProduct[i];
  //     }

  //     return result;

  // }
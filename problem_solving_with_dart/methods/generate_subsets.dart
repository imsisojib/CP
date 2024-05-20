/*
We iterate over all numbers from 0 to 2^𝑛−1 (where 𝑛 is the length of the array), as each number represents a subset.
For each number 
𝑖, we create a subset by examining its binary representation.
If the j-th bit of i is set (meaning i AND 2^𝑗 is greater than 0),
we include the 𝑗-th element of the array in the subset.
After constructing each subset, we add it to the list of subsets.
Finally, we return the list of subsets.
*/


void main() {
  List<int> array = [1, 2, 3];
  List<List<int>> subsets = generateSubsets(array);
  print(subsets); // Output: [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]
}

List<List<T>> generateSubsets<T>(List<T> array) {
  List<List<T>> subsets = [];
  int n = array.length;

  for (int i = 0; i < (1 << n); i++) {
    List<T> subset = [];
    for (int j = 0; j < n; j++) {
      if ((i & (1 << j)) > 0) {
        subset.add(array[j]);
      }
    }
    subsets.add(subset);
  }

  return subsets;
}

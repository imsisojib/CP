# Sort Linked List

## Merge Sort
Algorithm
We need to call the mergeSort() function. Inside the mergeSort() function, we need to perform certain steps:

* First, handle the base case i.e. if the head pointer of the linked list is pointing to null then we cannot perform anything, so return.
* Else, we will divide the linked list into smaller halves.
* Now, we will sort the smaller halves of the linked list.
* Finally, we will merge this sorted linked list and update the head pointer pointing to the head of the merged linked list.

### Complexity: 
Time Complexity: O(nlogn) <br>
Space Auxilarity: O(1)


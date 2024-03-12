import '../linkedlist/listnode.dart';

main(){
  var head = removeZeroSumSublists(ListNode(1, ListNode(2, ListNode(3, ListNode(-3,ListNode(1))))));
  while(head!=null){
    print(head.val);
    head = head.next;
  }
}

ListNode? removeZeroSumSublists(ListNode? head) {
        ListNode? front = new ListNode(0, head);
        ListNode? current = front;
        int prefixSum = 0;
        Map<int, ListNode?> prefixSumToNode = {};
        prefixSumToNode[0] = front;

        // Calculate the prefix sum for each node and add to the hashmap
        // Duplicate prefix sum values will be replaced
        while (current != null) {
            prefixSum += current.val;
            prefixSumToNode[prefixSum] = current;
            current = current.next;
        }

        print(prefixSumToNode);

        // Reset prefix sum and current
        prefixSum = 0;
        current = front;

        // Delete zero sum consecutive sequences 
        // by setting node before sequence to node after
        while (current != null) {
            prefixSum += current.val;
            print(prefixSum);
            current.next = prefixSumToNode[prefixSum]?.next;
            current = current.next;
        }
        return front.next; 
    }


//https://leetcode.com/problems/remove-zero-sum-consecutive-nodes-from-linked-list/editorial/
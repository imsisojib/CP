import 'listnode.dart';
import 'merge_two_sorted_linkedlist.dart';

void main(){
  var node = ListNode(1);
  node.next = ListNode(20);
  node.next?.next = ListNode(12);
  node.next?.next?.next = ListNode(-1);


  //SortLinkedList().bubbleSort(node);
  //node.printValues();

  SortLinkedList().mergeSort(node)?.printValues();


}

class SortLinkedList{

    //Approach: bubbleSort
    //Time Complexity: O(n^2) [InsersionSort, QuickSort all are same time complexity]
    //Auxilary Space: O(1)
    void bubbleSort(ListNode? head) {
        bool swapped;
        ListNode? current;
 
        if (head == null) return;
 
        do {
            swapped = false;
            current = head;
 
            while (current?.next != null) {
                if (current!.val > current.next!.val) {
                    swap(current, current.next!);
                    swapped = true;
                }
                current = current.next;
            }

        } while (swapped);

    }

    void swap(ListNode a, ListNode b) {
        var tmp = b.val;
        b.val = a.val;
        a.val = tmp;
    }



    ///Approach: MergeSort  [Best of all sorting algorithm]
    ///Time Complexity: O(nlogn)
    ///Space Auxilarity: O(1)
    /* Function to perform merge sort on linked list */
  ListNode? mergeSort(ListNode? headRef) {
    var head = headRef;
    var a, b;
  
    /* Base case -- length 0 or 1 */
    if (head == null || head.next == null) {
      return head;
    }
  
    /* Split head into 'a' and 'b' sublists */
    var splitedNodes = frontBackSplit(head);
    var frontRef = splitedNodes[0];
    var backRef = splitedNodes[1];
  
    /* Recursively sort the sublists */
    a = mergeSort(frontRef);
    b = mergeSort(backRef);
  
    /* Merge the two sorted lists using sortedMerge technique*/
    return MergeTwoSortedLinkedList().merge(a, b);
  }


    List<ListNode?> frontBackSplit(source) {
      var fast = source.next;
      var slow = source;
    
      /* Advance 'fast' two nodes, and advance 'slow' one node */
      while (fast != null) {
        fast = fast.next;
        if (fast != null) {
          slow = slow.next;
          fast = fast.next;
        }
      }
    
      /* 'slow' is before the midpoint in the list, so split it in two at that point. */
      var frontRef = source;
      var backRef = slow.next;
      slow.next = null;
    
    return [frontRef, backRef];
}
 
}
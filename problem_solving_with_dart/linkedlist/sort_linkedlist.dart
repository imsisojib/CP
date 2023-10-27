import 'listnode.dart';

void main(){
  var node = ListNode(1);
  node.next = ListNode(20);
  node.next?.next = ListNode(12);
  node.next?.next?.next = ListNode(-1);


  SortLinkedList().bubbleSort(node);
  node.printValues();
}

class SortLinkedList{

    //Approach: bubbleSort
    //Time Complexity: O(n^2)
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
}
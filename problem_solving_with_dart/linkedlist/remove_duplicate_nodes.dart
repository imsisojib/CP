import 'listnode.dart';

void main(List<String> args) {
  deleteDuplicates(ListNode(1, ListNode(1, ListNode(1,ListNode(1, ListNode(2))))))?.printValues();
}

//changing object pointer address
ListNode? deleteDuplicates(ListNode? head) {
      ListNode? current = head;
      //changing object pointer just...
      while(current?.next != null){
          if(current?.val == current?.next?.val){
              current?.next = current.next?.next;
          }else{
              current = current?.next;
          }
      }
      return head;
  }

  //recursion function
   ListNode? deleteDuplicatesByRecursion(ListNode? head) {
    if (head == null || head.next == null) return head;
    if (head.val == head.next!.val) return deleteDuplicates(head.next);
    return ListNode(head.val, deleteDuplicates(head.next));
    
  }
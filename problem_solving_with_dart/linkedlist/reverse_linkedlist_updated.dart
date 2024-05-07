import 'listnode.dart';

void main(){

  ListNode node = ListNode(1);
  node.next = ListNode(0);
  node.next?.next = ListNode(0);
  node.next?.next?.next = ListNode(9);
  node.next?.next?.next?.next = ListNode(8);
  node.printValues();

  print("\n\n---------reversed:");
  reverseList(node)?.printValues();

}

ListNode? reverseList(ListNode? head) {
  print("\n\n---------reverseList head:");
  head?.printValues();
  ListNode? result;
  ListNode? temp = ListNode(head!.val);

  head = head.next;
  while(head!=null){
    result = ListNode(head.val);
    result.next = temp;

    temp = result;

    print("after first iteration");

    result.printValues();

    head = head.next;
  }

  return result;
}
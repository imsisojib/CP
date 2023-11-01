import 'listnode.dart';

void main(){

  ListNode node = ListNode(1);
  node.next = ListNode(0);
  node.next?.next = ListNode(0);
  node.next?.next?.next = ListNode(9);
  node.next?.next?.next?.next = ListNode(8);

  node.printValues();

  print("\n\n---------reversed:");
  ReverseLinkedList().reverse(node)?.printValues();

}

class ReverseLinkedList{

  ListNode? reverse(ListNode? listNode){
    //we will use Stack appraoch..pushing all nodes into the stack, then poping last element and change the reference
    //there is no direct stack data types for dart, so will use list[]

    ListNode? result;
    List<ListNode?> nodes = [];
    ListNode? next = listNode;
    
    while(next!=null){

      nodes.add(
        ListNode(
          next.val,
        )
      );

      next = next.next;
    }

    result = nodes.removeLast();
    next = result;
    while(nodes.isNotEmpty){
      next?.next = nodes.removeLast();
      next = next?.next;
    }

    return result;

  }
}
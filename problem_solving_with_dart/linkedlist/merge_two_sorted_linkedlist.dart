import 'listnode.dart';

void main(){

  MergeTwoSortedLinkedList().merge(
      ListNode(1,ListNode(3,null)),
      ListNode(0,ListNode(5,null)),
    )?.printValues();
}

class MergeTwoSortedLinkedList{

  //APPROACH: recursion
  ListNode? merge(ListNode? a, ListNode? b){
    ListNode? result;
    //base case to return from Recursion
    if(a==null) return b; //best-case
    if(b==null) return a; //best-case

    if(a.val<=b.val){
      //considering as Head
      result = a;
      result.next = merge(a.next, b); //finding next using recursion.
    }else{
      //considering as Head
      result = b;
      result.next = merge(b.next, a); //finding next using recursion.
    }

    return result;
  }
}
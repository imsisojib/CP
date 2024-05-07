class ListNode {
   int val;
   ListNode? next;
   ListNode([this.val = 0, this.next]);

  void printValues(){

    ListNode? node = this;
    
    while(node != null){
      print(node.val);
      node = node.next;
    }
  }

}
class ListNode {
   int val;
   ListNode? next;
   ListNode([this.val = 0, this.next]);

  void printValues(){

    ListNode? next = this;
    
    while(next != null){
      print(next.val);
      next = next.next;
    }
  }

}
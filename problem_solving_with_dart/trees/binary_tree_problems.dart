 import 'dart:collection';

class TreeNode {
   int val;
   TreeNode? left;
   TreeNode? right;
   TreeNode([this.val = 0, this.left, this.right]);
 }


 void main(){
  //TreeNode root = TreeNode(2);
  //root.left = TreeNode(-1);
  //root.right = TreeNode(5);

  //print(sumNumbers(root));

  //print("z".codeUnits);
  //print(String.fromCharCode(97));

  //print("result = ${maxPathSum(root)}");


  TreeNode inputRoot = TreeNode(1);
  inputRoot.left = TreeNode(2);
  inputRoot.right = TreeNode(2);
  inputRoot.left?.left = TreeNode(3);
  inputRoot.left?.right = TreeNode(3);
  inputRoot.right?.left = TreeNode(3);
  inputRoot.right?.right = TreeNode(3);

  TreeNode? outputRoot = addOneRow(inputRoot, 99, 4);
  Queue<TreeNode> queue = Queue();
  queue.add(outputRoot!);
  while(queue.isNotEmpty){
    TreeNode current = queue.removeFirst();
    print("----value: ${current.val}");
    if(current.left!=null) queue.addLast(current.left!);
    if(current.right!=null) queue.addLast(current.right!);
  }


 }

  //LeetCode: 129. Sum Root to Leaf Numbers (medium)
 int sumNumbers(TreeNode? root) {
    int sum = 0;
    Queue<TreeNode> queue = Queue();
    if(root!=null) queue.add(root);
    while(queue.isNotEmpty){
      TreeNode popped = queue.removeFirst();
      if(popped.left!=null) {
        popped.left!.val = (popped.val*10) + popped.left!.val;
        queue.add(popped.left!);
      };
      if(popped.right!=null) {
        popped.right!.val = (popped.val*10) + popped.right!.val;
        queue.add(popped.right!);
      }

      print(popped.val);
      if(popped.left==null && popped.right==null){
        sum += popped.val;
      }

    }
    
    return sum;
  }

  //LeetCode: 112. Path Sum (easy)
  bool hasPathSum(TreeNode? root, int targetSum) {
    Queue<TreeNode> queue = Queue();
    if(root!=null) queue.add(root);
    while(queue.isNotEmpty){
      TreeNode popped = queue.removeFirst();
      if(popped.left!=null) {
        popped.left!.val = popped.val + popped.left!.val;
        queue.add(popped.left!);
      };
      if(popped.right!=null) {
        popped.right!.val = popped.val + popped.right!.val;
        queue.add(popped.right!);
      }

      print(popped.val);
      if(popped.left==null && popped.right==null){
        if(popped.val==targetSum){
          return true;
        }
      }

    }
    
    return false;
  }


  String smallestFromLeaf(TreeNode? root) {
    String smallest = "";
    Queue<TreeNode> queue = Queue();
    if(root!=null) queue.add(root);
    while(queue.isNotEmpty){
      TreeNode popped = queue.removeFirst();
      if(popped.left!=null) {
        popped.left!.val = popped.val + popped.left!.val;
        queue.add(popped.left!);
      };
      if(popped.right!=null) {
        popped.right!.val = popped.val + popped.right!.val;
        queue.add(popped.right!);
      }

      // print(popped.val);
      // if(popped.left==null && popped.right==null){
      //   if(popped.val==targetSum){
      //     return true;
      //   }
      // }

    }
    
    return smallest;
  }

  //LeetCode: UNSOLVED 124. Binary Tree Maximum Path Sum (hard)
  int maxPathSum(TreeNode? root) {
    int max = 0;

    Queue<TreeNode> queue = Queue();
    if(root?.left==null && root?.right==null){
        return root!.val;
    }else{
        queue.add(root!);
    } 
    while(queue.isNotEmpty){
      queue.forEach((element) {
        print(element.val);
      });
      TreeNode popped = queue.removeFirst();
      
      int pathSum = popped.val + (popped.left?.val??0) + (popped.right?.val??0);
      pathSum = popped.val>pathSum? popped.val : pathSum;
      pathSum = (popped.val + (popped.left?.val??0)) > pathSum ? popped.val + (popped.left?.val??0) : pathSum;
      pathSum = (popped.val + (popped.right?.val??0)) > pathSum ? popped.val + (popped.right?.val??0) : pathSum;
        if(pathSum>max){
          max = pathSum;
        }

      if(popped.left!=null) {
        queue.add(popped.left!);
      }

      if(popped.right!=null) {
        queue.add(popped.right!);
      }

    }

    return max;
  }

  //LeetCode: 623. Add One Row to Tree
  TreeNode? addOneRow(TreeNode? root, int val, int depth) {
    if(depth==1){
      //means add new node and pult root to it's left
      TreeNode newRoot = TreeNode(val);
      newRoot.left = root;
      return newRoot;
    }

    int level = 0;
    Queue<TreeNode> queue = Queue();
    if(root!=null){
      queue.add(root);
      level++;
    }
    while(queue.isNotEmpty){
      if(level>(depth-1)) break;
      //now loop back to all nodes into queue and increase level
      int totalIntoQueues = queue.length;

      while(totalIntoQueues>0){
        TreeNode current = queue.removeFirst();
        if(level==(depth-1)){
          //add mew node & assign left & right to the new node
          TreeNode newLeft = TreeNode(val);
          newLeft.left = current.left;
          current.left = newLeft;

          //adding right
          TreeNode newRight = TreeNode(val);
          newRight.right = current.right;
          current.right = newRight;
        }else{
          //push child to the queue
          if(current.left!=null) queue.add(current.left!);
          if(current.right!=null) queue.add(current.right!);
        }

        totalIntoQueues--;
      }
      level++;
    }

    return root;
  }
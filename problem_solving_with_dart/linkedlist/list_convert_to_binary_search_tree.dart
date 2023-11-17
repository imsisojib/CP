import 'treenode.dart';

void main(List<String> args) {
  var root = sortedArrayToBST([-10,-3,0,5,9]);
  printNode(root, "root");
}

void printNode(TreeNode? node, String position){
  if(node==null) {
    print("$position is null.");
    return;
  }
  print("$position, value: ${node.val}");
  printNode(node.left, "left node of ${node.val}");
  printNode(node.right, "right node of ${node.val}");
}

TreeNode? sortedArrayToBST(List<int> nums) {
   if(nums.isEmpty) return null;
   //determine mid of the list to use as root->value
   int mid = nums.length ~/ 2;

   TreeNode rootNode = TreeNode();
   rootNode.val = nums[mid];
   rootNode.left = sortedArrayToBST(nums.sublist(0,mid));
   rootNode.right = sortedArrayToBST(nums.sublist(mid + 1));
   return rootNode;
}
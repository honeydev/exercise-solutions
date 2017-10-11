/*
Remove all elements from a linked list of integers that have value val.

Example
Given: 1 --> 2 --> 6 --> 3 --> 4 --> 5 --> 6, val = 6
Return: 1 --> 2 --> 3 --> 4 --> 5

Credits:
Special thanks to @mithmatt for adding this problem and creating all test cases.
*/

var list = {
  val: 1,
  next: {
    val: 2,
    next: {
      val: 2,
      next: {
        val: 1,
        next: null
      }
    }
  }
};

var removeElements = function(head, val) {
  
  var node = head;
  
  while (node != null) {
    
    if (node.next !== null && node.next.val == val) {
      node.next = node.next.next;
      continue;
    }
    
    if (node.val == val) {
      head = node.next;
    }
    node = node.next;
  }
  return head;
};

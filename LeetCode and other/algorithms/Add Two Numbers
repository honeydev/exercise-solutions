/**
 * @link https://leetcode.com/problems/add-two-numbers/description/
 *
 * You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
 *
 * You may assume the two numbers do not contain any leading zero, except the number 0 itself.
 *
 * Example
 * 
 * Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
 * Output: 7 -> 0 -> 8
 * Explanation: 342 + 465 = 807.
 */
let list1 = {
  val: 2,
  next: {
    val: 4,
    next: {
      val: 3,
      next: null
    }
  }
};

let list2 = {
  val: 5,
  next: {
    val: 6,
    next: null
  }
};

var addTwoNumbers = function(l1, l2) {
  let summ = [];
  let nextElementInc = 0;
  let firstArg = 0;
  let secondArg = 0;
  while (l1 != null || l2 != null) {
    if (l1 === null) {
      firstArg = 0;
    } else {
      firstArg = l1.val;
      l1 = l1.next;
    }
    if (l2 === null) {
      secondArg = 0;
    } else {
      secondArg = l2.val;
      l2 = l2.next;
    }
    let num = firstArg + secondArg;
    num += nextElementInc;
    if (num >= 10) {
      summ.push(num - 10);
      nextElementInc = 1;
    } else {
      summ.push(num);
      nextElementInc = 0;
    }
  }
  if (nextElementInc != 0) {
    summ.push(nextElementInc);
  }
  return summ;
};


console.log(addTwoNumbers(list1, list2)) // 704

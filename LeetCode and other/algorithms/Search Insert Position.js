https://leetcode.com/problems/search-insert-position/#/description

Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You may assume no duplicates in the array.

Here are few examples.
[1,3,5,6], 5 → 2
[1,3,5,6], 2 → 1
[1,3,5,6], 7 → 4
[1,3,5,6], 0 → 0

/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number}
 */
var searchInsert = function(nums, target) {
  /*
    Идем по массиву с условием, если текущий элемент массива равен искомому значению, возвращаем его индекс,
    если элемент больше искомого значения также возвращаем его индекс.
    Если ничего не найдено возвращаем длину массива + 1;
  */
  for (var j = 0; j < nums.length; j++) {
    if (nums[j] >= target) {
      return j;
    }
  }
  return nums.length++;
};

console.log(searchInsert([1, 3], 2));
console.log(searchInsert([1, 2, 3, 4, 5], 7));

https://leetcode.com/problems/powx-n/#/description

Implement pow(x, n).

function pow(x, n) {
  if (x === 0) {
    return 0;
  }
  if (n === 0) {
    return 1;
  }
  if (n < 0) {
    return 1 / powImprove(x, -n);
  }
  return powImprove(x, n);
}

function powImprove(x, n) {
  /*
    Ќаходим степень четного числа быстрее
  */
  if (n <= 1) {
    return x;
  }
  if (n % 2 != 0) {
    return x * powImprove(x, n-1)
  }
  return powImprove(x * x, n / 2);
}

console.log(powImprove(2, 50));
console.log(pow(2, -10));
console.log(pow(2, 0));
console.log(pow(2, -1));

1125899906842624
0.0009765625
1
0.5